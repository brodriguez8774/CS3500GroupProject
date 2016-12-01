<header>
  <?php
    if(login_check($pdo)) {
      $user_id = $_SESSION['user_id'];
      $sqlEmpCheck = "SELECT *
                      FROM user, employee
                      WHERE user.user_id = employee.user_id AND
                      user.user_id = '" . $user_id . "';";

      $empList = $pdo->query($sqlEmpCheck);

      // Make sure user is an employee. Otherwise, should not be able to view page.
      if ($empRow = $empList->fetch()) {
          echo "<div class='placeholder'><a href=" . $baseUrl . "user/employee.php>Users</a></div>";
      } else {
          echo "<div class='placeholder'></div>";
      }
  ?>
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
