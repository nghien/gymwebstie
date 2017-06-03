<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Exercise Detail</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style>
.btn-group.bootstrap-select {
	width: 100%;
}
</style>
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



													<div id='output'></div>

													<form id="form" enctype="multipart/form-data" id="form"
														class="form-horizontal">
														<input type="text" style="display: none;" name="id"
															id="id">

														<div class="form-group">
															<input class="combobox_input" style="display: none"
																name="muscleTypeId" id="muscleTypeId" /> <label
																class="col-sm-4 control-label">Chọn nhóm cơ <star>*</star></label>

															<div class="col-sm-7">
																<select class="selectpicker" title="Chọn nhóm cơ"
																	data-style="btn btn-block" name="" id="selectmuscleType"
																	data-ajax="/SpringRestHibernateExample/muscleTypeComboboxs"
																	value-member="id" display-member="muscleTypeName">
																</select>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label"> Tên bài
																tập <star>*</star>
															</label>
															<div class="col-sm-7">
																<input class="form-control" name="exerciseDetailName"
																	id="exerciseDetailName" type="text" required="true"
																	autocomplete="off" aria-required="true">
															</div>
														</div>



														<div class="form-group">
															<label class="col-sm-4 control-label">Số hiệp <star>*</star>
															</label>
															<div class="col-sm-7">
																<input class="form-control" name="set" id="set"
																	type="number" required="true" autocomplete="off"
																	aria-required="true">
															</div>
														</div>

														<div class="form-group">
															<label class="col-sm-4 control-label">Thời gian
																nghỉ <star>*</star>
															</label>
															<div class="col-sm-7">
																<input class="form-control" name="timeBreak"
																	id="timeBreak" type="number" required="true"
																	autocomplete="off" aria-required="true">
															</div>
														</div>

														<div class="form-group">
															<label class="col-sm-4 control-label">Thời gian
																tập <star>*</star>
															</label>
															<div class="col-sm-7">
																<input class="form-control" name="timeExercise"
																	id="timeExercise" type="number" required="true"
																	autocomplete="off" aria-required="true">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label">Video <star>*</star>
															</label>
															<div class="col-sm-7 video-control">
																<input style="display:none;" name="videoId" id="videoId" /> <input
																	class="form-control" name="videoLink" id="videoLink"
																	type="text" required="true" autocomplete="off"
																	aria-required="true">

																<iframe width="420" height="315"
																	style="margin-top: 20px;" src=""> </iframe>
															</div>
														</div>

														<div class="form-group">
															<label class="col-sm-4 control-label">Chi tiết
																bài tập</label>
															<div class="col-sm-7">
																<textarea class="form-control" rows="5"
																	name="exerciseDetailInfo" id="exerciseDetailInfo"></textarea>
															</div>
														</div>


														<div class="form-group">
															<label class="col-sm-4 control-label"> Hình ảnh <star>*</star>
															</label>
															<div class="col-sm-7">
																<input type="file" id="file" name="imageFile" accept="image/x-png,image/gif,image/jpeg"> <input
																	type="text" style="display: none;"
																	id="exerciseDetailImage" name="exerciseDetailImage">
															</div>
															
															<img id="image_exercise" class="img-admin" width="200" height="200"
																	style="text-align: center;display: none ;" src=""> </img>
															
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
								<!--  end acordeon -->
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
											data-url="/SpringRestHibernateExample/getAllExerciseDetails"
											data-search="true" data-show-refresh="true"
											data-show-toggle="true" data-show-columns="true">
											<thead>
												<tr>
													<th data-field="actions" class="td-actions"
														data-events="operateEvents"
														data-formatter="operateFormatter">Action</th>
													<th data-field="muscleTypeId">Mã nhóm cơ</th>
													<th data-field="exerciseDetailName">Tên chi tiết bài
														tập</th>
													<th data-field="exerciseDetailImage">exercise_detail_image</th>
													<th data-field="exerciseDetailInfo">exercise_detail_info</th>
													<th data-field="videoId">video</th>
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
			src="/SpringRestHibernateExample/resources/js/admin/exercise_detail_admin.js"></script>
		<script
			src="/SpringRestHibernateExample/resources/js/common/combobox_get_from_server.js"></script>
		<script
			src="/SpringRestHibernateExample/resources/js/common/video_control.js"></script>
		<script src="http://malsup.github.com/jquery.form.js"></script>
		<script>
			/*	function showRequest(formData, jqForm, options) { 
				    var queryString = $.param(formData); 
				    alert('About to submit: \n\n' + queryString); 
				    return true; 
				} 
				 
				// post-submit callback 
				function showResponse(responseText, statusText, xhr, $form)  { 
				    alert('status: ' + statusText + '\n\nresponseText: \n' + responseText + 
				        '\n\nThe output div should have already been updated with the responseText.'); 
				} 

			      var options = { 
			          target:        '#output1',
			          beforeSubmit:  showRequest,
			          success:       showResponse
			      }; 
			      $('#myForm').ajaxForm(options); */

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
						$('#exerciseDetailImage').val(data);
						$('#image_exercise').attr('src',data);
						$('#image_exercise').css('display','block');
					}
				});
			}

			$('#file').change(function() {
				doUpload();
			});

			$("#myForm").submit(function(event) {
				event.preventDefault();
				//grab all form data  
				var formData = $(this).serialize();

				$.ajax({
					url : '/SpringRestHibernateExample/uploadFile',
					type : 'POST',
					data : formData,
					async : false,
					cache : false,
					contentType : false,
					processData : false,
					success : function(returndata) {
						$("#myForm").html(returndata);
						alert(formData);
					},
					error : function() {
						alert("error in ajax form submission");
					}
				});

				return false;
			});

			$('#videoId').change(
					function(e) {
						var videoLink = "https://www.youtube.com/embed/"
								+ $('#videoId').val() + "?autoplay=1";
						//	    		$($(val).find('input')[0]).val(id);
						$($(val).find('iframe')[0]).attr('src', videoLink);
						//	    		 var link = 'https://www.youtube.com/watch?v='+$('#videoId').val();
					});
		</script>

		<script>
			tinymce.init({
				selector : 'textarea'
			});
		</script>
	</div>
</body>
</html>
