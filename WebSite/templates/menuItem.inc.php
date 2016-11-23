
<table>
  <div class="menu">
    <?php
      while ($foodRow = $foodList->fetch()) {
        echo "<div class='menu-item'>";
          echo "<div class='menu-item-header'>";
            echo "<p>" . $foodRow['name'] . "</p>";
            echo "<p> $ " . $foodRow['price'] . "</p>";
          echo "</div>";
          echo "<div class='menu-item-body'>";
            echo "<div>";
              echo "<img src='.." . $foodRow['img_dir'] . "' alt='" . $foodRow['name'] . "'>";
            echo "</div>";
            echo "<p>" . $foodRow['description'] . "</p>";
          echo "</div>";
        echo "</div>";
      }
    ?>
  </div>
</table>
