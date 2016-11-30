<?php
  include_once "templates/head.php";
  include_once "database/databaseAll.inc.php";
  include_once "templates/login.inc.php";

  $error = filter_input(INPUT_GET, 'error', $filter = FILTER_SANITIZE_STRING);
?>

<body>
  <?php
    include_once "templates/header.php";
    include_once "templates/nav.php";
  ?>
  <main>
    <div class="placeholder"></div>
    <div id="content">
      <?php
        include_once "templates/loginForm.inc.php";
      ?>
      <h2>Error:</h2>
      <p class="error">
        <?php
          if (!$error) {
            echo "An unknown error occured.";
          } else {
            echo $error;
          }
        ?>
      </p>
    </div>
    <div class="placeholder"></div>
  </main>

  <?php
    include_once "templates/footer.php";
  ?>
</body>
<?php
  include_once "database/databaseClose.inc.php";
  include_once "templates/javascript.inc.php";
?>
</html>
