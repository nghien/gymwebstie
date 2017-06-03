function POST() {
	var data = $("#form").serializeFormJSON();
	data.id = 0;
	
	
	var token = "Basic "+ Cookies.get('token');
	
//	var s ="Authorization":+ +"Basic " +token;
//	alert(token);
	$.ajax({
		url : "/SpringRestHibernateExample/addMuscleType",
		method : "POST",
		contentType : "application/json",
		data : JSON.stringify(data),
		headers: {
		    //"Authorization": "Basic Z3ltd2ViOmd5bXdlYg=="
			
		    Authorization : token 
		  },
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
		url : "/SpringRestHibernateExample/updateMuscleType",
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
		url : "/SpringRestHibernateExample/deleteMuscleType/" + data.id,
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
	$('#muscleType-image').attr('src',$(data['muscleTypeImage']).attr('src'));
	$('#muscleTypeImage').val( $(data['muscleTypeImage']).attr('src'));
	$('#muscleType-image').css('display','block');
}

$('#clear').click(function(e){
	e.preventDefault();
	$('#muscleType-image').css('display','none');
});

$('#add').click(function(e){
	e.preventDefault();
	$('#muscleType-image').css('display','none');
});