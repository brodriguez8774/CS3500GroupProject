
<?php
    # Close all possible database connections.
    # should be included at the bottom of every page which accesses databases.
    if ($sqlBake) {
        $sqlBake = null;
    }
    if ($sqlCoffee) {
        $sqlCoffee = null;
    }
    if ($sqlTea) {
        $sqlTea = null;
    }
    if ($sqlStore) {
        $sqlStore = null;
    }
    if ($sqlCustomer) {
        $sqlCustomer = null;
    }
    if ($sqlEmployee) {
        $sqlEmployee = null;
    }
?>

