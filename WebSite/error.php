<?php
  include_once "templates/head.php";
  include_once "templates/login.inc.php";

  $error = filter_input(INPUT_GET, 'err', $filter = FILTER_SANATIZE_STRING);
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
<script type="text/javascript" src="/static/javascript/DisplayLoginForm.js"></script>
</html>
