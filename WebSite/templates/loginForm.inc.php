
<div class="login-form-wrapper" name="login-form-wrapper">
  <div class="login-background" name="login-background">
    <h2>Please Login</h2>

    <form class="login-form" action=<?php echo esc_url($_SERVER['PHP_SELF']); ?> method="post">
      <div>
        <label for="login-ID">UserID: </label>
        <input type="text" id="login-ID" name="login_ID">
      </div>
      <div>
        <label for="login-pass">Password: </label>
        <input type="password" id="login-pass" name="login_pass">
      </div>
      <input type="submit" type="submit">
    </form>
  </div>
</div>
