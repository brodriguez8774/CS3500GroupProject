<?php
  include_once "../templates/head.php";

  // Database connection.
  include_once "../database/databaseLogin.inc.php";
  include_once "../database/databaseConnect.inc.php";
  include_once "../database/databaseSelect.inc.php";
  global $pdo;
  $pdo = ConnectViaPDO($host, $DBuser, $DBpassword, $database, $DBport);
  $foodList = $pdo->query($sqlSelectTea);

?>

<body>
  <?php
    include_once "../templates/header.php";
    include_once "../templates/nav.php";
  ?>
  <main>
    <div class="placeholder"></div>
    <div id="content">
      <h2>Tea Menu</h2>
      <?php
        include_once "../templates/menuItem.inc.php";
      ?>
    </div>
    <div class="placeholder"></div>
  </main>
  <?php
    include_once "../templates/footer.php";
  ?>
</body>
<?php
  include_once "../database/databaseClose.inc.php";
?>
</html>
