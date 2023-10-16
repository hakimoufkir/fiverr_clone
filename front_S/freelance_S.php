<!-- ======= Create Annonce Form ======= -->
<section id="create-annonce" class="create-annonce">
    <div class="container mt-4" data-aos="fade-up">
        <div class="row g-5">
            <div class="col-lg-12">
                <!-- Default form create annonce -->
                <form class="text-center border border-light p-5" method="POST" id="formCreateAnnonce"
                    enctype="multipart/form-data">
                    <p class="h4 mb-4">Create Annonce</p>

                    <!-- Title -->
                    <input type="text" name="title" class="form-control mb-4" placeholder="Title">

                    <!-- Cover Photo -->
                    <div class="form-group">
                        <label for="photo_cover">Cover Photo:</label>
                        <input type="file" name="photo_cover" id="photo_cover" class="form-control"
                            accept=".jpg, .png, .gif">
                        <small class="form-text text-muted mb-4">(.jpg, .png, .gif)</small>
                    </div>

                    <!-- Description -->
                    <textarea name="description" class="form-control mb-4" placeholder="Description"></textarea>

                    <!-- Category -->
                    <div class="form-group">
                        <label for="category_name">Category:</label>
                        <select name="category_name" id="category_name" class="form-control">
                        <?php
                        include 'back_S/fetchCategories.php'; // $categories
                        foreach ($categories as $category) {
                            $id_category = $category['id_category'];
                            $nom = $category['nom'];
                            $category_count = $category['category_count'];
                            ?>
                            <option value="<?php echo $id_category; ?>"><?php echo $nom; ?></option>
                            <?php
                        }
                        ?>
                        </select>
                    </div>

                    <!-- Create Annonce button -->
                    <button type="submit" style="background-color: darkviolet; color: white"
                        class="btn my-4 btn-block">Create Annonce</button>

                </form>
                <!-- Default form create annonce -->
            </div>
        </div>
    </div>
</section>
<!-- End Create Annonce Form -->
