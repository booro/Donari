<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<!-- =================================== -->
<!-- 	        	  MOVIE 			 -->
<!-- =================================== -->
	
<head>
	<style type="text/css" >
	.wrap-loading{ /*화면 전체를 어둡게 합니다.*/
	    position: fixed;
	    left:0;
	    right:0;
	    top:0;
	    bottom:0;
	    background: rgba(0,0,0,0.2); /*not in ie */
	    filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#20000000', endColorstr='#20000000');    /* ie */
	}
	    .wrap-loading div{ /*로딩 이미지*/
	        position: fixed;
	        top:50%;
	        left:50%;
	        margin-left: -21px;
	        margin-top: -21px;
	    }
	    .display-none{ /*감추기*/
	        display:none;
	    }
	   /*  .forslider{
	    	padding-left: inherit;
	    } */
	    
	    .height{
	    	padding-top: 50px;
    		max-height: 500px;
    		margin-left: 80px;
	    }
	    input {
	    max-height: 50px;
	    }
	    
	</style>
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
<!-- 			  FAVICON 				 -->
<!-- =================================== -->

<link rel="icon" href="resources/assets/img/favicon.png" />
<link rel="shortcut icon" href="resources/assets/img/favicon.png" />

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
					<h2 style="margin-top: 20px;">Travel</h2>
				</div>
			</div>
		</div>
	</header> 
	<div class="template-container">
			<form action="changeImg" method="post" enctype="multipart/form-data">
		<div class="templates" id="imgBoard">
		</div>
			</form>
			
				<div class="template-nav">
				</div>
				<div style="width: 100%; display: inline-block;">
				<div style="display: block; position: relative;">
						<div class="sliderbtn slick-prev" style=" position: absolute; left: 0;"><p style="text-align: left; vertical-align: middel;"><i class="fa fa-angle-double-left fa-3x"></i></p></div>
						<div class="sliderbtn slick-next" style=" position: absolute; right: 0;"><p style="text-align: right; vertical-align: middle;"><i class="fa fa-angle-double-right fa-3x"></i></p></div>
						
					</div>
			</div>
	</div>
	
	</main>

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
                     <li><a href="#">@BooRo</a> <span>Main Engineer</span></li>
                     <li><a href="#">@SeungHyeon</a> <span>Sub Engineer</span></li>
                     <li><a href="#">@EunJi</a> <span>Sub Engineer</span></li>
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
	
	<!-- SLICK -->
  	<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script src="resources/assets/slick/slick.js"></script>
	
	
	<!-- IMAGE CHANGE SCRIPT -->
	<script type="text/javascript">

	var clicked;
	
	function gogo(mvimg){
		clicked=mvimg;
		document.getElementById('reimg').click();
	}
	
	$(document).ready(function(){
		
		setPics();
		
		var cnt = ${imgCount};
		sliderInit(cnt);
	/* 	if (cnt => 5) {
			cnt=5;
		} */
		
		//$('.slick-slider').addClass('forslider');
		//$('.slick-list').addClass('height');
		
		$('*[draggable!=true]','.slick-list').unbind('dragstart');
		
		$("#reimg").change(function () {
			var form = $("#reimg");
			var formData = new FormData(form);
			formData.append('files', $('input[type=file]')[0].files[0]);
			formData.append('index', clicked);
			formData.append('cmd', "movie");
			
			$.ajax({
		        // Your server script to process the upload
		        url: 'reupload',
		        type: 'POST',

		        // Form data
		        data: formData,

		        // Tell jQuery not to process data or worry about content-type
		        // You *must* include these options!
		        cache: false,
		        contentType: false,
		        processData: false,

		        // Custom XMLHttpRequest
		        xhr: function() {
		            var myXhr = $.ajaxSettings.xhr();
		            if (myXhr.upload) {
		                // For handling the progress of the upload
		                myXhr.upload.addEventListener('progress', function(e) {
		                    if (e.lengthComputable) {
		                        $('progress').attr({
		                            value: e.loaded,
		                            max: e.total,
		                        });
		                    }
		                } , false);
		            }
		            return myXhr;
		        },
		        success : function(result){
					//document.getElementById(""+clicked).src=result+ new Date().getTime();
					$("#"+clicked).attr('src', '');
		        	d = new Date();
		        	$("#"+clicked).attr("src", result+"?"+d.getTime());
		        	
		        	var res = clicked.replace("travel", "");
		        	
		        	$("#nav"+res).attr('src', '');
		        	$("#nav"+res).attr("src", result+"?"+d.getTime()); 
		        	
		        	//setPics();
		        	/* $('.templates').slick("unslick");
		        	$('.template-nav').slick("unslick");
		        	sliderInit(cnt); */
		        	
				}
		    });
		});
		
	  });
	
	function sliderInit(cnt){
		$('.templates').slick({
			arrows: true,
			infinite: false,
			slidesToShow: 1,
			slidesToScroll: 1,
			draggable: false,
			asNavFor: '.template-nav',
			prevArrow: '.slick-prev', //prev 버튼
		    nextArrow: '.slick-next' //netx 버튼
		});
		$('.template-nav').slick({
			accessibility: false,
			infinite:false,
			slidesToShow: cnt, //작은이미지 몇개 보여줄것인지..
	        //slidesToScroll: 1,
	        asNavFor: '.templates',
	        draggable: false,
	        centerMode: true,
	        focusOnSelect: true,
	        arrows: false
	       });
	};
	
	function setPics(){
		var div = document.getElementById('imgBoard');
		
		
		var imgs = new Array();
		
		<c:forEach varStatus="s" items="${botari}" var="pic">
			var json = new Object();
			json.pic = "${pic}";
			imgs.push(json);
		</c:forEach>

		var html = "";
		var navHtml = "";
		
		html += '<input class="imgsection" id="reimg" name="files" type="file" style="display: none;">';
		
		for(var i = 0 ; i<imgs.length ; i++){
			html += '<div style="display: block;">';
			html += '<img src='+JSON.stringify(imgs[i].pic)+' id="travel'+i+'" class="realimg" onclick="gogo(\'travel'+i+'\');" style="margin-left:450px; text-align: center; ">';
			html += '<input type="hidden" name="s" value="'+i+'">';
			
			if(i == 2 || i == 8 || i == 9 || i == 10 || i == 11 || i == 12 || i == 13 || i == 19){
				html += '<input type=text id="content'+i+'" value="insert subtitles'+i+'" onchange="eedit(this.value, '+i+');" contentEditable="true" style="background-color: transparent; margin-left:200px; font-size: 40pt;"/>';
			}
			
			if( i == (imgs.length - 1)){		
				html += '<img onclick="toMakeIt();" src="resources/assets/img/making.png" style="margin-left:200px; width: 50px; ">';
			}
			
			html += '</div>';
			navHtml += '<img src='+JSON.stringify(imgs[i].pic)+' id="nav'+i+'" style="width: 100px;" />';
		}
		
		//alert(html);
		
		div.innerHTML = html;
		$(".template-nav").html(navHtml);
	}

	
	function eedit(val, id){
		
		var editables = document.querySelector('#content'+id);
		
		var form = $("#reimg");
		var formData = new FormData(form);
		formData.append('subtitles', val);
		formData.append('index', id);
	    
	      $.ajax({
		        // Your server script to process the upload
		        url: 'subs',
		        type: 'POST',

		        // Form data
		        data: formData,

		        // Tell jQuery not to process data or worry about content-type
		        // You *must* include these options!
		        cache: false,
		        contentType: false,
		        processData: false,

		        // Custom XMLHttpRequest
		        xhr: function() {
		            var myXhr = $.ajaxSettings.xhr();
		            if (myXhr.upload) {
		                // For handling the progress of the upload
		                myXhr.upload.addEventListener('progress', function(e) {
		                    if (e.lengthComputable) {
		                        $('progress').attr({
		                            value: e.loaded,
		                            max: e.total,
		                        });
		                    }
		                } , false);
		            }
		            return myXhr;
		        },
		        success : function(result){
				console.log("subs : "+id+" : "+val+" : "+result);
		        }
		    });
	}
	
	function toMakeIt(){
		$.ajax({
			url: 'makingTravel',
	        type: 'GET',
	        data: {
	        	music : 'travelmusic.mp3'
	        },
			beforeSend:function(){
				$('.wrap-loading').removeClass('display-none');
		    },
		    complete:function(){
		    	$('.wrap-loading').addClass('display-none');
		    },
		    error:function(e){
		     	alert('fail');
		    },
 			success: function(result){
 				location.href="video?completeName="+result+"&cmd=travel";
			},
		});
		
	}

	var videoPath = "";

 var initDestroyTimeOutPace = function() {
	    var counter = 0;

	    var refreshIntervalId = setInterval( function(){
	        var progress; 

	        if( typeof $( '.pace-progress' ).attr( 'data-progress-text' ) !== 'undefined' ) {
	            progress = Number( $( '.pace-progress' ).attr( 'data-progress-text' ).replace("%" ,'') );
	        }

	        if( progress === 99 ) {
	            counter++;
	        }

	        if( counter > 50 ) {
	            clearInterval(refreshIntervalId);
	            Pace.stop();
	        }
	    }, 100);
	}
	
</script>
</body>

</html>