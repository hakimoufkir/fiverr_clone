<!-- Our Services Start -->
<div class="our-services section-pad-t30">
    <div class="container">
        <!-- Section Tittle -->
        <div class="row">
            <div class="col-lg-12">
                <div class="section-tittle text-center">
                    <span>FEATURED TOURS Packages</span>
                    <h2>Browse Top Categories </h2>
                </div>
            </div>
        </div>
        <div class="row d-flex justify-contnet-center">
            <?php
            include 'back_S/fetchCategories.php'; // $categories
            foreach ($categories as $category) {
                $id_category = $category['id_category'];
                $nom = $category['nom'];
                $category_count = $category['category_count'];
                ?>
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                    <div class="single-services text-center mb-30">
                        <div class="services-ion">
                            <span class="flaticon-tour"></span>
                        </div>
                        <div class="services-cap">
                            <h5><a href="#!">
                                    <?php echo $nom; ?>
                                </a></h5>
                            <span>(
                                <?php echo $category_count; ?>)
                            </span>
                        </div>
                    </div>
                </div>
                <?php
            }
            ?>
        </div>

    </div>
    <!-- More Btn -->
    <!-- Section Button -->

</div>
</div>
<!-- Our Services End -->