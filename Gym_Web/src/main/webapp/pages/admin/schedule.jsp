<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Schedule</title>
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
													<form id="form" enctype="multipart/form-data"
														class="form-horizontal">
														<input type="text" style="display: none;" name="id"
															id="id">

														<div class="form-group">
															<label class="col-sm-3 control-label"> Tên lịch <star>*</star></label>
															<div class="col-sm-7">
																<input class="form-control" type="text"
																	name="scheduleName" id="scheduleName" maxLength="100"
																	required="true" autocomplete="off" aria-required="true">
															</div>
														</div>

														<div class="form-group">
															<label class="col-sm-3 control-label"> Info <star>*</star>
															</label>
															<div class="col-sm-7">
																<input class="form-control" name="scheduleInfo"
																	id="scheduleInfo" type="text" required="true"
																	autocomplete="off" aria-required="true">
															</div>
														</div>

														<div class="form-group">
															<label class="col-sm-3 control-label"> Hình ảnh
															</label>
															<div class="col-sm-7">
																<input type="file" id="file" name="imageFile" accept="image/x-png,image/gif,image/jpeg" class="notcheck"> <input
																	type="text" style="display: none;"
																	id="scheduleImage" name="scheduleImage">
															</div>
															
															<img id="image_schedule" width="200" height="200"
																	style="margin-top: 55px;text-align: center;display: none;margin-left: 262px;" src=""> </img>
															
														</div>

														<div class="form-group">
															<label class="col-sm-3 control-label"> Schedule
																Detail <star>*</star>
															</label>
															<div class="panel-group" id="panel-group-schedule">
																<div class="panel-group-sm" id="tuan1">
																	<div class="col-sm-7">
																		<div class="panel panel-border panel-default">
																			<a data-toggle="collapse" href="#collapse1" class="click-action">
																				<div class="panel-heading">
																					<h4 class="panel-title">
																						Tuần 1 <i class="ti-angle-down"></i>
																					</h4>
																				</div>
																			</a>
																			<div id="collapse1" class="panel-collapse collapse">
																				<div class="panel-body">
																					<div id="group-tuan1">
																						<div class="form-group" id="buoi1">
																							<label class="col-sm-2 control-label">
																								Buổi 1 <star>*</star>
																							</label>
																							<div class="col-sm-8" id="select-html">
																								<select multiple class="selectpicker col-sm-12"
																									data-live-search="true" title="Chọn lession"
																									data-style="btn btn-block"
																									data-ajax="/SpringRestHibernateExample/getLessonsCombobox"
																									value-member="id" display-member="lessonName"
																									name="lesson-tuan1-buoi1"
																									id="lesson-tuan1-buoi1">
																								</select>
																							</div>

																							<div class="col-sm-2">
																								<button type="button"
																									class="btn btn-sm btn-success btn-add-input"
																									onclick="AddInput(1);" id="addInput-tuan1">
																									<span class="ti-plus"></span>
																								</button>
																							</div>
																							<div class="col-sm-12 textarea-input">
																								<textarea class="form-control"
																									placeholder="Chi tiết..." rows="3"
																									name="lessonInfo-tuan1-buoi1"
																									id="lessonInfo-tuan1-buoi1"></textarea>
																							</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="col-sm-2">
																		<button type="button"
																			class="btn btn-success btn-add-panel" id="addPanel">
																			<span class="ti-plus"></span>
																		</button>
																	</div>
																</div>

															</div>
														</div>

														<div class="card-footer text-center">
															<button type="submit" id="add"
																class="btn btn-wd btn-success" name="POST">
																<span class="btn-label"> <i class="fa fa-check"></i>
																	<span>ADD</span></span>
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
											data-url="/SpringRestHibernateExample/getAllSchedules"
											data-search="true" data-show-refresh="true"
											data-show-toggle="true" data-show-columns="true">
											<thead>
												<tr>
													<th data-field="actions" class="td-actions"
														data-events="operateEvents"
														data-formatter="operateFormatter">Action</th>
													<th data-field="scheduleName">Tên lịch</th>
													<th data-field="scheduleInfo">Info</th>
													<th data-field="scheduleImage">Ảnh đại diện</th>
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
			src="/SpringRestHibernateExample/resources/js/admin/schedule.js"></script>
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
							$('#scheduleImage').val(data);
							$('#image_schedule').attr('src',data);
							$('#image_schedule').css('display','block');
						}
					});
				}
	
				$('#file').change(function() {
					doUpload();
				});
			</script>
	</div>
</body>
</html>
