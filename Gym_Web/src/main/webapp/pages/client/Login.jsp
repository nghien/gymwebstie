<!doctype html>
<html class="no-js" lang="">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Mirrored from radiustheme.com/demo/html/gymedge/multi-page/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 May 2017 14:10:30 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Gymedge | Đăng nhập</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="/partial/client/css_client.jsp"></jsp:include>
<link rel="stylesheet" href="/SpringRestHibernateExample/resources/css/style.css">

<!-- include css -->
</head>
<body>
	<!-- Start wrapper -->
	<div class="wrapper">
		<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
		<jsp:include page="/partial/client/header-top.jsp"></jsp:include>
		<!-- include  header-top -->
		<!-- Start Contact page area -->
		<div class="contact-us-area padding-top">
			<div class="container">
				<div class="row">

					<form class="form-horizontal contact-form" id='form' role="form">
						<fieldset>

							<!-- Form Name -->

 							<div class="login-title-group">
                            	<legend class="login-title">Đăng nhập</legend>
                            </div> 
 							<div class="help-block with-errors" id="error"></div>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="control-label pull-left" for="textinput1"><i class="fa fa-user" aria-hidden="true"></i></label> 
                                <div class="media-body">
                                    <input id="username" name="username" placeholder="Name" class="form-control input-md" type="text" data-error="Name field is required" required>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="control-label pull-left" for="textinput2"><i class="fa fa-key" aria-hidden="true"></i></label>  
                                <div class="media-body">
                                    <input id="password" name="password" placeholder="Password" class="form-control input-md" type="password" data-error="E-mail field is required" required>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            

                            <!-- Button -->
                            <div class="form-group send-button">
                              <div class="media-body">
                              
                
                                <button type="submit" id="add" class="btn-read-more-fill btn-send" name="POST">Đăng nhập</button>
                              </div>
                            </div>
                            <div class='form-response'></div>

                            </fieldset>
                            </form>
                

                  
                    </div>
                </div>
            </div>
            <!-- End Contact page area -->
             <jsp:include page="/partial/client/footer.jsp"></jsp:include> <!-- include footer page -->   
        </div>
        <!-- End wrapper -->
        <a href="#" class="scrollToTop"></a>


      
      
        
        <!-- Owl Cauosel JS 
        ============================================ --> 
        <script src="/SpringRestHibernateExample/resources/client/vendor/OwlCarousel/owl.carousel.min.js" type="text/javascript"></script>

        <!-- Nivo slider js
        ============================================ -->        
        <script src="/SpringRestHibernateExample/resources/client/css/custom-slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
        <script src="/SpringRestHibernateExample/resources/client/css/custom-slider/home.js" type="text/javascript"></script>

        <!-- plugins JS
        ============================================ -->
        <script src="/SpringRestHibernateExample/resources/client/js/plugins.js"></script>

        <!-- Wow JS
        ============================================ -->
        <script src="/SpringRestHibernateExample/resources/client/js/wow.min.js"></script>

        <!-- Counter Up JS
        ============================================ -->
        <script src="/SpringRestHibernateExample/resources/client/js/waypoints.min.js"></script>
        <script src="/SpringRestHibernateExample/resources/client/js/jquery.counterup.min.js"></script>

        <!-- Zoom JS
        ============================================ -->
        <script src="/SpringRestHibernateExample/resources/client/js/jquery.zoom.js"></script>

        <!-- Isotope JS
        ============================================ -->
        <script src="/SpringRestHibernateExample/resources/client/js/isotope.pkgd.js"></script>


        <!-- Validator js -->
        <script src="/SpringRestHibernateExample/resources/client/js/validator.min.js" type="text/javascript"></script>

	<jsp:include page="/partial/admin/js_lib.jsp"></jsp:include>
        <script src="/SpringRestHibernateExample/resources/client/js/controller/login.js"></script>
	<!-- <script src="/SpringRestHibernateExample/resources/client/js/controller/cookie.js"></script> -->
    </body>

<!-- Mirrored from radiustheme.com/demo/html/gymedge/multi-page/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 May 2017 14:10:32 GMT -->
</html>
		
