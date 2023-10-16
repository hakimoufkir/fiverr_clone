<?php
$connexionDB = connexionDB();
$sqlQuery = "SELECT id_category, nom, COUNT(*) AS category_count
FROM Category
GROUP BY id_category, nom;";
$categories = $connexionDB->prepare($sqlQuery);
$categories->execute();
$categories = $categories->fetchAll();
?>