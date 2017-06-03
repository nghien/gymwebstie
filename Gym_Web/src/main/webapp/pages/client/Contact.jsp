<!doctype html>
<html class="no-js" lang="">
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!-- Mirrored from radiustheme.com/demo/html/gymedge/multi-page/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 May 2017 14:10:30 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Gymedge | Contact</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

              	<jsp:include page="/partial/client/css_client.jsp"></jsp:include> <!-- include css -->  
    </head>
    <body>
        <!-- Start wrapper -->
        <div class="wrapper">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
            <jsp:include page="/partial/client/header-top.jsp"></jsp:include> <!-- include  header-top -->  
            <!-- Start Contact page area -->
            <div class="contact-us-area padding-top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 col-md-5 col-sm-5">
                            <form class="form-horizontal contact-form" id='contact-form' role="form">
                            <fieldset>

                            <!-- Form Name -->
                            <legend>Contact  Form</legend>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="control-label pull-left" for="textinput1"><i class="fa fa-user" aria-hidden="true"></i></label> 
                                <div class="media-body">
                                    <input id="form-name" name="textinput" placeholder="Name" class="form-control input-md" type="text" data-error="Name field is required" required>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="control-label pull-left" for="textinput2"><i class="fa fa-envelope-o" aria-hidden="true"></i></label>  
                                <div class="media-body">
                                    <input id="form-email" name="textinput" placeholder="E-mail" class="form-control input-md" type="text" data-error="E-mail field is required" required>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="control-label pull-left" for="textinput3"><i class="fa fa-phone" aria-hidden="true"></i></label>
                                <div class="media-body">
                                    <input id="form-phone" name="textinput" placeholder="Phone" class="form-control input-md" type="text" data-error="Phone field is required" required>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <!-- Textarea -->
                            <div class="form-group">
                                <label class="control-label arealebel pull-left" for="textarea"><i class="fa fa-envelope" aria-hidden="true"></i></label>
                                <div class="media-body">                     
                                    <textarea class="textarea form-control" id="form-message" name="textarea" placeholder="Message" data-error="Message field is required" required></textarea>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <!-- Button -->
                            <div class="form-group send-button">
                              <div class="media-body">
                                <button type="submit" class="btn-read-more-fill btn-send">Send Message</button>
                              </div>
                            </div>
                            <div class='form-response'></div>

                            </fieldset>
                            </form>
                        </div>

                        <div class="col-lg-7 col-md-7 col-sm-7">
                            <div id="googleMap" style="width:100%;height:485px;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Contact page area -->
             <jsp:include page="/partial/client/footer.jsp"></jsp:include> <!-- include footer page -->   
        </div>
        <!-- End wrapper -->
        <a href="#" class="scrollToTop"></a>


        <!-- jquery
        ============================================ -->        
        <script src="/SpringRestHibernateExample/resources/client/js/vendor/jquery-1.11.3.min.js"></script>

        <!-- bootstrap JS
        ============================================ -->        
        <script src="/SpringRestHibernateExample/resources/client/js/bootstrap.min.js"></script>
        <script src="/SpringRestHibernateExample/resources/client/js/bootstrap-tabcollapse.js"></script> 

        <!-- meanmenu JS
        ============================================ -->        
        <script src="/SpringRestHibernateExample/resources/client/js/jquery.meanmenu.min.js"></script>

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

        <!-- Google Map js -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBgREM8KO8hjfbOC0R_btBhQsEQsnpzFGQ"></script>

        <!-- Validator js -->
        <script src="/SpringRestHibernateExample/resources/client/js/validator.min.js" type="text/javascript"></script>

        <!-- main JS
        ============================================ -->
        <script src="/SpringRestHibernateExample/resources/client/js/main.js"></script>

        

    </body>

<!-- Mirrored from radiustheme.com/demo/html/gymedge/multi-page/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 May 2017 14:10:32 GMT -->
</html>
