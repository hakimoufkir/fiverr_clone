<?php
session_start();
require_once("../functions/fonctSession.php"); 
require_once("../functions/fonctConnexion.php");

if (!empty($_POST)) {
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $email = $_POST['email'];
    $mp = $_POST['mdp'];
    $job = $_POST['job'];

    $connexionDB = connexionDB();
    $sqlQuery = "UPDATE `users` SET `nom` = :nom, `prenom` = :prenom, `email` = :email, `mdp` = :mp, `job` = :job
                 WHERE `id_user` = :user_id";

    $users = $connexionDB->prepare($sqlQuery);
    $users->bindParam(':nom', $nom);
    $users->bindParam(':prenom', $prenom);
    $users->bindParam(':email', $email);
    $users->bindParam(':mp', $mp);
    $users->bindParam(':job', $job);
    $users->bindParam(':user_id', $_SESSION['info']['id']);

    if ($users->execute()) {
        // Update the session data with the new profile information
        $_SESSION['info']['nom'] = $nom;
        $_SESSION['info']['prenom'] = $prenom;
        $_SESSION['info']['email'] = $email;
        echo "true";
    } else {
        echo "Error updating profile data";
    }
}
?>
