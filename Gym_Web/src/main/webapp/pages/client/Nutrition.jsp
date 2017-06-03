<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.springframework.web.client.RestTemplate" %>
<%@ page import="UIT.SE325H22.Group2.model.ExerciseDetail" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%
String id = request.getParameter("Id");
RestTemplate restTemplate = new RestTemplate();
ExerciseDetail[] listExerciseDetail = restTemplate.getForEntity("http://localhost:8080/SpringRestHibernateExample/getExerciseDetailsByMuscleId/{id}", ExerciseDetail[].class, id).getBody() ;	
request.setAttribute("listExerciseDetail", listExerciseDetail);  
	
%>
<!doctype html>
<html class="no-js" lang="">
    
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
		<style>
			.single-news > .img-responsive {
				width: 393px ;
				height : 185px;
			}
		</style>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Danh sách bài tập</title>
        <meta name="description" content="">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">

      	<jsp:include page="/partial/client/css_client.jsp"></jsp:include> <!-- include css -->  
    </head>
    <body>
        <div class="wrapper">
            <jsp:include page="/partial/client/header-top.jsp"></jsp:include> 
            <!-- Start latest news area -->
            <div class="news-page-area padding-space">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9 col-md-9 col-sm-9">
                            
                            <c:forEach items="${listExerciseDetail}" var="exerciseDetail"  >
								 <div class="col-lg-6 col-md-6 col-sm-6">
	                                <div class="single-news-page">
	                                    <div class="single-news">
	                                       ${exerciseDetail.getExerciseDetailLinkImage()}
	                                       
	                                    </div>
	                                    <div class="news-content">
	                                        <h3 style="white-space:nowrap;overflow:hidden"><a href="single-news.html">${exerciseDetail.getExerciseDetailName()}</a></h3>
	                                        <p>Bài tập làm tăng cơ ngực , nở cơ mông , đẩy cong cơ đít ...</p>
	                                        <a class="read-more" href="/SpringRestHibernateExample/pages/client/Exercise_detail.jsp?Id=${exerciseDetail.getId()}">Chi Tiết</a>
	                                    </div>
	                                </div>
	                            </div>		
							</c:forEach>     
                            
                        </div>
                        <jsp:include page="/partial/client/right-slidebar.jsp"></jsp:include> <!-- include slide bar page --> 
                    </div>
                </div>
            </div>
            <!-- Start latest news area -->
           <jsp:include page="/partial/client/footer.jsp"></jsp:include> <!-- include footer page -->  
        </div>
        <!-- End wrapper -->
        <a href="#" class="scrollToTop"></a>
        <jsp:include page="/partial/client/js_client.jsp"></jsp:include> <!-- include js -->  

    </body>
</html>
