
<?php
    # Close all possible database connections.
    # should be included at the bottom of every page which accesses databases.
    if (isset($pdo)) {
        $pdo = null;
    }
    if (isset($foodList)) {
        $foodList = null;
    }
    if (isset($storeList)) {
        $storeList = null;
    }
    if (isset($loginList)) {
        $loginList = null;
    }
?>

