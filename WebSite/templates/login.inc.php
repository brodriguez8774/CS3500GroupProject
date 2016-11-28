<h2>Please Login</h2>

<?php
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
  }
?>

<form class="login-form" action=<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?> method="post">
  <div>
    <label for="login-ID">UserID: </label>
    <input type="text" id="login-ID" name="login_ID">
  </div>
  <div>
    <label for="login-pass">Password: </label>
    <input type="text" id="login-pass" name="login_pass">
  </div>
  <input type="submit" type="submit">
</form>
