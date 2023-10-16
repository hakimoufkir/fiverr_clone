<?php
require_once("functions/fonctSession.php"); // add/remove/verif session
require_once("functions/fonctConnexion.php"); // dbconnection
require_once("back_S/gereSession.php");

$connexionDB = connexionDB(); // Establish the database connection

$sqlQuery = "SELECT `id`, `firstname`, `lastname`, `artistname`, `email`, `telephone`, `description` FROM `reservations`";

$reservations = $connexionDB->prepare($sqlQuery);
$reservations->execute();

$reservationsData = $reservations->fetchAll(); // Fetch data from the database and store it in $userData
if(verfiSession()){

?>

<center>
    <h2>
        Reservation List
    </h2>
</center>
<table class="table">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">First Name</th>
            <th scope="col">Last Name</th>
            <th scope="col">Artist Name</th>
            <th scope="col">Email</th>
            <th scope="col">Telephone</th>
            <th scope="col">Description</th>
            <th scope="col">Action</th> <!-- New Action column -->
        </tr>
    </thead>
    <tbody>
        <?php foreach ($reservationsData as $reservation): ?>
            <tr>
                <th scope="row"><?php echo $reservation['id']; ?></th>
                <td><?php echo $reservation['firstname']; ?></td>
                <td><?php echo $reservation['lastname']; ?></td>
                <td><?php echo $reservation['artistname']; ?></td>
                <td><?php echo $reservation['email']; ?></td>
                <td><?php echo $reservation['telephone']; ?></td>
                <td><?php echo $reservation['description']; ?></td>
                <td>
                    <a href="delete_reservation.php?id=<?php echo $reservation['id']; ?>" class="btn btn-danger">Delete</a>
                    <a href="back_S/approve_reservation.php?id=<?php echo $reservation['id']; ?>" class="btn btn-info">Approve</a>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
<?php

}
else{
    echo "<center><h1>YOU DON'T HAVE PERMESSION HERE FK YOU GO OUT</h1></center>";
    echo "<br>";
    
    }
    // echo '<pre>';
    // var_dump($_SESSION);
    // echo '</pre>';

    // problem dyal isApproved howa anaka katjib data mn 3nd reservation o reservation normalement ghalat hitach khsk tjobha mn 3nd user o user id tkun f reservation.
?>

