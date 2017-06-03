function POST() {
	var data = $("#form").serializeFormJSON();
	data.id = 0;
	$.ajax({
		url : "/SpringRestHibernateExample/addNutrition",
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
		url : "/SpringRestHibernateExample/updateNutrition",
		method : "PUT",
		contentType : "application/json",
		headers: {
		    "Authorization": "Basic " + btoa(gymweb + ":" + gymweb)
		  },
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
		url : "/SpringRestHibernateExample/deleteNutrition/" + data.id,
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
	$('#nutrition-image').attr('src',$(data['nutritionImage']).attr('src'));
	$('#nutritionImage').val( $(data['nutritionImage']).attr('src'));
	$('#nutrition-image').css('display','block');
}

$('#clear').click(function(e){
	e.preventDefault();
	$('#nutrition-image').css('display','none');
});

$('#add').click(function(e){
	e.preventDefault();
	$('#muscleType-image').css('display','none');
});