$().ready(function() {
	InitControl();

	$('#form').validate();
});

function InitControl() {
	$("#add").click(function(e) {
		e.preventDefault();
		if ($('#form').valid()) {
			if ($("#add").prop("name") == "POST") {
				POST();
			} else if ($("#add").prop("name") == "PUT") {
				PUT();
			}
		}
	});
	$("#clear").click(function(e) {
		e.preventDefault();
		ResetInput();
	});
}

var token;

function POST() {
	var data = $("#form").serializeFormJSON();
	
	$.ajax({
		url : "/SpringRestHibernateExample/userlogin",
		method : "POST",
		contentType : "application/json",
		data : JSON.stringify(data),
		complete: function(data) {
			if(data.responseText!=""){
				Cookies.set('token', data.responseText);
				window.location.href = "/SpringRestHibernateExample/pages/admin/exercise_detail_admin.jsp";

			}
				
			else 
				$("#error").text("Tài khoản hoặc mật khẩu không đúng")
				//alert("Tài khoản hoặc mật khẩu không đúng");
		},
		error : function() {
		}
	});
}





