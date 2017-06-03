var option;

function AddInput(week) {
	var Id = $("#group-tuan" + week + " textarea").length + 1;
	if (Id <= 7) {
		var fieldWrapper = $("<div class='form-group' id='buoi" + Id
				+ "' style='display: none;'/>");
		var dropdownlist = $("<label class='col-sm-2 control-label'> Buổi "
				+ Id
				+ " <star>*</star></label> <div class='col-sm-8'><select name='lesson-tuan"
				+ week
				+ "-buoi"
				+ Id
				+ "' id='lesson-tuan"
				+ week
				+ "-buoi"
				+ Id
				+ "' multiple='' class='selectpicker col-sm-12' data-live-search='true' title='Chọn lession' data-style='btn btn-block' data-ajax='/SpringRestHibernateExample/getLessonsCombobox' value-member='id' display-member='lessonName' tabindex='-98'>"
				+ option + "</select></div>");
		var textarea = $("<div class='col-sm-12 textarea-input'><textarea class='form-control' placeholder='Chi tiết...' rows='3' name='lessonInfo-tuan"
				+ week
				+ "-buoi"
				+ Id
				+ "' id='lessonInfo-tuan"
				+ week
				+ "-buoi"
				+ Id + "'></textarea></div>");
		var removeButton = $("<div class='col-sm-2'><button type='button' class='btn btn-danger btn-sm btn-add-input'><span class='ti-minus'></span></button></div>");
		removeButton.click(function() {
			$(this).parent().slideUp("fast", function() {
				$(this).remove();
				ResetInputId(week);
			});
		});
		fieldWrapper.append(dropdownlist);
		fieldWrapper.append(removeButton);
		fieldWrapper.append(textarea);
		$("#group-tuan" + week).append(fieldWrapper);
		$("#group-tuan" + week).find(".form-group:last").slideDown("fast");
		selectpicker();
		tinyMCE();
	}
	else {
		$("#addInput-tuan" + week).prop('disabled', true);
	}
}

function AddPanel(){
	var Id = $("#panel-group-schedule .panel-group-sm").length + 1;
	var fieldWrapper = $("<div class='panel-group-sm' id='tuan"
			+ Id
			+ "' style='display: none;'/>");								
	var content = $("<div class='col-sm-7 col-sm-offset-3'><div class='panel panel-border panel-default'><a data-toggle='collapse' class='click-action' href='#collapse"
			+ Id
			+ "'><div class='panel-heading'><h4 class='panel-title'>Tuần "
			+ Id
			+ " <i class='ti-angle-down'></i></h4></div></a><div id='collapse"
			+ Id
			+ "' class='panel-collapse collapse'><div class='panel-body'><div id='group-tuan"
			+ Id
			+ "'><div class='form-group' id='buoi1'><label class='col-sm-2 control-label'>Buổi 1 <star>*</star></label><div class='col-sm-8'><select name='lesson-tuan"
			+ Id
			+ "-buoi1' id='lesson-tuan"
			+ Id
			+ "-buoi1' multiple class='selectpicker col-sm-12' data-live-search='true' title='Chọn lession' data-style='btn btn-block' data-ajax='/SpringRestHibernateExample/getLessonsCombobox' value-member='id' display-member='lessonName'>"
			+ option
			+ "</select></div><div class='col-sm-2'><button type='button' class='btn btn-success btn-sm btn-add-input' id='addInput-tuan"
			+ Id
			+ "' onclick = 'AddInput("
			+ Id
			+ ");'><span class='ti-plus'></span></button></div><div class='col-sm-12 textarea-input'><textarea class='form-control' placeholder='Chi tiết...' rows='3' name='lessonInfo-tuan"
			+ Id
			+ "-buoi1' id='lessonInfo-tuan"
			+ Id
			+ "-buoi1'></textarea></div></div></div></div></div></div></div>");						
	var removeButton = $("<div class='col-sm-2'><button type='button' class='btn btn-danger btn-add-panel'><span class='ti-minus'></span></button></div>");
	removeButton.click(function() {
		$(this).parent().slideUp("fast",
				function() {
					$(this).remove();
					ResetPanelId();
				});
	});
	fieldWrapper.append(content);
	fieldWrapper.append(removeButton);
	$("#panel-group-schedule").append(
			fieldWrapper);
	$("#panel-group-schedule").find(
			".panel-group-sm:last")
			.slideDown("fast");
	selectpicker();
	tinyMCE();
}

$().ready(function() {
	tinyMCE();
	option = $("#select-html option").parent().html();
	$("#addPanel").click( function() {
		AddPanel();
	});				
});

function ResetInputId(week) {
	var Id = 0;
	$("#tuan" + week + " .form-group").each(function() {
		Id++;
		$(this).find("label").html("Buổi " + Id + " <star>*</star>");
		$("#addInput-tuan" + week).prop('disabled', false);
	});
}

function ResetPanelId() {
	var Id = 0;
	$("#panel-group-schedule .panel-group-sm").each(function() {
				Id++;
				$(this).find("h4").html(
						"Tuần " + Id + " <i class='ti-angle-down'></i>");
	});
}

function POST() {
	var data = createScheduleJSON();
	data.id = 0;
	$.ajax({
		url : "/SpringRestHibernateExample/addScheduleLesson",
		method : "POST",
		contentType : "application/json",
		data : JSON.stringify(data),
		success : function() {
			Message("Thành công", "Bạn đã thêm dữ liệu thành công!",
					"success");
			$('#bootstrap-table').bootstrapTable('refresh');
			ResetInput();
			CleanPanel();
			$(".click-action").click();
		},
		error : function() {
			Message("Thất bại", "Đã có lỗi xảy ra!", "danger");
		}		
	});
}

function PUT() {
	var data = createScheduleJSON();
	data.scheduleId = $("#id").val();
	$.ajax({
		url : "/SpringRestHibernateExample/updateScheduleLesson",
		method : "PUT",
		contentType : "application/json",
		data : JSON.stringify(data),
		success : function() {
			Message("Thành công", "Bạn đã cập nhật dữ liệu thành công!",
					"success");
			$('#bootstrap-table').bootstrapTable('refresh');
			ResetInput();
			CleanPanel();
			$(".click-action").click();
		},
		error : function(error) {
			Message("Thất bại", "Đã có lỗi xảy ra!", "danger");
		}
	});
}

function DELETE(data) {
	$.ajax({
		url : "/SpringRestHibernateExample/deleteScheduleLesson/" + data.id,
		method : "DELETE",
		contentType : "application/json",
		success : function() {
			Message("Thành công", "Bạn đã xoá dữ liệu này thành công!",
					"success");
			$('#bootstrap-table').bootstrapTable('refresh');
		},
		error : function() {
			Message("Thất bại", "Đã có lỗi xảy ra!", "danger");
		}
	});
}

function createScheduleJSON(){
	var scheduleLessonInfo;
	var weeks = [];
	var scheduleLesson;
	var scheduleName = $("#scheduleName").val();
	var scheduleImage = $("#scheduleImage").val();
	var scheduleInfo = $("#scheduleInfo").val();
	$("#panel-group-schedule .panel-group-sm").each(function(index_week, element_week){
		id_week = $(element_week).attr("id");
		var days = [];	
		$("#panel-group-schedule #" + id_week + " .form-group").each(function(index_day, element_day){
	        var lessons = [];
	        id_day = $(element_day).attr("id");
	        date = "-" + id_week+ "-" + id_day;
	        $.each($("#lesson" + date).val(), function(index, value){
				lessons[index] = {id : value}
			})
			scheduleLessonInfo = tinymce.get("lessonInfo" + date).getContent();
			days[index_day] = {lessons : lessons, scheduleLessonInfo : scheduleLessonInfo };
		})
		weeks[index_week] = {days : days};
	});
	scheduleLession = { weeks : weeks, scheduleName : scheduleName, scheduleImage : scheduleImage, scheduleInfo : scheduleInfo };
	return scheduleLession;
}

var olđUpate = Update;
Update = function(data) {
	olđUpate(data);
	var url = "/SpringRestHibernateExample/getScheduleLessonViewModel/" + data.id;
	$('#scheduleImage').val( $(data['scheduleImage']).attr('src'));
	$('#image_schedule').attr('src',$(data['scheduleImage']).attr('src'));
	$('#image_schedule').css('display','block');
	$.get(url, function(data) {
		var num;
		CleanPanel();
		var week = 1;
		var day = 1;
		var lesson = [];
		var i = 0;
		var scheduleLessonInfo;
		$.each(data, function(index, object) {	
			if (week != object.week){
				AddPanel();
				day = 1;
			}
			if (day != object.day) {
				$("#addInput-tuan" + week).click();
			}
			week = object.week;
			day = object.day;	
			selectpicker();
			tinyMCE();
		})
		UpdateData(data);
	}).fail(function() {
	//	Message("Thất bại", "Đã có lỗi xảy ra!", "danger");
	});
};

$('#clear').click(function(e){
	e.preventDefault();
	$('#image_schedule').css('display','none');
});

$('#add').click(function(e){
	e.preventDefault();
	$('#image_schedule').css('display','none');
});

function UpdateData(data){
	$.each(data.weeks, function(index_weeks, week){
		$.each(week.days, function(index_days, day){
	        var week = index_weeks + 1;
			var dayOrder = index_days + 1;
			var date = "-tuan" + week + "-buoi" + dayOrder;
	 		tinymce.get("lessonInfo" + date).setContent(day.scheduleLessonInfo);
			var lessonValue = JSON.stringify(day.lessons).replace(/"id":/g,'').replace(/{/g,'').replace(/}/g,'');
			$("#lesson" + date).val(eval(lessonValue));
	    })
	});
	$('.selectpicker').selectpicker('refresh')
}

function CleanPanel(){
	$(".panel-group-sm").each(function(index, object) {
		if (index != 0){
			num = index + 1;
			$("#tuan" + num).remove();
		}
	})
	$(".panel-group-sm .form-group").each(function(index, object) {
		if (index != 0){
			num = index + 1;
			$("#buoi" + num).remove();
		}
	})
}
