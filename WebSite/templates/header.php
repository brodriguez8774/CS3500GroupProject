<header>
  <?php
    if(login_check($pdo)) {
  ?>
    <div class="placeholder"></div>
    <h1><a href="<?php echo $baseUrl; ?>index.php">Coffee Shop</a></h1>
    <div class="login">
      <a class="logout-link" href="<?php echo $baseUrl; ?>templates/logout.inc.php">Logout</a>
    </div>
  <?php
    } else {
  ?>
    <div class="placeholder"></div>
    <h1><a href="<?php echo $baseUrl; ?>index.php">Coffee Shop</a></h1>
    <div class="login">
      <p class="login-link" name="login-link">Login</p>
    </div>
  <?php
    }
  ?>
</header>
