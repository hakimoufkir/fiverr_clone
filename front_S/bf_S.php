<!-- Online CV Area Start -->
<div class="online-cv cv-bg section-overly pt-90 pb-120" data-background="assets/img/gallery/cv_bg.jpg">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-10">
                <div class="cv-caption text-center">
                    <p class="pera1">FEATURED TOURS Packages</p>
                    <p class="pera2"> Became One Of the greatest Freelancer !</p>
                    <a 
                    <?php
                    if (verfiSession()) {
                        echo 'href="?freelance"';
                    } else
                        echo 'href="?inscription"';
                    ?>
                    class="border-btn2 border-btn4"
                    >Go For it !</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Online CV Area End-->