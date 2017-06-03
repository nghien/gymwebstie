function POST() {
	var data = $("#form").serializeFormJSON();
	data.id = 0;
	$.ajax({
		url : "/SpringRestHibernateExample/addLession",
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
		url : "/SpringRestHibernateExample/updateLession",
		method : "PUT",
		contentType : "application/json",
		data : JSON.stringify(data),
		success : function() {
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
		url : "/SpringRestHibernateExample/deleteLession/" + data.id,
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
//	$('#file').val(data['exerciseDetailImage']);
	$('#lession-image').attr('src',$(data['lessionImage']).attr('src'));
	$('#lessionImage').val( $(data['lessionImage']).attr('src'));
	$('#lession-image').css('display','block');
}

$('#clear').click(function(e){
	e.preventDefault();
	$('#lession-image').css('display','none');
});

$('#add').click(function(e){
	e.preventDefault();
	$('#muscleType-image').css('display','none');
});

//$('#expand').click(function(e){
//	e.preventDefault();
//	$('#image_exercise').css('display','none');
//	$('#file').val('');
//});

