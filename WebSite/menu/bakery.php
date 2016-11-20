<?php
  include "../templates/head.php";

  // Database connection.
  include "../database/databaseLogin.inc.php";
  include "../database/databaseConnect.inc.php";
  include "../database/databaseSelect.inc.php";
  global $pdo;
  $pdo = ConnectViaPDO($host, $DBuser, $DBpassword, $database, $DBport);
  $foodList = $pdo->query($sqlSelectBake);

?>

<body>
  <?php
    include "../templates/header.php";
    include "../templates/nav.php";
  ?>
  <main>
    <div class="placeholder"></div>
    <div id="content">
      <?php
        include "../templates/menuItem.inc.php";
      ?>
    </div>
    <div class="placeholder"></div>
  </main>
  <?php
    include "../templates/footer.php";
  ?>
</body>
</html>
