/**
 * Hung-DV 28/05
 */

var selectpickers = $('.selectpicker');
$.each(selectpickers, function(key, val) {
	var selectpicker = $(val);
	var url = selectpicker.attr('data-ajax');
	var displayMember = selectpicker.attr('display-member');
	var valueMember = selectpicker.attr('value-member');
	var comboboxContainer = $(val);
	var datas = [];
	var indexdata = 0;
	$.ajax({
		url : url,
		method : "GET",
		contentType : "application/json",
		success : function(data) {
			comboboxContainer.empty();
			$.each(data, function(key, values) {
				datas[indexdata++] = [ '<option value="', values[valueMember],
						'">', values[displayMember], '</option>', ].join('');
			});
			comboboxContainer.append(datas.join(''));
			$(val).selectpicker('refresh');
			
			var parent = $(val).parent().parent().parent();
			
			$.each($(parent).find('li'), function(k, v) {
				$(v).click(
						function(e) {
							$(parent.find('input')[0]).val( $($(val).find('option')[k+1]).val()  );
						});
			});
			
		},
		error : function() {
			// Message("Thất bại", "Đã có lỗi xảy ra!", "danger");
		}
	});

});