
/*function check() {
	var id = $('#insertID').val();
	var pw = $('#insertPw').val();
	  var re = /^[a-z0-9]{4,12}$/;
	  if (!re.test(id)) {
	    alert("ID는 4~12자 이내의 영문 소문자와 숫자로만 입력 가능합니다.");
	    $('#insertID').val("");
	    $('#insertID').focus();
	    return false;
	  } 

	 var re2 = /(?=.*\d{1,12})(?=.*[~`!@#$%\^&*()-+=]{1,12})(?=.*[a-zA-Z]{2,12}).{6,12}$/;
		 if (!re2.test(pw)) {
		   alert("PW는 숫자, 영문자, 특수문자 조합으로 6~12자리를 입력하세요.");
		   $('#insertPw').val("");
		   $('#insertPw').focus();
		   return false;
		 }
}*/


function checkIdPw() {
	var id = $('#insertID').val();
	var pw = $('#insertPw').val();
	
	location.href="checkIdPw.do?id=id&pw=pw";
}