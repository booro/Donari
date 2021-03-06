<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<!-- =================================== -->
<!--                 MOVIE           -->
<!-- =================================== -->
   
<head>

<!-- =================================== -->
<!--         COMPATIBILITY           -->
<!-- =================================== -->

<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- =================================== -->
<!--            TITLE               -->
<!-- =================================== -->

<title>Donari</title>

<!-- =================================== -->
<!--          MORDERNIZR               -->
<!-- =================================== -->

<script src="resources/assets/js/modernizr.js"></script>

<!-- =================================== -->
<!--            STYLES              -->
<!-- =================================== -->

<!-- video.css -->
<link href="resources/assets/css/video.css" rel="stylesheet">

<!-- BOOTSTRAP MIN -->
<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" />

<!-- MEDIA ELEMENT -->
<link href="resources/assets/css/mediaelementplayer.min.css" rel="stylesheet" />

<!-- MAGNIFIC POPUP CSS -->
<link href="resources/assets/css/magnific-popup.css" rel="stylesheet" />

<!-- THEME CSS -->
<link href="resources/assets/css/style.css" rel="stylesheet" />

<!-- GOOGLE FONTS -->
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300' rel='stylesheet' type='text/css'>

<!-- FONT AWESOME -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />

<!-- ANIMATE -->
<link href="resources/assets/css/animate.css" rel="stylesheet">

<!-- SLICK -->
<link href="resources/assets/slick/slick.css" rel="stylesheet"/>

<!-- =================================== -->
<!--           THEME COLOR           -->
<!-- =================================== -->

<meta name="theme-color" content="#fff" />

<!-- =================================== -->
<!--          CONDITIONAL           -->
<!-- =================================== -->

<!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
         <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->

<!-- =================================== -->
<!--           VIEWPORT              -->
<!-- =================================== -->

<meta name="viewport"
   content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" />

<!-- =================================== -->
<!--            AUTHOR              -->
<!-- =================================== -->

<meta name="author" content="reidark" />
<meta name="reply-to" content="support@reidark.com.br" />
<meta name="DC.publisher" content="reidark" />
<meta name="generator" content="Brackets" />

<!-- =================================== -->
<!--           CONTENT              -->
<!-- =================================== -->

<meta name="keywords"
   content="soundcast, html5 template, creative template, themeforest, podcast template, podcast theme" />
<meta name="description"
   content="A clean, lightweight and responsive podcast theme." />

<!-- =================================== -->
<!--           ROBOTS              -->
<!-- =================================== -->

<meta name="GOOGLEBOT" content="INDEX, FOLLOW" />
<meta name="robots" content="index, follow">
<meta name="msnbot" content="NOODP" />

<!-- =================================== -->
<!--            FAVICON              -->
<!-- =================================== -->

<link rel="icon" href="resources/assets/img/favicon.png" />
<link rel="shortcut icon" href="resources/assets/img/favicon.png" />

<script type="text/javascript">

function remake(){
   
   location.href = "mrv";
   
}

</script>


</head>

<body itemscope itemtype="http://schema.org/WebSite">

   <!-- ===== HEADER ===== -->
   <header class="header sticky scrolling" data-offset="60" itemscope itemtype="http://schema.org/Organization">
      <div class="container">
         <!-- ===== LOGO ===== -->
         <h1 class="logo">
            <a href="index"><img itemprop="logo" src="resources/assets/img/logo.png" alt="Donari" title="Donari" /></a>
         </h1>
         <!-- ===== NAVIGATION ===== -->
         <nav class="navigation">
            <!-- ===== MENU ===== -->
            <ul class="menu">
               <li class="menuitem"><a href="index">Home</a></li>
               <li class="menuitem dropdown active"><a href="make">Make</a>
                  <ul class="droplist">
                     <li class="droplist-item"><a href="mrv" style="fontsize: 20pt;">Music React Video</a></li>
                     <li class="droplist-item"><a href="selectTemplate">Template</a></li>
                  </ul></li>
               <li class="menuitem"><a href="aboutUs">About Us</a></li>
               <li class="menuitem"><a href="login">Login</a></li>
               <li class="menuitem"><a href="join">Join</a></li>
               <li class="menuitem"><a href="myPage">My Page</a></li>
            </ul>
            <!-- ===== HAMBURGUER ICON ===== -->
            <a href="#" class="btn-hamburguer-menu"><i class="fa fa-bars"></i></a>
         </nav>
      </div>
   </header>

   <!-- ===== MAIN ===== -->
   <main class="main"> 
   <!-- ===== PAGE HEADER ===== --> 
   <header class="page-header" id="vpHeader" >
      <div class="page-header-inner">
         <div class="container" style="position: relative;">

            <!-- ===== PAGE HEADER CONTENT 페이지 타이틀 ===== -->
            <div class="page-header-content text-center" style="position: relative;">
               <h2 style="margin-top: 20px;">Movie</h2>
            </div>
         </div>
      </div>
   </header> 
   
   <!-- ===== UPLOAD IMAGES ===== -->
  
   
   </main>

   <div class="container" >
      <div class="video" style="float: left; width: 800px" >
            <div class="vide-inner" style="margin-left: 100px">
               <div class="container">
                   <video id="my-video" class="video-js" controls preload="auto" width="685" height="300"  data-setup="{}" >
                   <source src="resources/template/${cmd}/complete/${videoName}" type='video/mp4'  style="width: 685px" id="videoStatus" >
                  </video>
                     
                     
               </div>
               
            </div>
 
         </div>
         <div textContainer style="float: left;">
         <div class="podcast-meta-element" style="width: 300px; height: 75px" >
            <span class="podcast-meta-item"><i class="fa fa-calendar"></i> ${today }</span>
      </div>   
         <div class="podcast-meta-element" style="width: 300px; height: 75px">
            <span class="podcast-meta-item"><i class="fa fa-clock-o"></i> 30 seconds</span>
         </div>
            <a href="resources/template/${cmd}/complete/${videoName}" download style="text-align: center;">
      <div class="podcast-meta-element" style="width: 300px; height: 75px">
            <span class="podcast-meta-item videotime"><i class="fa fa-download"></i> Video Download</span>
      </div>      
            </a>
            <div class="podcast-meta-element" style="width: 300px; height: 75px" onclick="remake()">
            <span class="podcast-meta-item"><i class="fa fa-undo"></i> Remake Video</span>
            
      </div>   
            
      </div>         
       <!--     <div>
      <form id="imageUploadForm" action="tempImg" method="post" enctype="multipart/form-data">
         <input id="multiFile" name="files" type="file" multiple="multiple" style="display: none;">
         <img src='resources/assets/img/photos.png' onclick='document.all.multiFile.click();' style="width: 43px; margin-bottom: 30px;">
         <button type="submit">전송</button>
      </form>
   </div> -->



   <!-- ===== FOOTER ===== -->
   <footer class="footer">

      <!-- ===== FOOTER CONTENT INFORMATION ===== -->
      <section class="section-positive">
         <div class="container">
            <div class="mt-70 mb-30">
               <!-- ===== SITEMAP ===== -->
               <div class="col-sm-3 mb-40">
                  <h2 class="title-separator white">Sitemap</h2>
                  <ul class="footer-list">
                     <li><a href="index">Home</a></li>
                     <li><a href="make">Make</a></li>
                     <li><a href="mvr">Music React Video</a></li>
                     <li><a href="selectTemplate">Template</a></li>
                     <li><a href="aboutUs">About Us</a></li>
                  </ul>
               </div>

               <!-- ===== PODCASTS EPISODES ===== -->
               <div class="col-sm-3 mb-40">
                  <h2 class="title-separator white">Lastest Template</h2>
                  <ul class="footer-complement">
                     <li><a href="template/travel">#Travel</a> <span>September 29, 2017</span></li>
                     <li><a href="template/movie">#Movie</a> <span>September 18, 2017</span></li>
                  </ul>
               </div>

               <!-- ===== PODCASTS EPISODES ===== -->
               <div class="col-sm-3 mb-40">
                  <h2 class="title-separator white">The Team</h2>
                  <ul class="footer-complement">
                     <li><a href="#">@SangWoo</a> <span>Team Leader</span></li>
                     <li><a href="#">@BooRo</a> <span>Engineer</span></li>
                     <li><a href="#">@SeungHyeon</a> <span>Engineer</span></li>
                     <li><a href="#">@EunJi</a> <span>Engineer</span></li>
                  </ul>
               </div>

               <!-- ===== SOCIAL CONNECTION ===== -->
               <div class="col-sm-3 mb-40">
                  <h2 class="title-separator white">We are social</h2>
                  <ul class="social-list">
                     <li class="social-item"><a href="http://www.facebook.com" target="_blank"><i class="fa fa-facebook"></i></a></li>
                     <li class="social-item"><a href="http://twitter.com/" target="_blank"><i class="fa fa-twitter"></i></a></li>
                     <li class="social-item"><a href="http://twitter.com/" target="_blank"><i class="fa fa-instagram"></i></a></li>
                     <li class="social-item"><a href="http://plus.google.com/" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                     <li class="social-item"><a href="http://soundcloud.com/" target="_blank"><i class="fa fa-soundcloud"></i></a></li>
                     <li class="social-item"><a href="http://www.pinterest.com/" target="_blank"><i class="fa fa-pinterest"></i></a></li>
                     <li class="social-item"><a href="http://www.youtube.com/" target="_blank"><i class="fa fa-youtube"></i></a></li>
                     <li class="social-item"><a href="http://www.spotify.com" target="_blank"><i class="fa fa-spotify"></i></a></li>
                  </ul>
               </div>
            </div>
         </div>
      </section>

      <!-- ===== FOOTER INFORMATION ===== -->
      <section class="footer-credits">
         <div class="container">
            <div class="row">
               <!-- ===== CREDIT LOGO ===== -->
               <div class="col-sm-6 footer-logo">
                  <h2><a href="index"><img src="resources/assets/img/logo.png" alt="Donari" title="Donari" /></a></h2>
               </div>
               <!-- ===== CREDIT LOGO ===== -->
               <div class="col-sm-6 text-right">Donari - 2017. All rights reserved.</div>
            </div>
         </div>
      </section>

   </footer>
   
   <!-- =================================== -->
   <!--            SCRIPTS              -->
   <!-- =================================== -->

   <!-- videoJs -->
    <script src="resources/assets/js/videos.js"></script>
   <script src="resources/assets/js/video.js"></script>

   <!-- JQUERY -->
   <script src="http://code.jquery.com/jquery-1.9.1.js"></script>      

   <!-- BOOTSTRAP JS -->
   <script src="resources/assets/js/bootstrap.min.js"></script>

   <!-- MEDIA ELEMENT -->
   <!-- <script src="resources/assets/js/mediaelement-and-player.min.js"></script> -->

   <!-- MAGNIFIC POPUP -->
  <!--  <script src="resources/assets/js/magnific-popup.min.js"></script> -->

   <!-- FORM VALIDATE -->
  <!--  <script src="resources/assets/js/validate.min.js"></script> -->

   <!-- PLACEHOLDER FOR IE -->
  <!--  <script src="resources/assets/js/placeholder.min.js"></script> -->

   <!-- THEME JS -->
   <!-- <script src="resources/assets/js/main.js"></script> -->
   
</body>

