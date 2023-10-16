<section class="h-100 gradient-custom-2">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-lg-9 col-xl-7">
        <div class="card">
          <div class="rounded-top text-white d-flex flex-row" style="background-image: url('<?php echo str_replace('../', '', $_SESSION['info']['cover']); ?>');
            background-size: cover;
            background-position: center;
            /* background-color: #e9b729; */
            height: 200px;">

            <div class="ms-4 mt-5 d-flex flex-column" style="width: 150px;">
              <img src="assets/photos/<?php echo $_SESSION['info']['avatar']; ?>" width="60"
                alt="Generic placeholder image" class="img-fluid img-thumbnail mt-4 mb-2"
                style="width: 150px; z-index: 1">
              <a href="?edit">
                <button type="button" class="btn btn-outline-dark" data-mdb-ripple-color="dark" style="z-index: 1;">
                  Edit profile
                </button>
              </a>
            </div>
            <div class="ms-3" style="
    color: #e9b729;
    margin-top: 130px;
">
              <div>
                <?php echo $_SESSION['info']['nom'] ?>
                <?php echo $_SESSION['info']['prenom'] ?>

              </div>
              <div>
                <?php
                $currentUserID = $_SESSION['info']['id'];

                // Prepare the SQL query to fetch user's information and annonce names
                $sqlQuery = "SELECT u.*, b.nom AS badge_name, a.title AS annonce_name
                           FROM users u
                           LEFT JOIN badge b ON u.id_badge = b.id_badge
                           LEFT JOIN annonce a ON u.id_user = a.id_user
                           WHERE u.id_user = :current_user_id";

                // Execute the query with the current user ID as a parameter
                $connexionDB = connexionDB();
                $statement = $connexionDB->prepare($sqlQuery);
                $statement->bindParam(':current_user_id', $currentUserID, PDO::PARAM_INT);
                $statement->execute();

                // Fetch the user's data, badge name, and annonce names
                $userData = $statement->fetch(PDO::FETCH_ASSOC);

                // Check if the user was found in the database
                if ($userData) {
                  // Access the user's information
                  $username = $userData['nom'];
                  $userJob = $userData['job'];
                  $userEmail = $userData['email'];
                  $userBadgeName = $userData['badge_name'];
                  $userAnnonceNames = array(); // Create an array to store annonce names
                
                  // Loop through the fetched data to get all annonce names
                  do {
                    $annonceName = $userData['annonce_name'];
                    if (!empty($annonceName)) {
                      $userAnnonceNames[] = $annonceName;
                    }
                  } while ($userData = $statement->fetch(PDO::FETCH_ASSOC));

                  // Use the user's information and annonce names as needed
                  // For example, you can display them in the desired format
                
                  if (!empty($userBadgeName)) {
                    echo "<span class='badge " . getBadgeClass($userBadgeName) . "'>$userBadgeName</span>";
                  } else {
                    echo "No Badge";
                  }

                } else {
                  // Handle the case when the user is not found in the database
                  echo "User not found!";
                }

                // Function to map badge names to their corresponding classes
                function getBadgeClass($badgeName)
                {
                  $badgeClasses = array(
                    'Bronze Badge' => 'badge-info',
                    'Silver Badge' => 'badge-primary',
                    'Gold Badge' => 'badge-success'
                  );

                  return isset($badgeClasses[$badgeName]) ? $badgeClasses[$badgeName] : 'badge-secondary';
                }
                ?>
              </div>
            </div>
          </div>
          <div class="p-4 text-black" style="background-color: #f8f9fa;">
            <div class="d-flex justify-content-end text-center py-1">
              <div>
                <p class="mb-1 h5">253</p>
                <p class="small text-muted mb-0">Photos</p>
              </div>
              <div class="px-3">
                <p class="mb-1 h5">1026</p>
                <p class="small text-muted mb-0">Followers</p>
              </div>
              <div>
                <p class="mb-1 h5">478</p>
                <p class="small text-muted mb-0">Following</p>
              </div>
            </div>
          </div>
          <div class="card-body p-4 text-black">
            <div class="mb-5">
              <!-- <p class="lead fw-normal mb-1">About</p> -->
              <p class="text-muted mb-0">
                <?php
                // Display the annonce names
                echo "<div>";
                echo "<h4>Annonces:</h4>";
                if (count($userAnnonceNames) > 0) {
                  foreach ($userAnnonceNames as $annonceName) {
                    echo "<p>$annonceName</p>";
                  }
                } else {
                  echo "<p>No annonces found for this user.</p>";
                }
                echo "</div>";
                ?>
              </p>
            </div>
            <div class="d-flex justify-content-between align-items-center mb-4">
              <p class="lead fw-normal mb-0">Recent Messages</p>
              <p class="mb-0"><a href="#!" class="text-muted">Show all</a></p>
            </div>
            <!-- <div class="row g-2">
              <div class="col mb-2">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/Lightbox/Original/img%20(112).webp" alt="image 1"
                  class="w-100 rounded-3">
              </div>
              <div class="col mb-2">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/Lightbox/Original/img%20(107).webp" alt="image 1"
                  class="w-100 rounded-3">
              </div>
            </div>
            <div class="row g-2">
              <div class="col">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/Lightbox/Original/img%20(108).webp" alt="image 1"
                  class="w-100 rounded-3">
              </div>
              <div class="col">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/Lightbox/Original/img%20(114).webp" alt="image 1"
                  class="w-100 rounded-3">
              </div>
            </div> -->
          </div>
        </div>
      </div>
    </div>
  </div>
</section>