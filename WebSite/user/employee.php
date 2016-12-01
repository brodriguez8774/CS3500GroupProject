<?php
  include_once "../templates/head.php";
  include_once "../database/databaseAll.inc.php";
  include_once "../templates/login.inc.php";

  // Database connection.
  $foodList = $pdo->query($sqlSelectBake);

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
      <h2>Employee View</h2>
      <?php
        // Check if user is logged in. Otherwise, should not be able to view page.
        if(login_check($pdo)) {

          $user_id = $_SESSION['user_id'];
          $sqlEmpCheck = "SELECT *
                          FROM user, employee
                          WHERE user.user_id = employee.user_id AND
                          user.user_id = '" . $user_id . "';";

          $empList = $pdo->query($sqlEmpCheck);

          // Make sure user is an employee. Otherwise, should not be able to view page.
          if ($empRow = $empList->fetch()) {

            $sqlCustomer = "SELECT *
            FROM user, customer, address
            WHERE user.user_id = customer.user_id AND
            address.addr_id = customer.addr_id;";

            $custList = $pdo->query($sqlCustomer);
            ?>
              <table>
                <thead>
                  <tr>
                    <th>User ID</th>
                    <th>Login ID</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Phone Number</th>
                    <th>Email</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                    while ($custRow = $custList->fetch()) {
                      echo "<tr>";
                        echo "<td>" . $custRow['user_id'] . "</td>";
                        echo "<td>" . $custRow['login_id'] . "</td>";
                        echo "<td>" . $custRow['first_name'] . " " . $custRow['last_name'] . "</td>";
                        echo "<td>" . $custRow['street'] . "<br>" . $custRow['city'] . ", " . $custRow['state'] . ", " . $custRow['zip'] . "</td>";
                        echo "<td>" . $custRow['phone'] . "</td>";
                        echo "<td>" . $custRow['email'] . "</td>";
                      echo "</tr>";
                    }
                  ?>
                </tbody>
              </table>
            <?php
          } else {
            header('Location: ../error.php?error=Not Authorized to view page.');
          }

        } else {
          header('Location: ../error.php?error=Not Authorized to view page.');
        }
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
