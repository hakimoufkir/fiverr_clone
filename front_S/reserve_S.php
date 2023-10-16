<?php
require_once("functions/fonctSession.php"); // add/remove/verif session
require_once("functions/fonctConnexion.php"); // dbconnection
require_once("back_S/gereSession.php");

if (verfiSession()) {

  ?>
  <!-- Breadcrumb Begin -->
  <div class="breadcrumb-option mb-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="breadcrumb__links">
            <a href="index.php"><i class="fa fa-home"></i> Home</a>
            <span>reserve</span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Breadcrumb End -->



  <!-- Section: Design Block -->
  <section class="text-center">
    <div class="card mx-4 mx-md-5">
      <div class="card-body py-5 px-md-5">

        <div class="row d-flex justify-content-center">
          <div class="col-lg-8">
            <h2 class="fw-bold mb-5">Reserve now</h2>
            <form method="post" id="formReservation">
              <!-- 2 column grid layout with text inputs for the first and last names -->
              <div class="row">
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input value="<?php echo $_SESSION['info']['nom'] ?>" type="text" id="form3Example1" name="firstname"
                      class="form-control" />
                    <label class="form-label" for="form3Example1">First name</label>
                  </div>
                </div>
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="text" value="<?php echo $_SESSION['info']['nom'] ?>" id="form3Example2" name="lastname"
                      class="form-control" />
                    <label class="form-label" for="form3Example2">Last name</label>
                  </div>
                </div>
              </div>

              <!-- Artist input -->
              <div class="form-outline mb-4">
                <input type="text" value="<?php echo $_SESSION['info']['artistNom'] ?>" id="form3Example4"
                  name="artistname" class="form-control" />
                <label class="form-label" for="form3Example4">Artist Name</label>
              </div>

              <!-- Email input -->
              <div class="form-outline mb-4">
                <input value="<?php echo $_SESSION['info']['email'] ?>" type="email" id="form3Example3" name="email"
                  class="form-control" />
                <label class="form-label" for="form3Example3">Email address</label>
              </div>

              <!-- Telephone input -->
              <div class="form-outline mb-4">
                <input type="tel" id="form3Example3" name="telephone" class="form-control" />
                <label class="form-label" for="form3Example3">Telephone</label>
              </div>

              <!-- Description input -->
              <div class="form-outline mb-4">
                <textarea id="form3Example3" name="description" class="form-control"></textarea>
                <label class="form-label" for="form3Example3">Description</label>
              </div>

              <!-- Submit button -->
              <button type="submit" class="btn btn-primary btn-block mb-4">
                Reserve Now
              </button>
            </form>

          </div>
        </div>
      </div>
    </div>
  </section>
  <div class="row d-flex justify-content-center">
    <div class="col-md-8 col-lg-6">
      <div class="card shadow-0 border" style="background-color: #f0f2f5;">
        <div class="card-body p-4">
          <form class="form-outline mb-4" id="sendMessage" method="POST">
            <input type="text" id="addANote" class="form-control" name="message" placeholder="Type comment..." />
            <input type="hidden" name="id" value="<?php echo $_SESSION['info']['id'] ?>" />
            <button class="btn btn-primary" type="submit">+ Add a note</button>
          </form>

          <?php
          // Fetch comments with user information from the database
          $connexionDB = connexionDB();
          $sqlQuery = "SELECT comments.*, user.nom, user.prenom, user.artistNom, user.email
             FROM comments
             INNER JOIN user ON comments.user_id = user.id";
          $stmt = $connexionDB->prepare($sqlQuery);
          $stmt->execute();
          $comments = $stmt->fetchAll();
          foreach ($comments as $comment): ?>
            <div class="card mb-4">
              <div class="card-body">
                <p>
                  <?php echo $comment['comment']; ?>
                </p>

                <div class="d-flex justify-content-between">
                  <div class="d-flex flex-row align-items-center">
                    <img src="https://picsum.photos/200/300" alt="avatar" width="25" height="25" />
                    <p class="small mb-0 ms-2">User
                      <?php echo $comment['user_id']; ?> (
                      <?php echo $comment['nom']; ?>
                      <?php echo $comment['prenom']; ?>)
                    </p>
                  </div>
                  <!-- Add additional actions or buttons here as needed -->
                </div>
              </div>
            </div>
          <?php endforeach; ?>

          <div class="card-body">
            <p>Type your note, and hit enter to add it</p>

            <div class="d-flex justify-content-between">
              <div class="d-flex flex-row align-items-center">
                <img src="https://picsum.photos/200/300" alt="avatar" width="25" height="25" />
                <p class="small mb-0 ms-2">Johny</p>
              </div>
              <div class="d-flex flex-row align-items-center">
                <p class="small text-muted mb-0">Upvote?</p>
                <i class="far fa-thumbs-up ms-2 fa-xs text-black" style="margin-top: -0.16rem;"></i>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
  </div>
  <!-- Section: Design Block -->

  <?php

} else {
  echo "<center><h1>YOU DON'T HAVE PERMESSION HERE FK YOU GO OUT</h1></center>";
  echo "<br>";

}
// echo '<pre>';
// var_dump($_SESSION);
// echo '</pre>';
?>