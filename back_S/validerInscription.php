<?php
session_start();
require_once("../functions/fonctSession.php"); 
require_once("../functions/fonctConnexion.php");

if(!empty($_POST) && !empty($_FILES)) {
    $valid_extensions = array('jpeg', 'jpg', 'png', 'gif');
    $path = '../assets/photos/';

    // Profile Photo
    $photo = $_FILES['photo']['name'];
    $tmp_photo = $_FILES['photo']['tmp_name'];
    $ext_photo = strtolower(pathinfo($photo, PATHINFO_EXTENSION));

    // Cover Photo
    $coverphoto = $_FILES['coverphoto']['name'];
    $tmp_coverphoto = $_FILES['coverphoto']['tmp_name'];
    $ext_coverphoto = strtolower(pathinfo($coverphoto, PATHINFO_EXTENSION));

    if(in_array($ext_photo, $valid_extensions) && in_array($ext_coverphoto, $valid_extensions)) {
        $nomphoto = '_'.time().'_'.$photo;
        $path_photo = $path.'_'.time().'_'.$photo;
        $path_coverphoto = $path.'_'.time().'_'.$coverphoto;

        if(move_uploaded_file($tmp_photo, $path_photo) && move_uploaded_file($tmp_coverphoto, $path_coverphoto)) {
            $nom = $_POST['nom'];
            $prenom = $_POST['prenom'];
            $email = $_POST['email'];
            $mp = $_POST['mdp'];
            $job = $_POST['job'];

            $connexionDB = connexionDB();
            $sqlQuery = "INSERT INTO `users` (`id_user`, `nom`, `prenom`, `email`, `mdp`, `job`, `photo`, `coverphoto`)
                        VALUES (NULL, '$nom', '$prenom', '$email', '$mp', '$job', '$nomphoto', '$path_coverphoto');";

            $users = $connexionDB->prepare($sqlQuery);
            $users->execute();
            $latest_id = $connexionDB->lastInsertId();

            addSession($latest_id, $nom, $prenom, $email, $nomphoto, $path_coverphoto);
            echo "true";
        } else {
            echo 'Invalid';
        }
    } else {
        echo 'Invalid extension';
    }
}
?>
