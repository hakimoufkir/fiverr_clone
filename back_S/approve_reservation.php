<?php
require_once("../functions/fonctSession.php"); // add/remove/verif session
require_once("../functions/fonctConnexion.php"); // dbconnection
require_once("./gereSession.php");

$connexionDB = connexionDB(); // Establish the database connection

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    echo $id;
    echo "<br>";

        $connexionDB = connexionDB(); // Establish the database connection
        // Perform the update query
        $sqlQuery = "UPDATE `user` SET `isApproved` = '1' WHERE `id` = '$id'";
        $users = $connexionDB->prepare($sqlQuery);
		$users->execute();
    } else {
        // Invalid user ID, handle the error
        echo "Invalid user ID.";

    }
?>