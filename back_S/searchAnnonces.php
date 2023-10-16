<?php
session_start();
require_once("../functions/fonctSession.php");
require_once("../functions/fonctConnexion.php");

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Check if the form data exists and is not empty
    if (isset($_POST["annonceNom"]) && !empty($_POST["annonceNom"])) {
        // Sanitize the search keyword to prevent SQL injection
        $searchKeyword = htmlspecialchars($_POST["annonceNom"], ENT_QUOTES, 'UTF-8');

        // Sanitize and validate the selected category (optional, depends on your use case)
        $selectedCategory = isset($_POST["select"]) ? intval($_POST["select"]) : null;

        // Your SQL query to search for annonces
        // Make sure to adjust the table name and column names based on your database structure
        $sqlQuery = "SELECT * FROM annonce WHERE title LIKE :keyword";
        $params = array(':keyword' => "%$searchKeyword%");

        // If a category is selected, include it in the query
        if ($selectedCategory !== null) {
            $sqlQuery .= " AND id_category = :category";
            $params[':category'] = $selectedCategory;
        }
    } else {
        // If the search keyword is empty, fetch all annonces without filtering
        $sqlQuery = "SELECT * FROM annonce";
        $params = array();
    }

    // Execute the SQL query
    try {
        $connexionDB = connexionDB();
        $stmt = $connexionDB->prepare($sqlQuery);
        $stmt->execute($params);
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

        // Check if there are any results
        if (count($results) > 0) {
            // Encode the data as JSON
            $jsonData = json_encode($results);
            
            echo $jsonData;
        } else {
            // Return "invalid" if no results were found
            echo "invalid";
        }
    } catch (PDOException $e) {
        // Return "invalid" if an error occurred
        echo "invalid";
    }
} else {
    // Return "invalid" for any other request method
    echo "invalid";
}
?>