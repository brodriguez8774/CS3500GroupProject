<?php
  include "templates/head.php";

  // Database connection.
  include "database/databaseLogin.inc.php";
  include "database/databaseConnect.inc.php";
  include "database/databaseSelect.inc.php";
  global $pdo;
  $pdo = ConnectViaPDO($host, $DBuser, $DBpassword, $database, $DBport);
  $storeList = $pdo->query($sqlSelectStore);
?>

<body>
  <?php
    include "templates/header.php";
    include "templates/nav.php";
  ?>
  <main>
    <div class="placeholder"></div>
    <div id="content">
      <h2 class="contact-title">Locations</h2>
      <?php
        while ($storeRow = $storeList->fetch()) {
          echo "<div class='location'>";
            if ($storeRow['name'] === '') {
              echo "<h3 class='location-header'>A Coffee Shop</h3>";
            } else {
              echo "<h3 class='location-header'>" . $storeRow['name'] . "</h3>";
            }
            echo "<div>";
              echo "<p>Hours: </p>";
              echo "<p>" . $storeRow['hours'] . "</p>";
            echo "</div>";
            echo "<div>";
              echo "<p>Address: </p>";
              echo "<p>" . $storeRow['street'] . ", " . $storeRow['city'] . ", " . $storeRow['state'] . " " . $storeRow['zip'] . "</p>";
            echo "</div>";
            echo "<div>";
              echo "<p>Phone Number: </p>";
              echo "<p>" . $storeRow['phone'] . "</p>";
            echo "</div>";
            echo "<div>";
              echo "<p>Email: </p>";
              echo "<p>" . $storeRow['email'] . "</p>";
            echo "</div>";
          echo "</div>";
        }
      ?>
    </div>
    <div class="placeholder"></div>
  </main>
  <?php
    include "templates/footer.php";
  ?>
</body>
<?php
  include "database/databaseClose.inc.php";
?>
</html>
