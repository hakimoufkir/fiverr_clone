<!-- Hero Area Start-->
<div class="slider-area ">
    <div class="single-slider section-overly slider-height2 d-flex align-items-center"
        data-background="assets/img/hero/about.jpg">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="hero-cap text-center">
                        <h2>Find Your Service</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Hero Area End -->
<!-- Job List Area Start -->
<div class="job-listing-area pt-120 pb-120">
    <div class="container">
        <div class="row">
            <!-- Left content -->
            <div class="col-xl-3 col-lg-3 col-md-4">
                <div class="row">
                    <div class="col-12">
                        <div class="small-section-tittle2 mb-45">
                            <div class="ion"> <svg xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink" width="20px" height="12px">
                                    <path fill-rule="evenodd" fill="rgb(27, 207, 107)"
                                        d="M7.778,12.000 L12.222,12.000 L12.222,10.000 L7.778,10.000 L7.778,12.000 ZM-0.000,-0.000 L-0.000,2.000 L20.000,2.000 L20.000,-0.000 L-0.000,-0.000 ZM3.333,7.000 L16.667,7.000 L16.667,5.000 L3.333,5.000 L3.333,7.000 Z" />
                                </svg>
                            </div>
                            <h4>Filter Jobs</h4>
                        </div>
                    </div>
                </div>
                <!-- Job Category Listing start -->
                <div class="job-category-listing mb-50">
                    <!-- single one -->
                    <div class="single-listing">
                        <div class="small-section-tittle2">
                            <h4>Services Categories</h4>
                        </div>
                        <!-- Select job items start -->
                        <div class="select-job-items2">
                            <select name="select" id="categoryFilter">
                                <option value="">All Category</option>
                            <?php
                            include 'back_S/fetchCategories.php'; // $categories
                            foreach ($categories as $category) {
                                $id_category = $category['id_category'];
                                $nom = $category['nom'];
                                $category_count = $category['category_count'];
                                ?>
                                <option class="single-job-items mb-30 job-item" value="<?php echo $id_category; ?>">
                                    <?php echo $nom; ?>
                                </option>
                                <?php
                            }
                            ?>
                            </select>
                        </div>
                        <!--  Select job items End-->
                        <!-- select-Categories start -->
                        <div class="select-Categories pt-80 pb-50">
                            <div class="small-section-tittle2">
                                <h4>Job Type</h4>
                            </div>
                            <label class="container">Full Time
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">Part Time
                                <input type="checkbox" checked="checked active">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">Remote
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">Freelance
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <!-- select-Categories End -->
                    </div>
                </div>
                <!-- Job Category Listing End -->
            </div>
            <!-- Right content -->
            <div class="col-xl-9 col-lg-9 col-md-8">
                <!-- Featured_job_start -->
                <section class="featured-job-area">
                    <div class="container">
                        <!-- Count of Job list Start -->
                        <div class="row">
                            <?php
                            include 'back_S/fetchAnnonce.php';
                            // Assuming $annonces is the result of the SQL query
                            if (!empty($annonces)) {
                                $totalAnnonce = $annonces[0]['total_annonce']; // Get the total_annonce value from the first row
                                // Display the total_annonce value only once
                                ?>
                                <div class="col-lg-12">
                                    <div class="count-job mb-35">
                                        <span>Total Annone =
                                            <?php echo $totalAnnonce; ?>
                                        </span>
                                        <!-- Select job items start -->
                                        <div class="select-job-items">
                                            <span>Sort by</span>
                                            <select name="select">
                                                <option value="">None</option>
                                                <option value="">job list</option>
                                                <option value="">job list</option>
                                                <option value="">job list</option>
                                            </select>
                                        </div>
                                        <!--  Select job items End-->
                                    </div>
                                </div>
                                <?php
                            }
                            ?>
                        </div>

                        <!-- Count of Job list End -->
                        <!-- single-job-content -->
                        <!-- C:\xampp\htdocs\simoNew\assets\photos -->
                        <div class="single-job-items mb-30">
                            
    
    <?php
                                if (isset($_GET['data'])) {
                                    // Retrieve the search results from the URL parameter
                                    $jsonData = urldecode($_GET['data']);
                                    $results = json_decode($jsonData, true); // Convert JSON data to an array                                                                                                
                                    // Check if $results is an array before using it in the foreach loop
                                    if (is_array($results)) {
                                        // Display the filtered search results here (modify the code based on your requirements)
                                        if (!empty($results)) {
                                            foreach ($results as $result) {
             // Display each result as needed
             $title = isset($result['title']) ? $result['title'] : 'N/A';
             $badgeName = isset($result['badge_name']) ? $result['badge_name'] : 'N/A';
             $categoryName = isset($result['category_name']) ? $result['category_name'] : 'N/A';
             $userName = isset($result['user_name']) ? $result['user_name'] : 'N/A';
             $photoCover = isset($result['photo_cover']) ? $result['photo_cover'] : 'N/A';
             $description = isset($result['description']) ? $result['description'] : 'N/A';

             echo '<div class="announcement">';
             echo '<h3>' . $title . '</h3>';
             echo '<span class="badge badge-pill badge-primary">' . ucfirst(strtolower($badgeName)) . '</span>';
             echo '<p><b>Category:</b> ' . $categoryName . ' for <a href="#" class="text-dark">' . $userName . '</a></p>';
             echo '<img src="assets/photos/' . $photoCover . '" class="img-fluid" />';
             echo '<p>' . $description . '</p>';
             echo '<a href="#" class="' . (verfiSession() ? 'btn btn-secondary btn-rounded' : 'btn btn-secondary btn-rounded disabled') . ' contact-btn">Contact Him</a>';
             echo '</div>';
                                            }
                                        } else {
                                            // Display a message for no results
                                            echo "No results found.";
                                        }
                                    } else {
                                        // Handle the case when $results is not an array (e.g., if there was an error in decoding the JSON data)
                                        echo "Invalid data format.";
                                    }
                                } else {       
                            ?>
                            <?php                             
                            foreach ($annonces as $annonce): 
                                             // Define an array to map badge_name to the corresponding classes
                                             $badgeClasses = array(
                                                'Bronze Badge' => 'badge-info',
                                                'Silver Badge' => 'badge-primary',
                                                'Gold Badge' => 'badge-success'
                                            );
                
                                            // Get the badge_name from the fetched data
                                            $badgeName = strtolower($annonce['badge_name']);
                
                                            // Check if badge_name exists in the mapping array, otherwise use 'badge-info'
                                            $badgeClass = isset($badgeClasses[$annonce['badge_name']]) ? $badgeClasses[$annonce['badge_name']] : 'badge-secondary';
                            ?>
                            <div class="col-lg-4 col-md-12 mb-6 mb-lg-0">
                                <div class="card rounded-6 h-100">
                                    <div class="mt-n3 bg-image hover-overlay ripple mx-3 shadow-4-strong rounded-6"
                                        data-mdb-ripple-color="light">
                                        <img src="assets/photos/<?php echo $annonce['photo_cover']; ?>"
                                            class="img-fluid" />
                                        <a href="#!">
                                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);">
                                            </div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <?php echo $annonce['title']; ?>
                                            <span class="badge badge-pill <?php echo $badgeClass; ?>">
                                                <?php echo ucfirst($badgeName); ?>
                                            </span>
                                        </h5>
                                        <p class="text-muted">
                                            <small>Cat: <u>
                                                    <?php echo $annonce['category_name']; ?>
                                                </u> for
                                                <a href="" class="text-dark">
                                                    <?php echo $annonce['user_name']; ?>
                                                </a></small>
                                        </p>
                                        <p class="card-text">
                                            <?php echo $annonce['description']; ?>
                                        </p>
                                        <a href="#!"
                                            class="<?php echo verfiSession() ? 'btn btn-secondary btn-rounded' : 'btn btn-secondary btn-rounded disabled'; ?> contact-btn">contact
                                            him</a>

                                    </div>

                                </div>
                            </div>
<?php endforeach; ?>
<?php
                                }
                                ?>

                                

                            <script>
                                // Wait for the document to be ready
                                document.addEventListener('DOMContentLoaded', function () {
                                    // Get all the contact buttons
                                    const contactButtons = document.querySelectorAll('.contact-btn');

                                    // Add a click event listener to each contact button
                                    contactButtons.forEach(function (button) {
                                        button.addEventListener('click', function () {
                                            // Check if the button is enabled (not disabled)
                                            if (!this.classList.contains('disabled')) {
                                                Toastify({
                                                    text: "You have contacted the freelancer successfully, he will contact you as soon as possible, MyDesign thanks you for your trust ❤❤",
                                                    duration: 3000,
                                                    destination: 'https://github.com/apvarun/toastify-js',
                                                    newWindow: true,
                                                    close: true,
                                                    gravity: "top", // `top` or `bottom`
                                                    positionLeft: true, // `true` or `false`
                                                    backgroundColor: "linear-gradient(to right, #00b09b, #96c93d)"
                                                }).showToast();
                                            }
                                        });
                                    });
                                });
                            </script>

                        </div>

                    </div>
                </section>
                <!-- Featured_job_end -->
            </div>
        </div>
    </div>
</div>
<!-- Job List Area End -->
<!--Pagination Start  -->
<div class="pagination-area pb-115 text-center">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="single-wrap d-flex justify-content-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-start">
                            <li class="page-item active"><a class="page-link" href="#">01</a></li>
                            <li class="page-item"><a class="page-link" href="#">02</a></li>
                            <li class="page-item"><a class="page-link" href="#">03</a></li>
                            <li class="page-item"><a class="page-link" href="#"><span class="ti-angle-right"></span></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>