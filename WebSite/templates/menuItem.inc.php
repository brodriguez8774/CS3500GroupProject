
<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
    <th>Price</th>
  </tr>
  <?php
    while ($foodRow = $foodList->fetch()) {
      echo "<div class='menuItem'>";
        echo "<div class='menuItemHeader'>";
          echo "<p>" . $foodRow['name'] . "</p>";
          echo "<p>" . $foodRow['price'] . "</p>";
        echo "</div>";
        echo "<div class='menuItemBody'>";
          echo "<img src='.." . $foodRow['img_dir'] . "' alt='" . $foodRow['name'] . "'>";
          echo "<p>" . $foodRow['description'] . "</p>";
        echo "</div>";
      echo "</div>";
    }
  ?>
</table>
