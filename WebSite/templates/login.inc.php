
<?php
  // Initiate session/login handling.
  include_once "session.inc.php";

  secure_session_start();

  if (isset($_POST['login_ID'], $_POST['login_pass'])) {

    $loginID = $_POST['login_ID'];
    $loginPass = $_POST['login_pass'];

    if (login($pdo, $loginID, $loginPass)) {
      // Login success.
      //header('Location: ../protected_page.php');
    } else {
      // Login failed.
      header('Location: ../error.php?error="Login Failed"');
    }
  }


  if (login_check($pdo) == true) {
    $loggedIn = TRUE;
    //echo "<br>DEBUG loggedIn: " . (int)$loggedIn;
  } else {
    $loggedIn = FALSE;
    //echo "<br>DEBUG loggedIn: " . (int)$loggedIn;
  }



  // Form validation section.
  $loginID = "";
  $loginIDErr = "";
  $loginPass = "";
  $loginPassErr = "";

  // Cleans user input of extra spaces, slashes, and potentially malicious input.
  function CleanInput($input) {
      $input = trim($input);
      $input = stripslashes($input);
      $input = htmlspecialchars($input);
      return $input;
  }

  if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $valid = true;

    // Validate ID.
    if (empty($_POST["login_ID"])) {
      $loginIDErr = "Login ID is required.";
      $valid = false;
    } else {
      $loginID = CleanInput($_POST["login_ID"]);
    }

    // Validate password.
    if (empty($_POST["login_pass"])) {
      $loginPassErr = "Password is required.";
      $valid = false;
    } else {
      $loginPass = CleanInput($_POST["login_pass"]);
    }

    if ($valid) {

    }

    if (isset($_GET['error'])) {
      echo "<p class='error'>Error Logging In.</p>";
    }
  }
?>
