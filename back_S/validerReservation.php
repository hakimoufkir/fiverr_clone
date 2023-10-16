<?php
session_start();
require_once("../functions/fonctSession.php");
require_once("../functions/fonctConnexion.php");
print_r($_POST);

if (!empty($_POST)) {
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $artistname = $_POST['artistname'];
    $email = $_POST['email'];
    $telephone = $_POST['telephone'];
    $description = $_POST['description'];
    $connexionDB = connexionDB();
    $sqlQuery = "INSERT INTO `reservations` (`id`, `firstname`, `lastname`, `artistname`, `email`, `telephone`, `description`) 
                 VALUES (NULL, :firstname, :lastname, :artistname, :email, :telephone, :description)";
    
    $users = $connexionDB->prepare($sqlQuery);
    $users->bindParam(':firstname', $firstname);
    $users->bindParam(':lastname', $lastname);
    $users->bindParam(':artistname', $artistname);
    $users->bindParam(':email', $email);
    $users->bindParam(':telephone', $telephone);
    $users->bindParam(':description', $description);

    if ($users->execute()) {
        echo 'true';
    } else {
        echo 'invalid';
    }
} else {
    echo 'invalid data';
}
?>


<!-- Array
(
    [firstname] => test
    [lastname] => test
    [artistname] => dwqdqdwqdqwd
    [email] => admin@admin
    [telephone] => dqwdwqdq
    [description] => qdqdqdq
)
<br />
<b>Fatal error</b>:  Uncaught PDOException: SQLSTATE[42S22]: Column not found: 1054 Unknown column 'test' in 'field list' in C:\xampp\htdocs\mopoc\back_S\validerReservation.php:18
Stack trace:
#0 C:\xampp\htdocs\mopoc\back_S\validerReservation.php(18): PDOStatement-&gt;execute()
#1 {main}
  thrown in <b>C:\xampp\htdocs\mopoc\back_S\validerReservation.php</b> on line <b>18</b><br /> -->