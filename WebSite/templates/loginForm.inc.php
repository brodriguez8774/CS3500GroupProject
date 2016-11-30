
<h2>Please Login</h2>

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
