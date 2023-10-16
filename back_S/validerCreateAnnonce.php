<?php
session_start();
require_once("../functions/fonctSession.php"); 
require_once("../functions/fonctConnexion.php");

if(!empty($_POST) && !empty($_FILES)) {
    $valid_extensions = array('jpeg', 'jpg', 'png', 'gif');
    $path = '../assets/photos/';

    // Title
    $title = $_POST['title'];

    // Description
    $description = $_POST['description'];

    // Category
    $category_name = $_POST['category_name'];

    // User ID from the session
    $id_user = $_SESSION['info']['id'];

    // Cover Photo
    $photo_cover = $_FILES['photo_cover']['name'];
    $tmp_photo_cover = $_FILES['photo_cover']['tmp_name'];
    $ext_photo_cover = strtolower(pathinfo($photo_cover, PATHINFO_EXTENSION));

    if(in_array($ext_photo_cover, $valid_extensions)) {
        $nomphoto_cover = '_'.time().'_'.$photo_cover;
        $path_photo_cover = $path.'_'.time().'_'.$photo_cover;

        if(move_uploaded_file($tmp_photo_cover, $path_photo_cover)) {

            $connexionDB = connexionDB();
            $sqlQuery = "INSERT INTO `annonce` (`id_annonce`, `title`, `photo_cover`, `description`, `id_category`, `id_user`)
                        VALUES (NULL, '$title', '$nomphoto_cover', '$description', '$category_name', '$id_user')";

            $result = $connexionDB->query($sqlQuery);

            if ($result) {
                // Success
                echo "true";
            } else {
                // Error inserting data
                echo "Error inserting data";
            }
        } else {
            // Failed to move uploaded file
            echo 'Invalid';
        }
    } else {
        // Invalid extension
        echo 'Invalid extension';
    }
}
?>
