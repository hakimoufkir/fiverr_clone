<header>
  <!-- Header Start -->
  <div class="header-area header-transparrent">
    <div class="headder-top header-sticky">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-3 col-md-2">
            <!-- Logo -->
            <div class="logo">
              <a href="index.php">
              <img src="assets/img/logo/logo123456.png" alt="" style="
    height: 81px;
"></a>
            </div>
          </div>
          <div class="col-lg-9 col-md-9">
            <div class="menu-wrapper">
              <!-- Main-menu -->
              <div class="main-menu">
                <nav class="d-none d-lg-block">
                  <ul id="navigation">
                    <li><a href="index.php">Home</a></li>
                    <li><a href="?main">Find a Service</a></li>
                    <?php
                    if (verfiSession()) {
                      ?>
                    <li><a href="?freelance">Become a Freelancer</a></li>
                      <?php
                    }
                    ?>
                    <li><a href="#">Categories</a>
                      <ul class="submenu">
                        <?php
                        include 'back_S/fetchCategories.php'; // $categories
                        foreach ($categories as $category) {
                          $id_category = $category['id_category'];
                          $nom = $category['nom'];
                          $category_count = $category['category_count'];
                          ?>
                          <li><a href="#!">
                              <?php echo $nom; ?>
                            </a></li>
                          <?php
                        }
                        ?>
                        <!-- <li><a href="blog.html">Blog</a></li>
                        <li><a href="single-blog.html">Blog Details</a></li>
                        <li><a href="elements.html">Elements</a></li>
                        <li><a href="job_details.html">job Details</a></li> -->
                      </ul>
                    </li>
                  </ul>
                </nav>
              </div>
              <!-- Header-btn -->
              <div class="header-btn d-none f-right d-lg-block">
              <?php
              if (verfiSession()) {
                require("front_S/menuAbonne.php");
              } else {
                require("front_S/signIn_S.php");
              }
              ?>
                <!-- <a href="?inscription" class="btn head-btn1">Sign Up</a>
                <button type="button" class="btn head-btn2" data-toggle="modal" data-target="#basicExampleModal">
                  Log In
                </button> -->
              </div>
            </div>
          </div>
          <!-- Mobile Menu -->
          <div class="col-12">
            <div class="mobile_menu d-block d-lg-none"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Header End -->
</header>


<!-- Modal -->
<div class="modal fade" id="basicExampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    <form class="d-flex flex-column justify-items-center" method="post" action="index.php">
        <div class="md-form my-0">
          <input class="form-control mr-sm-2" type="email" placeholder="email" aria-label="email"
            name="chmailConnexion">
        </div>
        <div class="md-form my-0">
          <input class="form-control mr-sm-2" type="password" placeholder="password" aria-label="password"
            name="chpwConnexion">
        </div>
        <div class="d-flex justify-items-center mt-2 ">
        <div class="md-form my-0 mx-5">
          <button class="btn btn-warning">Connexion</button>
        </div>

        <div class="md-form my-0 mx-5">
          <a href="?inscription" class="btn btn-1">S'inscrire</a>
        </div>
        <?php
        if (isset($erreurConnexion)) {
          ?>
          <div class="alert alert-danger">
            Erreur de connexion !!!!
          </div>

          <?php
        }
        ?>
        </div>
      </form>
    </div>
  </div>
</div>