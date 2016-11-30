<?php
  include_once "templates/head.php";
  include_once "database/databaseAll.inc.php";
  include_once "templates/login.inc.php";
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
    </div>
    <div class="placeholder"></div>
  </main>
  <?php
    include_once "templates/footer.php";
  ?>
</body>
<script type="text/javascript" src="/static/javascript/DisplayLoginForm.js"></script>
</html>
