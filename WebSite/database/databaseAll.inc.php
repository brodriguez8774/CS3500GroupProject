
<?php
  include_once "databaseLogin.inc.php";
  include_once "databaseConnect.inc.php";
  include_once "databaseSelect.inc.php";
  global $pdo;
  $pdo = ConnectViaPDO($host, $DBuser, $DBpassword, $database, $DBport);
?>
