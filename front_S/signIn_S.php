<div class="dropdown dropleft">
    <!-- <button class="btn border text-white dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
        aria-haspopup="true" aria-expanded="false">
        Sign in
    </button> -->
    <a href="?inscription" class="btn head-btn1">Sign Up</a>
    <button type="button" class="btn head-btn2  dropdown-toggle"  type="button" id="dropdownMenuButton" data-toggle="dropdown"
        aria-haspopup="true" aria-expanded="false">
        Log In
    </button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        
        <form class="text-center border border-light p-5" method="post" action="index.php">

            <p class="h4 mb-4">Sign in</p>

            <!-- Email -->
            <input type="email" id="defaultLoginFormEmail" class="form-control mb-4" name="emailConnexion"
                placeholder="E-mail">

            <!-- Password -->
            <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" name="passwordConnexion"
                placeholder="Password">

            <div class="d-flex justify-content-around">
                <div>
                    <!-- Remember me -->
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="defaultLoginFormRemember">
                        <label class="custom-control-label" for="defaultLoginFormRemember">Remember me</label>
                    </div>
                </div>
                <div>
                    <!-- Forgot password -->
                    <a href="">Forgot password?</a>
                </div>
            </div>

            <!-- Sign in button -->
            <button class="btn text-white btn-block my-4" style="background-color:violet" type="submit">Sign in</button>

            <!-- Register -->
            <p>Not a member?
                <a href="index.php?inscription" style="color:violet;">Register</a>
            </p>

            <?php
            if (isset($erreurConnexion)) {
                ?>
                <div class="alert alert-danger">
                    Erreur de connexion !!!!
                </div>

                <?php
            }
            ?>

        </form>
    </div>
</div>