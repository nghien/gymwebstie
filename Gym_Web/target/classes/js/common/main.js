$().ready(function() {
	InitControl();
    setNavigation();
	$(".navbar-brand").text(document.title);
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

(function($) {
	$.fn.serializeFormJSON = function() {
		var o = {};
		var a = this.serializeArray();
		$.each(a, function() {
			if (o[this.name]) {
				if (!o[this.name].push) {
					o[this.name] = "'" + [ o[this.name] ] + "'";
				}
				o[this.name].push(this.value || "'");
			} else {
				o[this.name] = this.value || "'";
			}
		});
		$(this).find("input[type = file]").each(function(i, obj) {
			let
			file = obj.files[0];
			if (file != null) {
				o[this.name] = file.name;
			} else {
				o[this.name] = "avatar1.jpg";
			}
		});
		return o;
	};
})(jQuery);

function ResetInput() {
	$('#form').each(function() {
		this.reset();
	});
	$("#add").prop("name", "POST");
	$("#add span span").text("ADD");
	$(".panel-title span").text("Add a new ... ")
	$("[id$='-error']").remove();
	$('#form').find(".error").removeClass("error");
	$(".selectpicker").selectpicker('refresh');
}

function Update(data) {
	$("#form input").each(function() {
		if (!$(this).hasClass("notcheck")){
			name = this.name;
			value = data[name];
			$("#" + name).val(value);
		}
	});
	if (!$("#collapse").hasClass("in")) {
		$("#expand").click();
	}
	$("#add").prop("name", "PUT");
	$("#add span span").text("UPDATE");
	$(".panel-title span").text("Update a record ... ")
	$(".main-panel").animate({ scrollTop: 0 }, 500);
	$(".main-panel").perfectScrollbar('update');
}

function Message(title, message, type) {
	$.notify({
		animate : {
			enter : 'animated bounceInDown',
			exit : 'animated bounceOutUp'
		},
		title : '<strong>' + title + '!</strong>',
		message : message
	}, {
		type : type,
		timer : 1000,
		placement : {
			from : 'top',
			align : 'center'
		}
	});
}

function setNavigation() {
    var path = window.location.pathname;
    path = path.replace(/\/$/, "");
    path = decodeURIComponent(path).substring(path.length, path.lastIndexOf("/") + 1);
    
    $(".nav a").each(function () {
        var href = $(this).attr('href');
        if (path.substring(0, href.length) === href) {
            $(this).closest('li').addClass('active');
            $(this).closest('li').parent().closest('li').addClass('active');
            $(this).closest('li').parent().closest('li').find('a').click();
        }
    });
}

function tinyMCE(){
	tinymce.init({
		selector : 'textarea'
	});
}

function selectpicker(){
	$('.selectpicker').selectpicker({});	
}
