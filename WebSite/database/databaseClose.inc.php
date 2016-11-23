
<?php
    # Close all possible database connections.
    # should be included at the bottom of every page which accesses databases.
    if (isset($foodList)) {
        $foodList = null;
    }
?>

