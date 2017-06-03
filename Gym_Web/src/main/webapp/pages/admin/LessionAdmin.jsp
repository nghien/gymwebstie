<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Lesson</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
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
															<label class="col-sm-4 control-label"> Tên giáo
																án <star>*</star>
															</label>
															<div class="col-sm-7">
																<input class="form-control" name="lessonName"
																	id="lessonName" type="text" required="true"
																	autocomplete="off" aria-required="true">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label"> Hình ảnh <star>*</star>
															</label>
															<div class="col-sm-7">
																<input type="file" id="file" name="imageFile"
																	accept="image/x-png,image/gif,image/jpeg"> <input
																	type="text" style="display: none;" id="lessionImage"
																	name="lessionImage">
															</div>

															<img class="img-admin" id="lession-image" width="200" height="200"
																style="text-align: center; display: none;"
																src=""> </img>

														</div>

														<div class="form-group">
															<label class="col-sm-4 control-label"> Thông tin
																giáo án <star>*</star>
															</label>
															<div class="col-sm-7">
																<input class="form-control" name="lesionInfo"
																	id="lesionInfo" type="text" required="true"
																	autocomplete="off" aria-required="true">
															</div>
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
											data-url="/SpringRestHibernateExample/getAllLessions"
											data-search="true" data-show-refresh="true"
											data-show-toggle="true" data-show-columns="true">
											<thead>
												<tr>
													<th data-field="actions" class="td-actions"
														data-events="operateEvents"
														data-formatter="operateFormatter"><b>Thao tác</b></th>
													<th data-field="lessonName"><b>Tên giáo án</b></th>
													<th data-field="lessionImage"><b>Hình ảnh</b></th>
													<th data-field="lesionInfo"><b>Thông tin giáo án</b></th>
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
			src="/SpringRestHibernateExample/resources/js/admin/lession.js"></script>
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
					$('#lessionImage').val(data);
					$('#lession-image').attr('src', data);
					$('#lession-image').css('display', 'block');
				}
			});
		}

		$('#file').change(function() {
			doUpload();
		});
	</script>
</body>
</html>
