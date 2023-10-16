<?php
if (isset($_GET['logout'])) {
	delSession();
}

if ((isset($_POST['emailConnexion'])) && (isset($_POST['passwordConnexion']))) {
	$connexionDB = connexionDB();

	$emailConnexion = $_POST['emailConnexion'];
	$passwordConnexion = $_POST['passwordConnexion'];


	$sqlQuery = "SELECT * FROM `users` WHERE `email`='$emailConnexion' AND `mdp`='$passwordConnexion'";

	$users = $connexionDB->prepare($sqlQuery);
	$users->execute();

	$user = $users->fetchAll();

	if (empty($user)) {
		$erreurConnexion = true;
	} else {
		addSession($user[0]['id_user'], $user[0]['nom'], $user[0]['prenom'], $user[0]['email'], $user[0]['photo'], $user[0]['coverphoto']);
	}
}




?>