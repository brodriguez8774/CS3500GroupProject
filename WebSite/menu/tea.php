<?php
  include_once "../templates/head.php";
  include_once "../database/databaseAll.inc.php";
  include_once "../templates/login.inc.php";

  // Database connection.
  include_once "../database/databaseAll.inc.php";
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
      <?php
        include_once "../templates/loginForm.inc.php";
      ?>
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
  include_once "../templates/javascript.inc.php";
?>
<script type="text/javascript" src="../static/javascript/DisplayLoginForm.js"></script>
</html>
