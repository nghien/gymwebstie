<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.springframework.web.client.RestTemplate" %>
<%@ page import="UIT.SE325H22.Group2.model.Nutrition" %> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<%
String id = request.getParameter("Id");
RestTemplate restTemplate = new RestTemplate();
Nutrition nutrition = restTemplate.getForObject("http://localhost:8080/SpringRestHibernateExample/getNutrition/{id}", Nutrition.class, id) ;
if(nutrition == null)
{
	response.sendRedirect("404.jsp");
	return;
}
	
%>
<!doctype html>
<html class="no-js" lang="">
    
<!-- Mirrored from radiustheme.com/demo/html/gymedge/multi-page/single-classes.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 May 2017 14:09:56 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
		<style>
			.classes-img > a > img {
				width: 272px ;
				height : 185px
			}
		</style>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title><%= nutrition.getNutritionName()%></title>
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
            <!-- Start details classes area -->
            <div class="classes-detail-area padding-top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9 col-md-9 col-sm-9">
                            <div class="single-class-detail">
                                <div class="class-content">
                                    <div class="detail-img">
                                       <%= nutrition.getNutritionLinkImage() %>
                                    </div>
                                    <div class="class-heading">
                                        <h3><%= nutrition.getNutritionName() %></h3>
                                        <ul>
                                            <li><i class="fa fa-clock-o" aria-hidden="true"></i>Class Time : 10.00 AM - 11.00 AM</li>
                                            <li><i class="fa fa-user" aria-hidden="true"></i>Trainer : <a href="#">DUYNK6</a></li>
                                        </ul>
                                    </div>
                                    <div class="content">
                                        <p><%= nutrition.getNutritionInfo()%></p>
                                    </div>
                                   
                                </div>
                            </div>
                            <!-- Start Related classes -->
                            <div class="related-classes-area nav-on-hover padding-space">
                                <div class="section-title">
                                    <h2>NUTRITION</h2>
                                </div>
                                <div class="gym-carousel nav-control-top zoom-gallery"
                                    data-loop="true"
                                    data-items="3"
                                    data-margin="15"
                                    data-autoplay="false"
                                    data-autoplay-timeout="10000"
                                    data-smart-speed="2000"
                                    data-dots="false"
                                    data-nav="true"
                                    data-nav-speed="false"
                                    data-r-x-small="1"
                                    data-r-x-small-nav="true"
                                    data-r-x-small-dots="false"
                                    data-r-x-medium="1"
                                    data-r-x-medium-nav="true"
                                    data-r-x-medium-dots="false"
                                    data-r-small="2"
                                    data-r-small-nav="true"
                                    data-r-small-dots="false"
                                    data-r-medium="3"
                                    data-r-medium-nav="true"
                                    data-r-medium-dots="false"
                                    data-r-large="3"
                                    data-r-large-nav="true"
                                    data-r-large-dots="false">
                                    <%

                                    Nutrition[] listNutrition = restTemplate.getForEntity("http://localhost:8080/SpringRestHibernateExample/getAllNutritions", Nutrition[].class).getBody() ;	
                                    request.setAttribute("listNutrition", listNutrition); 
                                    %>
                                    <c:forEach items="${listNutrition}" var="nutrition"  >
										<div class="single-related-classes">
	                                        <div class="classes-img">
	                                            <a href="#">
	                                                ${nutrition.getNutritionLinkImage()}
	                                            </a>
	                                            <div class="classes-overlay">
	                                                <a class="elv-zoom" href="/SpringRestHibernateExample/pages/client/NutritionDetail.jsp?Id=${nutrition.getId()}" title="Classic Yoga"><i class="fa fa-search" aria-hidden="true"></i></a>
	                                            </div>
	                                        </div>
	                                        <div class="classes-title">
	                                            <h3 style="height: 50px;padding: 0 10px;"><a style="font-size: 15px"  href="/SpringRestHibernateExample/pages/client/NutritionDetail.jsp?Id=${nutrition.getId()}">${nutrition.getNutritionName()}</a></h3>
	                                        </div>
	                                    </div>
									</c:forEach>  
                                    
                                    
                                </div>
                            </div>
                            <!-- End Related classes -->
                        </div>
                       <jsp:include page="/partial/client/right-slidebar.jsp"></jsp:include> <!-- include slide bar page --> 
                    </div>
                </div>
            </div>
            <!-- End details classes area -->
            <jsp:include page="/partial/client/footer.jsp"></jsp:include> <!-- include footer page -->   
        </div>
        <!-- End wrapper -->
        <a href="#" class="scrollToTop"></a>


        <jsp:include page="/partial/client/js_client.jsp"></jsp:include> <!-- include js -->  
    </body>

<!-- Mirrored from radiustheme.com/demo/html/gymedge/multi-page/single-classes.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 May 2017 14:10:06 GMT -->
</html>
