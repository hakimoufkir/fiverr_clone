<?php
function connexionDB()
{
	try
	{
		// On se connecte à MySQL
		$connexion = new PDO('mysql:host=localhost;dbname=simo;charset=utf8', 'root', '');
		return $connexion;
	}
	catch(Exception $e)
	{
		// En cas d'erreur, on affiche un message et on arrête tout
	        die('Erreur : '.$e->getMessage());
	}


}


?>