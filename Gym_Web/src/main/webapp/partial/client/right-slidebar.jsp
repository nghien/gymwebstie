<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.springframework.web.client.RestTemplate" %>
<%@ page import="UIT.SE325H22.Group2.model.MuscleType" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<div class="col-lg-3 col-md-3 col-sm-3">
                            <div class="right-sidebar">
                                <div class="single-sidebar">
                                    <h3>Search</h3>
                                    <div class="sidebar-search">
                                        <input type="text" placeholder="Search here...">
                                        <span><button type="submit"><i class="fa fa-search"></i></button></span>
                                    </div>
                                </div>
                                <div class="single-sidebar">
                                    <h3>Nhóm cơ</h3>
                                    <%
	                                    RestTemplate restTemplate = new RestTemplate();
					       				MuscleType[] listMuscleType = restTemplate.getForEntity("http://localhost:8080/SpringRestHibernateExample/getAllMuscleTypes", MuscleType[].class).getBody();
					       				request.setAttribute("listMuscleType", listMuscleType);
                                    %>
                                    
                                    <div class="categories">
                                        <ul>
                                        	<c:forEach items="${listMuscleType}" var="muscleType"  >
												<li><a href="/SpringRestHibernateExample/pages/client/Nutrition.jsp?Id=${muscleType.getId()}">${muscleType.getMuscleTypeName()}</a></li>
											</c:forEach>  
                                        </ul>
                                    </div>
                                </div>
                               
                            </div>
                        </div>