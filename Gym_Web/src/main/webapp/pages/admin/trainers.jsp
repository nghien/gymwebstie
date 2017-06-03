<%-- <%@page import="java.util.List"%> --%>
<%-- <%@page import="UIT.SE325H22.Group2.service.TrainersService"%> --%>
<%@page import="org.springframework.web.client.RestTemplate"%>
<%@page import="UIT.SE325H22.Group2.model.Trainers"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Trainer</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>

	<%
		// RestTemplate restTemplate = new RestTemplate();
		// List<Trainers> bhutan = restTemplate.getForEntity("http://localhost:8080/SpringRestHibernateExample/getTrainers/{id}", Trainers.class,1);
		// System.out.println("Country Name:"+bhutan.getTrainersName());
		//System.out.println("Population:"+bhutan.getPopulation());
	%>
	<div class="wrapper">
		<jsp:include page="/partial/admin/css_lib.jsp"></jsp:include>
		<jsp:include page="/partial/admin/panel.jsp"></jsp:include>
		<div class="main-panel ps-container ps-theme-default ps-active-y">
			<jsp:include page="/partial/admin/nav.jsp"></jsp:include>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="card">
								<div class="panel-group">
									<div class="panel panel-border panel-default">
										<div class="card-header">
											<a data-toggle="collapse" href="#collapse" id="expand">
												<div class="panel-heading">
													<h4 class="panel-title">
														<span class="smooth">Add a new ... </span><i
															class="ti-angle-down"></i>
													</h4>
												</div>
											</a>
										</div>
										<div class="card-content">
											<div id="collapse" class="panel-collapse collapse">
												<div class="panel-body">
													<form id="form" enctype="multipart/form-data" id="form"
														class="form-horizontal">
														<input type="text" style="display: none;" name="id"
															id="id">

														<div class="form-group">
															<label class="col-sm-4 control-label"> Tên <star>*</star>
															</label>
															<div class="col-sm-7">
																<input class="form-control" name="trainers_name"
																	id="trainers_name" type="text" required="true"
																	autocomplete="off" aria-required="true">
															</div>
														</div>
														
														<div class="form-group">
															<label class="col-sm-4 control-label"> Vị trí <star>*</star>
															</label>
															<div class="col-sm-7">
																<input class="form-control" name="position"
																	id="position" type="text" required="true"
																	autocomplete="off" aria-required="true">
															</div>
														</div>
														
														
														<div class="form-group">
															<label class="col-sm-4 control-label"> Số điện thoại <star>*</star>
															</label>
															<div class="col-sm-7">
																<input class="form-control" name="phone"
																	id="phone" type="number" required
																	autocomplete="off" aria-required="true">
															</div>
														</div>
														
														<div class="form-group">
															<label class="col-sm-4 control-label"> Facebook <star>*</star>
															</label>
															<div class="col-sm-7">
																<input class="form-control" name="facebook"
																	id="facebook" type="text" required="true"
																	autocomplete="off" aria-required="true">
															</div>
														</div>
														
														<div class="form-group">
															<label class="col-sm-4 control-label"> Email <star>*</star>
															</label>
															<div class="col-sm-7">
																<input class="form-control" name="email"
																	id="email" type="email" required="true"
																	autocomplete="off" aria-required="true">
															</div>
														</div>

														<div class="form-group">
															<label class="col-sm-4 control-label"> Hình ảnh <star>*</star>
															</label>
															<div class="col-sm-7">
																<input type="file" id="file" name="imageFile"
																	accept="image/x-png,image/gif,image/jpeg"> 
																	<input type="text" style="display: none;" id="trainers_image"
																	name="trainers_image">
															</div>

															<img id="trainers-image" class="img-admin" width="200" height="200"
																style="text-align: center; display: none;"
																src=""> </img>
														</div>

														<div class="card-footer text-center">
															<button type="submit" id="add"
																class="btn btn-wd btn-success" name="POST">
																<span class="btn-label"> <i class="fa fa-check"></i>
																	<span class="smooth">ADD</span></span>
															</button>
															<button type="button" id="clear"
																class="btn btn-wd btn-default">
																<span class="btn-label"> <i class="fa fa-times"></i>
																</span> CLEAR
															</button>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="card">
								<div class="card-content">
									<div class="toolbar"></div>
									<div id="table">
										<table data-toggle="table" class="table" id="bootstrap-table"
											data-url="/SpringRestHibernateExample/getAllTrainers"
											data-search="true" data-show-refresh="true"
											data-show-toggle="true" data-show-columns="true">
											<thead>
												<tr>
													<th data-field="actions" class="td-actions"
														data-events="operateEvents"
														data-formatter="operateFormatter">Action</th>
													<th data-field="trainers_name">Tên</th>
													<th data-field="position">Vị trí</th>
													<th data-field="phone">Số điện thoại</th>
													<th data-field="facebook">Facebook</th>
													<th data-field="email">Email</th>
													<th data-field="trainers_image">Hình ảnh</th>
												</tr>
											</thead>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="/partial/admin/js_lib.jsp"></jsp:include>
		<script
			src="/SpringRestHibernateExample/resources/js/admin/trainers.js"></script>
	</div>
	<script>
		function doUpload() {
			var formData = new FormData();
			formData.append('file', $('#file')[0].files[0]);

			$.ajax({
				url : '/SpringRestHibernateExample/uploadFile',
				type : 'POST',
				data : formData,
				processData : false, // tell jQuery not to process the data
				contentType : false, // tell jQuery not to set contentType
				success : function(data) {
					$('#trainers_image').val(data);
					$('#trainers-image').attr('src', data);
					$('#trainers-image').css('display', 'block');
				}
			});
		}

		$('#file').change(function() {
			doUpload();
		});
	</script>
</body>
</html>
