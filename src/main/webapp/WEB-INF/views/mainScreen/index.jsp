<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
   
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
      
      <!-- =================================== -->
      <!--           THEME COLOR           -->
      <!-- =================================== -->
      
      <meta name="theme-color" content="#fff" />

      <!-- =================================== -->
      <!--           VIEWPORT              -->
      <!-- =================================== -->

      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" />

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

      <meta name="keywords" content="soundcast, html5 template, creative template, themeforest, podcast template, podcast theme" />
      <meta name="description" content="A clean, lightweight and responsive podcast theme." />

      <!-- =================================== -->
      <!--           ROBOTS              -->
      <!-- =================================== -->

      <meta name="GOOGLEBOT" content="INDEX, FOLLOW" />
      <meta name="robots" content="index, follow">
      <meta name="msnbot" content="NOODP" />

      <!-- =================================== -->
      <!--           FACEBOOK              -->
      <!-- =================================== -->

      <meta property="og:locale" content="en" />
      <meta property="og:type" content="website" />
      <meta property="og:title" content="Soundcast" />
      <meta property="og:description" content="Podcast Responsive Theme" />
      <meta property="og:url" content="http://www.reidark.com.br/soundcast" />
      <meta property="og:site_name" content="Soundcast" />
      <meta property="og:image" content="http://www.reidark.com.br/soundcast/assets/img/facebook-og.jpg" />

      <!-- =================================== -->
      <!--            TWITTER              -->
      <!-- =================================== -->

      <meta name="twitter:card" content="summary" />
      <meta name="twitter:site" content="http://www.reidark.com.br/soundcast" />
      <meta name="twitter:creator" content="@reidarking" />
      <meta name="twitter:title" content="Soundcast" />
      <meta name="twitter:description" content="Podcast Responsive Theme" />
      <meta name="twitter:domain" content="reidark" />
      <meta name="twitter:image" content="http://www.reidark.com.br/soundcast/assets/img/twitter-og.jpg" />

      <!-- =================================== -->
      <!--            FAVICON              -->
      <!-- =================================== -->
      
      <link rel="icon" href="resources/assets/img/favicon.png" />
      <link rel="shortcut icon" href="resources/assets/img/favicon.png" />
      
          <style type="text/css">
	body {
  margin: 0;
  padding: 0;
/*  Background fallback in case of IE8 & down, or in case video doens't load, such as with slower connections  */
  background: #333;
  background-attachment:fixed;
  background-size: cover;
}

/* The only rule that matters */
#video-background {
/*  making the video fullscreen  */
  position: fixed;
  right: 0; 
  bottom: 0;
  min-width: 100%; 
  min-height: 100%;
  width: 1920px; 
  height: auto;
  z-index: -100;
}

/* These just style the content */
article {
/*  just a fancy border  */
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  border: 10px solid rgba(255, 255, 255, 0.5);
  margin: 10px;
}
 </style>

   </head>

   <body itemscope itemtype="http://schema.org/WebSite">
      
      <!-- ===== HEADER ===== -->
      <header class="header absolute" itemscope itemtype="http://schema.org/Organization">
         <div class="container">
         
            <!-- ===== LOGO ===== -->
            <h1 class="logo">
            <a href="index.html">
            <img itemprop="logo" src="resources/assets/img/logo.png" alt="Donari" title="Donari" /></a></h1>
            
      <!-- ===== NAVIGATION ===== -->
         
         <nav class="navigation">
            <!-- ===== MENU ===== -->
            <ul class="menu">
               <li class="menuitem active"><a href="index">Home</a></li>
               <li class="menuitem dropdown"><a href="make">Make</a>
                  <ul class="droplist">
                     <li class="droplist-item"><a href="mrv" style="fontsize:20pt;">Music React Video</a></li>
                     <li class="droplist-item"><a href="selectTemplate">Template</a></li>
                  </ul></li>
               <li class="menuitem"><a href="index">About Us</a></li>
               <c:if test="${id ==null  }">
               <li class="menuitem"><a href="login">Login</a></li>
               <li class="menuitem"><a href="join">Join</a></li>
               </c:if>
               <c:if test="${id !=null  }">
               <li class="menuitem"><a href="myPage">My Page</a></li>
               <li class="menuitem"><a href="logout">Logout</a></li>
               </c:if>
            </ul>
            <!-- ===== HAMBURGUER ICON ===== -->
            <a href="#" class="btn-hamburguer-menu"><i class="fa fa-bars"></i></a>
         </nav>
      </div>
      </header>
      
      <!-- ===== LASTEST PODCAST (HERO) ===== -->
      <section class="podcast-hero">
      
      </section>
      
      <!-- ===== MAIN ===== -->
-       <main id="main" class="main" style="
    background-size:cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: top;
    height:100%;
    width:100%;">
    
    <video autoplay loop id="video-background" muted plays-inline>
  				<source src="resources/assets/video/Chicago_4K.mp4" type="video/mp4">
			</video>
         
         <!-- ===== NEWSLETTER ===== -->
         <section class="section-intro">
               
               <!-- ===== SECTION TITLE ===== -->
               <h1 class="intro-title" style="font-size: 60px; font-family: Montserrat;">Donari</h1>
               <p style="font-size: 18px">Make Your Pictures to Video which a React to Music!</p>
               <p><a href="mrv"><img src="resources/assets/img/getStartedBtn.png"></a></p>
               <p style="font-size: 12px">Let's get started!</p>
         </section>
                  
               
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
                     <li><a href="#">@SangWoo</a> <span>TeamLeader</span></li>
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
      
      <!-- JQUERY -->
      <script src="resources/assets/js/jquery-1.11.min.js"></script>
      
      <!-- BOOTSTRAP JS -->
      <script src="resources/assets/js/bootstrap.min.js"></script>
      
      <!-- MEDIA ELEMENT -->
      <!-- <script src="resources/assets/js/mediaelement-and-player.min.js"></script> -->
      
      <!-- MAGNIFIC POPUP -->
      <script src="resources/assets/js/magnific-popup.min.js"></script>
      
      <!-- FORM VALIDATE -->
      <script src="resources/assets/js/validate.min.js"></script>
      
      <!-- PLACEHOLDER FOR IE -->
      <script src="resources/assets/js/placeholder.min.js"></script>
      
      <!-- THEME JS -->
      <script src="resources/assets/js/main.js"></script>

   </body>

</html>