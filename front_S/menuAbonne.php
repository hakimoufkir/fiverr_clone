<?php
require_once("functions/fonctSession.php"); // add/remove/verif session
require_once("functions/fonctConnexion.php"); // dbconnection
require_once("back_S/gereSession.php");
$connexionDB = connexionDB(); // Establish the database connection
if (verfiSession()) {
  echo "<br>";
  ?>
  <div class="dropdown">
    <button class="btn text-white dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
      aria-haspopup="true" aria-expanded="false" style="
    margin-bottom: 16px;
">
      Account
    </button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
      <a class="dropdown-item" href="?profil">
        Profile
      </a>
      </a>
    </div>
  </div>
  <?php

} else {
  echo "notgood";
  echo "<br>";
}
?>