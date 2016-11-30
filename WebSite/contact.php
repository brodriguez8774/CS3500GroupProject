<?php
  include_once "templates/head.php";

  // Database connection.
  include_once "database/databaseAll.inc.php";
  $storeList = $pdo->query($sqlSelectStore);
?>

<body>
  <?php
    include_once "templates/header.php";
    include_once "templates/nav.php";
  ?>
  <main>
    <div class="placeholder"></div>
    <div id="content">
      <h2>Locations</h2>
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
    include_once "templates/footer.php";
  ?>
</body>
<?php
  include_once "database/databaseClose.inc.php";
?>
</html>
