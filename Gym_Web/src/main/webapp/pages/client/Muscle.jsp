<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.springframework.web.client.RestTemplate" %>
<%@ page import="UIT.SE325H22.Group2.model.MuscleType" %>
<%@ page import="UIT.SE325H22.Group2.model.ExerciseDetail" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!doctype html>
<html class="no-js" lang="">
    
<!-- Mirrored from radiustheme.com/demo/html/gymedge/multi-page/classes.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 May 2017 14:09:47 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Gymedge</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
       	<jsp:include page="/partial/client/css_client.jsp"></jsp:include> <!-- include css -->  
        <style>
        	.classes-img > a > img {
        		width: 300px ;
        		height: 300px
        	}
        </style>
    </head>
    <body>
        <!-- Start wrapper -->
        <div class="wrapper">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
     
           	<jsp:include page="/partial/client/header-top.jsp"></jsp:include> <!-- include  header-top -->  
            
            <!-- Start Classes page area -->
    	  
            <div class="our-classes-area padding-top">
                <div class="container">
                    <div class="row">
                        <!-- Gallery Section Area Start Here -->
                            <div class="gallery-area">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12">
                                            <div class="isotop-classes-tab">                            
                                                <a href="#" data-filter="*" class="current">All</a>
                                               
                                              <%
								                    RestTemplate restTemplate = new RestTemplate();
								       				MuscleType[] listMuscleType = restTemplate.getForEntity("http://localhost:8080/SpringRestHibernateExample/getAllMuscleTypes", MuscleType[].class).getBody();
								       				request.setAttribute("listMuscleType", listMuscleType);
								       							
							         			%>
								         		<c:forEach items="${listMuscleType}" var="muscleType"  >
												     <a href="#" data-filter=".${muscleType.getId()}">${muscleType.getMuscleTypeName()}</a>
												</c:forEach>  
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="portfolioContainer zoom-gallery">               
                                <%
                                	ExerciseDetail[] listExerciseDetail = restTemplate.getForEntity("http://localhost:8080/SpringRestHibernateExample/getAllExerciseDetails", ExerciseDetail[].class).getBody();
                                	request.setAttribute("listExerciseDetail", listExerciseDetail); 
         						%>
                                   
				         		   
                                <c:forEach items="${listExerciseDetail}" var="exerciseDetail"  >
									 <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 karate ${exerciseDetail.getMuscleTypeId()}">
                                        <div class="single-classes-area">
                                            <div class="classes-img">
                                                <a href="#">
                                                    ${exerciseDetail.getExerciseDetailLinkImage()}
                                                </a>
                                                <div class="classes-overlay">
                                                    <a class="elv-zoom" href="img/classes/yoga.jpg" title="Classic Yoga"><i class="fa fa-search" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                            <div class="classes-title">
                                                <h3 style="height: 50px;padding: 0 10px;"><a style="font-size: 15px" href="/SpringRestHibernateExample/pages/client/Exercise_detail.jsp?Id=${exerciseDetail.getId()}">${exerciseDetail.getExerciseDetailName()}</a></h3>
                                         
                                            </div>
                                        </div>
                                    </div>
								</c:forEach>     
                                  
                                  
                                    
                                   
                                   
                                                       
                                </div>
                            </div>
                        <!-- Gallery Section Area End Here -->
                    </div>
                </div>
            </div>
            <!-- End Classes page area -->
   
            <jsp:include page="/partial/client/footer.jsp"></jsp:include> <!-- include footer page -->   

            <!-- End copyright area -->
        </div>
        <!-- End wrapper -->
        <a href="#" class="scrollToTop"></a>

       	<jsp:include page="/partial/client/js_client.jsp"></jsp:include> <!-- include js -->  
    </body>

<!-- Mirrored from radiustheme.com/demo/html/gymedge/multi-page/classes.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 May 2017 14:09:56 GMT -->
</html>
