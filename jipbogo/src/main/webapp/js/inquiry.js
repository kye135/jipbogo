function checkName() {
	// 이름이 한글로 들어오는지 검사
	var nameRe = /^[가-힣]{2,4}$/;
	var name = $('#insertName').val();
	if (!nameRe.test(name)) {
		alert("이름이 올바르지 않습니다.");
	    $('#insertName').val("");
	    $('#insertName').focus();
	    return false;
	}
}
function checkEmail() {
	// 이메일이 적합한지 검사
	var re2 = /^[a-z0-9_]+[a-z0-9]*[@]{1}[a-z0-9]+[a-z0-9]*[.]{1}[a-z]{1,3}$/;
	var email = $('#insertE').val();
	if (!re2.test(email)) {
		alert("적합하지 않은 이메일 형식입니다.");
	    $('#insertE').val("");
	    $('#insertE').focus();
	    return false;
	}
}
function checkPhone() {
	// 전화번호
	var phoneRe = /^[0-9]{11,11}$/;
	var phone = $('#insertPhone').val();
	if (!phoneRe.test(phone)) {
		alert("핸드폰번호를 확인해주세요.");
	    $('#insertPhone').val("");
	    $('#insertPhone').focus();
	    return false;
	}
}
//필수 입력 체크
function agree() {
	 if (document.frm.name.value == "") {
		    alert("이름을 입력하세요.");
		    document.frm.name.focus();
		    return false;
		  }

	  if (document.frm.phone.value == "") {
	    alert("핸드폰번호를 입력하세요.");
	    document.frm.phone.focus();
	    return false;
	  }

		  if (document.frm.email.value == "") {
		    alert("이메일을 입력하세요.");
		    document.frm.email.focus();
		    return false;
		  }
		  
		  if (document.frm.phone.value == "") {
			    alert("제목을 입력하세요.");
			    document.frm.phone.focus();
			    return false;
			}
		  
		  
	var chk = document.getElementById("chk").checked;

	if (chk) {
		form.submit();
	} else {
		alert("개인정보 수집 및 이용에 동의해주세요.")
		return false;
	}
}