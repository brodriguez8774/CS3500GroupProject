
<?php

  function secure_session_start() {

    // Referencing http://m.wikihow.com/Create-a-Secure-Login-Script-in-PHP-and-MySQL

    // Various variables. Honestly not 100% sure what's going on here. Unfortunately don't have enough time to figure it out.
    // Just trying to get something that works at this point, even if I may not understand why.

    $session_name = "secureSessionID";
    session_name($session_name);
    $secure = false;
    $httponly = true;

    // Force session to only use cookies.
    if (ini_set('session.use_only_cookies', 1) === FALSE) {
      header("Location: <?php echo $baseUrl ?>templates/error.php?err='Could not initiate a safe session (ini_set)'");
      exit();
    }

    // Get current cookie values.
    $cookieParams = session_get_cookie_params();
    session_set_cookie_params(
        $cookieParams["lifetime"],
        $cookieParams["path"],
        $cookieParams["domain"],
        $secure,
        $httponly
    );

    // Regenerate session and delete old one.
    session_start();
    session_regenerate_id(true);
  }


  function login($pdo, $loginID, $loginPass) {
    $sqlLogin = "SELECT user_id, login_id, password
                  FROM user
                  WHERE login_id = '" . $loginID . "';";

    $loginList = $pdo->query($sqlLogin);

    // Check if result is returned.
    if ($loginRow = $loginList->fetch()) {

      //echo ("<br>DEBUG Checking for password match <br> pass: " . $loginPass . "<br> check: " . $loginRow['password']);
      //$aPass = hash('sha512', $loginRow['password']);
      //echo ("<br>DEBUG Checking for password match <br> pass: " . $loginPass . "<br> check: " . $loginRow['password']);
      // Check if password matches.
      //if (password_verify($loginPass, $loginRow['password'])) {
      if ($loginPass == $loginRow['password']) {
          // Password correct.
          $user_browser = $_SERVER['HTTP_USER_AGENT'];
          $user_id = preg_replace("/[^0-9]+/", "", $loginRow['user_id']);
          $_SESSION['user_id'] = $user_id;

          $username = preg_replace("/[^a-zA-Z0-9_\-]+/", "", $loginRow['login_id']);
          $_SESSION['username'] = $username;
          $_SESSION['login_string'] = hash('sha512', $loginRow['password'] . $user_browser);

          return true;
      } else {
        // Password not correct.
        return false;
      }
    } else {
      // No user found.
      return false;
    }
  }


  function login_check($pdo) {
    // If anything fails, return false.

    // First check for all variable sessions being set.
    if (isset($_SESSION['user_id'], $_SESSION['username'], $_SESSION['login_string'])) {
      $user_id = $_SESSION['user_id'];
      $username = $_SESSION['username'];
      $login_string = $_SESSION['login_string'];

      // Get string of browser.
      $user_browser = $_SERVER['HTTP_USER_AGENT'];

      $sqlLogin = "SELECT user_id, login_id, password
                  FROM user
                  WHERE user_id = " . $user_id . ";";

      $loginList = $pdo->query($sqlLogin);

      // Check if result is returned.
      while ($loginRow = $loginList->fetch()) {
        $login_check = hash('sha512', $loginRow['password'] . $user_browser);

        // If match, then credentials are valid. User is logged in.
        if (hash_equals($login_check, $login_string)) {
          return true;
        } else {
          return false;
        }
      }
    } else {
      return false;
    }

  }


  // Coppied as is. Security stuff. Look into later.
  function esc_url($url) {

    if ('' == $url) {
        return $url;
    }

    $url = preg_replace('|[^a-z0-9-~+_.?#=!&;,/:%@$\|*\'()\\x80-\\xff]|i', '', $url);

    $strip = array('%0d', '%0a', '%0D', '%0A');
    $url = (string) $url;

    $count = 1;
    while ($count) {
        $url = str_replace($strip, '', $url, $count);
    }

    $url = str_replace(';//', '://', $url);

    $url = htmlentities($url);

    $url = str_replace('&amp;', '&#038;', $url);
    $url = str_replace("'", '&#039;', $url);

    if ($url[0] !== '/') {
        // We're only interested in relative links from $_SERVER['PHP_SELF']
        return '';
    } else {
        return $url;
    }
  }

?>
