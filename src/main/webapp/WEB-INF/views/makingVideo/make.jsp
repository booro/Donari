<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>

<!-- =================================== -->
<!-- 		  COMPATIBILITY 			 -->
<!-- =================================== -->

<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- =================================== -->
<!-- 			  TITLE 			 	 -->
<!-- =================================== -->

<title>Donari</title>

<!-- =================================== -->
<!-- 			MORDERNIZR 			 	 -->
<!-- =================================== -->

<script src="resources/assets/js/modernizr.js"></script>

<!-- =================================== -->
<!-- 			  STYLES 				 -->
<!-- =================================== -->

<!-- BOOTSTRAP MIN -->
<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" />

<!-- MEDIA ELEMENT -->
<link href="resources/assets/css/mediaelementplayer.min.css"
	rel="stylesheet" />

<!-- MAGNIFIC POPUP CSS -->
<link href="resources/assets/css/magnific-popup.css" rel="stylesheet" />

<!-- THEME CSS -->
<link href="resources/assets/css/style.css" rel="stylesheet" />

<!-- GOOGLE FONTS -->
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300'
	rel='stylesheet' type='text/css'>

<!-- FONT AWESOME -->
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
	rel="stylesheet" />

<!-- =================================== -->
<!-- 		 	THEME COLOR 			 -->
<!-- =================================== -->

<meta name="theme-color" content="#fff" />

<!-- =================================== -->
<!-- 			CONDITIONAL 			 -->
<!-- =================================== -->

<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

<!-- =================================== -->
<!-- 			 VIEWPORT 				 -->
<!-- =================================== -->

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" />

<!-- =================================== -->
<!-- 			  AUTHOR 				 -->
<!-- =================================== -->

<meta name="author" content="reidark" />
<meta name="reply-to" content="support@reidark.com.br" />
<meta name="DC.publisher" content="reidark" />
<meta name="generator" content="Brackets" />

<!-- =================================== -->
<!-- 			 CONTENT 				 -->
<!-- =================================== -->

<meta name="keywords"
	content="soundcast, html5 template, creative template, themeforest, podcast template, podcast theme" />
<meta name="description"
	content="A clean, lightweight and responsive podcast theme." />

<!-- =================================== -->
<!-- 			 ROBOTS 				 -->
<!-- =================================== -->

<meta name="GOOGLEBOT" content="INDEX, FOLLOW" />
<meta name="robots" content="index, follow">
<meta name="msnbot" content="NOODP" />

<!-- =================================== -->
<!-- 			 FACEBOOK 				 -->
<!-- =================================== -->

<meta property="og:locale" content="en" />
<meta property="og:type" content="website" />
<meta property="og:title" content="Soundcast" />
<meta property="og:description" content="Podcast Responsive Theme" />
<meta property="og:url" content="http://www.reidark.com.br/soundcast" />
<meta property="og:site_name" content="Soundcast" />
<meta property="og:image"
	content="http://www.reidark.com.br/soundcast/assets/img/facebook-og.jpg" />

<!-- =================================== -->
<!-- 			  TWITTER 				 -->
<!-- =================================== -->

<meta name="twitter:card" content="summary" />
<meta name="twitter:site" content="http://www.reidark.com.br/soundcast" />
<meta name="twitter:creator" content="@reidarking" />
<meta name="twitter:title" content="Soundcast" />
<meta name="twitter:description" content="Podcast Responsive Theme" />
<meta name="twitter:domain" content="reidark" />
<meta name="twitter:image"
	content="http://www.reidark.com.br/soundcast/assets/img/twitter-og.jpg" />

<!-- =================================== -->
<!-- 			  FAVICON 				 -->
<!-- =================================== -->

<link rel="icon" href="resources/assets/img/favicon.png" />
<link rel="shortcut icon" href="resources/assets/img/favicon.png" />

<script type="text/javascript">
	function basicVideo() {
		location.href="basicVideo";	
	}

	function template(){
		
		location.href="template";
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

	<!-- ===== MAIN ===== -->
	<main class="main"> 
	<!-- ===== PAGE HEADER ===== --> 
	<header class="page-header" id="vpHeader" >
		<div class="page-header-inner">
			<div class="container" style="position: relative;">

				<!-- ===== PAGE HEADER CONTENT 페이지 타이틀 ===== -->
				<div class="page-header-content text-center" style="position: relative;">
					<h2 style="margin-top: 20px;">SELECT MODE</h2>
				</div>
			</div>
		</div>
	</header> 
		<!-- ===== SECTION TITLE ===== -->
		<!-- <div style="margin-left: 330px; margin-top: 100px;"> -->
			<div class="mode" style="display: inline-block; margin-left: 80px;; margin-right: auto; width: 45%;">
				<h2 class="title-default" style="text-align: center; margin-bottom: 25px; ">Basic</h2>
				<a href="mrv"><figure><img src="resources/assets/img/basic.jpg" alt="Music React Video" title="Music React Video" class="mode"/></figure></a>
				
			</div>
			<div class="mode" style="display: inline-block; margin-left: auto; margin-right: auto; width: 45%;">
				<h2 class="title-default" style="text-align: center; margin-bottom: 25px;">Template</h2>
					<a href="selectTemplate"><figure><img src="resources/assets/img/template.jpg" alt="template" title="template" class="mode"/></figure></a>
				
			</div>
		<!-- </div> -->
	</div>
	</main>

	<!-- =================================== -->
	<!-- 			  SCRIPTS 				 -->
	<!-- =================================== -->

	<!-- JQUERY -->
	<script src="resources/assets/js/jquery-1.11.min.js"></script>

	<!-- BOOTSTRAP JS -->
	<script src="resources/assets/js/bootstrap.min.js"></script>

	<!-- MEDIA ELEMENT -->
	<script src="resources/assets/js/mediaelement-and-player.min.js"></script>

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