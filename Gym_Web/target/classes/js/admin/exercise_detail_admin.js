function POST() {
	var data = $("#form").serializeFormJSON();
	data.id = 0;
	$.ajax({
		url : "/SpringRestHibernateExample/addExerciseDetail",
		method : "POST",
		contentType : "application/json",
		data : JSON.stringify(data),
		success : function() {
			Message("Thành công", "Bạn đã thêm dữ liệu thành công!", "success");
			$('#bootstrap-table').bootstrapTable('refresh');
			ResetInput();
		},
		error : function() {
			Message("Thất bại", "Đã có lỗi xảy ra!", "danger");
		}
	});
}

function PUT() {
	var data = $("#form").serializeFormJSON();
	$.ajax({
		url : "/SpringRestHibernateExample/updateExerciseDetail",
		method : "PUT",
		contentType : "application/json",
		data : JSON.stringify(data),
		success : function(data) {
			Message("Thành công", "Bạn đã cập nhật dữ liệu thành công!", "success");
			$('#bootstrap-table').bootstrapTable('refresh');
			ResetInput();
		},
		error : function(error) {
			Message("Thất bại", "Đã có lỗi xảy ra!", "danger");
		}
	});
}

function DELETE(data) {
	$.ajax({
		url : "/SpringRestHibernateExample/deleteExerciseDetail/" + data.id,
		method : "DELETE",
		contentType : "application/json",
		success : function() {
			Message("Thành công", "Bạn đã xoá dữ liệu này thành công!", "success");
			$('#bootstrap-table').bootstrapTable('refresh');
		},
		error : function() {
			Message("Thất bại", "Đã có lỗi xảy ra!", "danger");
		}
	});
}

var oldUpdate = Update;
Update = function (data) {
	oldUpdate(data);
	tinymce.get('exerciseDetailInfo').setContent(data['exerciseDetailInfo']);
	$("#selectmuscleType").val(data.muscleTypeId);
	$('.selectpicker').selectpicker('refresh')
	$('#videoLink').val('https://www.youtube.com/watch?v=' + data['videoId']);
	var videoLink = "https://www.youtube.com/embed/"+data['videoId']+"?autoplay=1";
	$($('#videoLink').parent().find('iframe')[0]).attr('src',videoLink);
//	$('#file').val(data['exerciseDetailImage']);
	$('#exerciseDetailImage').val( $(data['exerciseDetailImage']).attr('src'));
	$('#image_exercise').attr('src',$(data['exerciseDetailImage']).attr('src'));
	$('#image_exercise').css('display','block');
}

$('#clear').click(function(e){
	e.preventDefault();
	$('#image_exercise').css('display','none');
	$($('#videoLink').parent().find('iframe')[0]).attr('src','');
});

$('#add').click(function(e){
	e.preventDefault();
	$('#muscleType-image').css('display','none');
});
//$('#expand').click(function(e){
//	e.preventDefault();
//	$('#image_exercise').css('display','none');
//	$('#file').val('');
//	$($('#videoLink').parent().find('iframe')[0]).attr('src','');
//});


