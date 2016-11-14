
<?php

	function ConnectViaPDO($host, $user, $password, $database, $DBport) {

		try {
			# Create Connection.
			$connectionString = "mysql:host=$host;port=$DBport;dbname=$database";
			$pdo = new PDO($connectionString, $user, $password);

			# Not sure what this does, but the w3schools example had it.
			$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			#echo "Connected Successfully!";

			return $pdo;
		}
		catch(PDOException $e) {
			echo "Connection Failed: " . $e->getMessage();
		}
	}

?>
