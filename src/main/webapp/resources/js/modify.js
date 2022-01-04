// document (HTML 문서)가 로드가 완료되었을 때 실행
$(document).ready(function () {
	
	var pw_check_flag = false;
	
	// user_pw2 id를 가지는 HTML 태그가 변경되었을 때 실행
	$('#user_pw2,#user_pw').change(function() {
		// 각각의 id를 가지는 HTML 태그에서 value 값을 가져옴
		var user_pw  = $('#user_pw').val();
		var user_pw2 = $('#user_pw2').val();
		if (user_pw != user_pw2) {
			// 해당 id를 가지는 HTML 태그를 보여줌
			$('#diff_pw').show();
			// 해당 id를 가지는 HTML 태그를 숨김
			$('#equal_pw').hide();
			pw_check_flag = false;
		}
		else {
			$('#equal_pw').show();
			$('#diff_pw').hide();
			pw_check_flag = true;
		}
	});
	
	
});