<!-- ======= Post Grid Section ======= -->
<section id="posts" class="posts">
    <div class="container mt-4" data-aos="fade-up">
        <div class="row g-5">
            <div class="col-lg-12">
                <!-- Default form register -->
                <form class="text-center border border-light p-5" method="post"
                    id="formInscription" enctype="multipart/form-data">
                    <p class="h4 mb-4">Inscription</p>
                    <div class="form-row mb-4">
                        <div class="col">
                            <!-- First name -->
                            <input type="text" name="nom" class="form-control" placeholder="First name">
                        </div>
                        <div class="col">
                            <!-- Last name -->
                            <input type="text" name="prenom" class="form-control" placeholder="Last name">
                        </div>
                    </div>
                    <div class="form-row mb-4">
                        <div class="col">
                            <!-- Artist name -->
                            <input type="text" name="job" class="form-control" placeholder="Job Title">
                        </div>
                    </div>

                    <!-- E-mail -->
                    <input type="email" name="email" class="form-control mb-4" placeholder="E-mail">

                    <!-- Password -->
                    <input type="password" name="mdp" class="form-control" placeholder="Password"
                        aria-describedby="defaultRegisterFormPasswordHelpBlock">
                    <small id="defaultRegisterFormPasswordHelpBlock" class="form-text text-muted mb-4">
                        At least 8 characters and 1 digit
                    </small>

                    <!-- Profile Photo -->
                    <div class="form-group">
                        <label for="photo">Profile Photo:</label>
                        <input type="file" name="photo" id="photo" class="form-control" accept=".jpg, .png, .gif">
                        <small class="form-text text-muted mb-4">
                            (.jpg, .png, .gif)
                        </small>
                    </div>

                    <!-- Cover Photo -->
                    <div class="form-group">
                        <label for="coverphoto">Cover Photo:</label>
                        <input type="file" name="coverphoto" id="coverphoto" class="form-control"
                            accept=".jpg, .png, .gif">
                        <small class="form-text text-muted mb-4">
                            (.jpg, .png, .gif)
                        </small>
                    </div>

             
                    <!-- Sign up button -->
                    <button type="submit" style="background-color: darkviolet; color: white"
                        class="btn my-4 btn-block">Inscription</button>

                </form>
                <!-- Default form register -->



            </div>
        </div>

    </div> <!-- End .row -->
    </div>
</section> <!-- End Post Grid Section -->