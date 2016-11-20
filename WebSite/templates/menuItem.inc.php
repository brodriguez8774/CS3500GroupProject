
<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
    <th>Price</th>
  </tr>
  <?php
    while ($foodRow = $foodList->fetch()) {
      echo "<tr>";
        echo "<td>" . $foodRow['name'] . "</td>";
        echo "<td>" . $foodRow['description'] . "</td>";
        echo "<td>" . $foodRow['price'] . "</td>";
      echo "</tr>";
    }
  ?>
</table>
