        <!-- slider Area Start-->
        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="slider-active">
                <div class="single-slider slider-height d-flex align-items-center" data-background="assets/img/hero/h1_hero.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-9 col-md-10">
                                <div class="hero__caption">
                                    <h1>Find the right freelance service, right away</h1>
                                </div>
                            </div>
                        </div>
                        <!-- Search Box -->
                        <div class="row">
                            <div class="col-xl-8">





                                <!-- form -->
                                <form  method="POST" class="search-box" id="formSearchAnnonces">
                                    <div class="input-form">
                                        <input type="text" name="annonceNom" placeholder="service Tittle or keyword">
                                    </div>
                                    <div class="select-form">
                                        <div class="select-itms">
                                            <select name="select" id="select1">
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
                                    </div>
                                    <button type="submit" class="btn search-form">
                                    Find job
                                    </button>	
                                </form>	





                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->