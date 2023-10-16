<?php
session_start();
require_once("functions/fonctSession.php"); // add/remove/verif session
require_once("functions/fonctConnexion.php"); // dbconncection
require_once("back_S/gereSession.php"); 




include 'front_S/head_S.php';
include 'front_S/header_S.php';
if (isset($_GET['about'])) 
{
  include 'front_S/about_S.php';
}
else if(isset($_GET['reserve']))
{
  include 'front_S/reserve_S.php';

}
else if(isset($_GET['faq']))
{
  include 'front_S/faq_S.php';

}
else if(isset($_GET['inscription']))
{
  include 'front_S/inscription_S.php';

}
else if(isset($_GET['admin']))
{
  include 'front_S/admin_S.php';

}
else if(isset($_GET['profil']))
{
  include 'front_S/profile_S.php';

}
else if(isset($_GET['main']))
{
  include 'front_S/main.php';

}
else if(isset($_GET['main'])&&isset($_GET['data']))
{
  include 'front_S/main.php';

}
else if(isset($_GET['edit']))
{
  include 'front_S/edit_S.php';

}
else if(isset($_GET['freelance']))
{
  include 'front_S/freelance_S.php';

}
else {
  include 'front_S/hero_S.php';
  include 'front_S/services_S.php';
  include 'front_S/bf_S.php';
  include 'front_S/ourTeam_S.php';
}

include 'front_S/foot_S.php';
include 'front_S/footer_S.php';
?>