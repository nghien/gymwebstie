<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.springframework.web.client.RestTemplate" %>
<%@ page import="UIT.SE325H22.Group2.model.ExerciseDetail" %>
<%@ page import="UIT.SE325H22.Group2.model.Nutrition" %>
<%@ page import="UIT.SE325H22.Group2.model.Trainers" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!doctype html>
<html class="no-js" lang="">
    
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>GymEdge</title>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<jsp:include page="/partial/client/css_client.jsp"></jsp:include> <!-- include css -->   
        <style>
        .image-exercise > .img-responsive {
        	width : 273px;
        	height: 273px;
        }
        .single-image > .img-responsive {
        	width: 360px;
        	height : 230px
        }
        </style>
    </head>
    <body>

	<c:out value="${requestScope.id }" ></c:out>
        <div class="wrapper">
            <!-- Preloader Start Here -->
            <div id="preloader"></div>
            <!-- Preloader End Here -->
            <!-- Start Header area -->
            <jsp:include page="/partial/client/header-top.jsp"></jsp:include>
            <!-- End Header area -->
            <!-- Main Banner area -->
            <div class="main-banner slider-top-space-header4">
                <img src="/SpringRestHibernateExample/resources/client/img/slides/4-1.jpg" alt="image" class="img-responsive"/>
                <div class="main-banner-inner">
                 
                    <h1><span></span> GymWeb</h1>
                    <p>Website hướng dẫn tập gym dành cho người việt</p>
                    <ul class="main-banner-link">
                        <li>
                            <a class="facebook" href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        </li>
                        <li>
                            <a class="twitter" href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                        </li>
               
                    </ul>
                    <div class="button"><a href="#" class="btn custom-button" data-title="Join With Us">Đến với chúng tôi</a></div>
                </div>
            </div>
            <!-- Main Banner area-->
          
            <!-- Start feature classes area -->
            <div class="feature-classes-area3 nav-on-hover bg-secondary">
                <div class="container">
                    <h2 class="section-title-default title-bar-high">Danh sách bài tập nổi bật</h2>
<!--                     <p class="sub-title-default">Danh sách các bài tập phổ biến</p> -->
                </div>
                <div class="container">
                    <div class="gym-carousel nav-control-middle"
                        data-loop="true"
                        data-items="4"
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
                        data-r-x-medium="2"
                        data-r-x-medium-nav="true"
                        data-r-x-medium-dots="false"
                        data-r-small="2"
                        data-r-small-nav="true"
                        data-r-small-dots="false"
                        data-r-medium="3"
                        data-r-medium-nav="true"
                        data-r-medium-dots="false"
                        data-r-large="4"
                        data-r-large-nav="true"
                        data-r-large-dots="false">
                        <%
                        	RestTemplate restTemplate = new RestTemplate();
                            ExerciseDetail[] listExerciseDetail = restTemplate.getForEntity("http://localhost:8080/SpringRestHibernateExample/getAllExerciseDetails", ExerciseDetail[].class).getBody();
                            request.setAttribute("listExerciseDetail", listExerciseDetail);
                           			
         				%>
                      
				          <c:forEach items="${listExerciseDetail}" var="exerciseDetail"  >
								<div class="single-product-classes3">
			                            <div class="single-product hvr-bounce-to-bottom">
			                                <a href="#" class="image-exercise">${exerciseDetail.getExerciseDetailLinkImage()}</a>
			                                <div class="overlay-btn">
			                                    <a href="/SpringRestHibernateExample/pages/client/Exercise_detail.jsp?Id=${exerciseDetail.getId()}" class="btn-details">Details</a>
			                                </div>
			                            </div>
			                            <div class="product-content">
			                                <h3><a href="/SpringRestHibernateExample/pages/client/Exercise_detail.jsp?Id=${exerciseDetail.getId()}">${exerciseDetail.getExerciseDetailName()}</a></h3>
			                             
			                            </div>
                       			 </div>
							</c:forEach>         
                    	
                       
                        
                    </div>
                </div>
            </div>
            <!-- End feature product area -->
              
     
           
            <!-- Start latest news area -->
            <div class="latest-news-area bg-secondary">
                <div class="container">      
                    <h2 class="section-title-default title-bar-high">Bài viết về dinh dưỡng</h2>
                    <p class="sub-title-default">Đây là các bài viết về dinh dưỡng, nó sẽ giúp bạn có được thân hình khỏe mạnh, cân đối</p>
                </div>
                <div class="container">
                    <div class="row">
                        <%
                       
                        	Nutrition[] listNutrition = restTemplate.getForEntity("http://localhost:8080/SpringRestHibernateExample/getAllNutritions", Nutrition[].class).getBody();
                        	Nutrition[] listNutrition2 = new Nutrition[3] ;
                        	for(int i = 0 ; i <  3 ; i ++)
                        	{
                        		listNutrition2[i] = listNutrition[i];
                        	}
                        	request.setAttribute("listNutrition", listNutrition2);
                            
                            Nutrition nutrition = new Nutrition();
                           nutrition.getNutritionInfo();
                           			
         				%>
                      	 <c:forEach items="${listNutrition}" var="nutrition"  >
							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
	                            <div class="single-latest-news2">
	                                <div class="single-news">
	                                    <div class="single-image hvr-shutter-out-horizontal">
	                                        ${nutrition.getNutritionLinkImage()}
	                                        <a href="/SpringRestHibernateExample/pages/client/NutritionDetail.jsp?Id=${nutrition.getId()}"><i class="fa fa-link" aria-hidden="true"></i></a>
	                                    </div>
	                                    
	                                </div>
	                                <div class="news-content">
	                                    <h3><a href="/SpringRestHibernateExample/pages/client/NutritionDetail.jsp?Id=${nutrition.getId()}">${nutrition.getNutritionName()}</a></h3>
	                                   
	                                </div>
                            	</div>
                       		 </div>
							</c:forEach> 
                        
                    </div>
                </div>
            </div>
            <!-- End latest news area -->     
            
            
                   <!-- Why Choose 2 Area Start -->
            <div class="why-choose2-area bg-secondary">
                <div class="side-text"><span><span>G</span>ym</span> Edge</div>
                <div class="container">
                    <div class="why-choose2-wrapper">
                        <div class="why-choose-content">
                            <h2>Tại sao chọn chúng tôi?</h2>
                            <p>Website và ứng dụng sẽ cung cấp cho bạn các kiến thức về thể hình, chế độ dinh dưỡng, lịch tập, giáo án tập... và giới thiệu đến bạn các huấn luyện viên hàng đầu</p>
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">
                                            <a aria-expanded="false" class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                                <span>01.</span> Các bài tập hướng dẫn chi tiết cụ thể
                                            </a>
                                        </h3>
                                    </div>
                                    <div aria-expanded="false" id="collapseOne" role="tabpanel" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Website và ứng dụng sẽ cung cấp cho bạn các kiến thức về thể hình, chế độ dinh dưỡng, lịch tập, giáo án tập rất chi tiết và cụ thể
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">
                                            <a aria-expanded="false" class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                                <span>02.</span> Giới thiệu huấn luyện viên cho bạn
                                            </a>
                                        </h3>
                                    </div>
                                    <div aria-expanded="false" id="collapseTwo" role="tabpanel" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            Bạn có thể đi đến trung tâm của chúng tôi theo địa chỉ 6 Linh Trung - Thủ Đức
                                        </div>
                                    </div>
                                </div>
                               
                            </div>
                        </div> 
                        <div class="why-choose-img">
                            <img src="/SpringRestHibernateExample/resources/client/img/being-builder.png" alt="being-builder">
                        </div>
                    </div>
                </div>
            </div>
            <!-- Why Choose 2 Area End Here -->              
            
     
     
            <!-- Start Expert trainers area -->
            <div class="expert-trainer-area2">
                <div class="container">
                    <h2 class="section-title-default title-bar-high">Đội ngủ huấn luyện viên</h2>
                    <p class="sub-title-default"></p>
                </div> 
                <div class="container">
                    <div class="row">
                        <%
      
                            Trainers[] listTrainers = restTemplate.getForEntity("http://localhost:8080/SpringRestHibernateExample/getAllTrainers", Trainers[].class).getBody();
                            request.setAttribute("listTrainers", listTrainers);
                            Trainers trainer = new Trainers();
                            trainer.getPosition();
         				%>
         				 <c:forEach items="${listTrainers}" var="trainer"  >
							              <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                            <div class="trainer-box2">
                                <div class="trainer-img-holder">
                                    ${trainer.getTrainers_Linkimage()}
                                    <ul class="trainer-social">
                                        <li><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                    </ul>                                
                                </div>                                
                                <div class="trainer-content-holder">
                                    <h3><a href="#">${trainer.getTrainers_name()}</a></h3>
                                    <p>${trainer.getPosition()}</p>                                              
                                </div>
                            </div>
                        </div>
                       
							</c:forEach> 
          
                        
                    </div>
                </div>
            </div>
            <!-- End Expert tainers area --> 
                   
            <jsp:include page="/partial/client/footer.jsp"></jsp:include> <!-- include footer page -->            
            <!-- End copyright area -->
        </div>
        <!-- End wrapper -->
        <a href="#" class="scrollToTop"></a>

       
       	<jsp:include page="/partial/client/js_client.jsp"></jsp:include> <!-- include js -->  

    </body>

<!-- Mirrored from radiustheme.com/demo/html/gymedge/multi-page/index4.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 May 2017 14:07:09 GMT -->
</html>
