/*function btn_bg(){
 document.getElementById("btn").style.backgroundColor = "#ffc200";
 document.getElementById("btn").style.color = "#fff";
 document.getElementById("btn").style.borderColor = "#ffc200"; }*/
/*$(document).ready(function(){ $(".btn").click(function(){
 //alert("ttt"); $(".btn").css({"background-color":"#eee",
 "color":"#666"}); $(this).css({"background-color":"#ffc200",
 "color":"#fff"}); }); });*//*$(document).ready(function(){
$(".btn").on({ load: function(){ $(this).css({"background-color":"#eee",
"color":"#333", "border-color":"#ccc"}); }, click: function(){
$(this).css({"background-color":"#ffc200", "color":"#fff",
"border-color":"#ffc200"}); } }); });*/

function checkID() {
  var id = $('#insertID').val();
  var re = /^[a-z0-9]{4,12}$/;
  if (!re.test(id)) {
    alert("ID는 4~12자 이내의 영문 소문자와 숫자로만 입력 가능합니다.");
    $('#insertID').val("");
    $('#insertID').focus();
    return false;
  }
  $.ajax({
    type : 'post',
    data : "id=" + id,
    dataType : 'text',
    url : 'checkID.do',// 아이디가 있으면 1 없으면 0
    success : function(rData, textStatus, xhr) {// 결과값, 상태, 메세지
      var check = rData;
      // alert(rData);
      // alert(check);
      if (check == 1) {
        alert("이미 가입된 ID 입니다.");
        $('#resulttext').css('color', 'red');
        $('#resulttext').text('이미 등록된 ID 입니다.');
        // $('#checkit').prop('disabled', true);
        $('#insertID').val("");
        $('#insertID').focus();
      } else {
        alert("사용 가능한 ID 입니다.");
        // 사용 가능한 아이디일 경우 가입하기 버튼 클릭되게
        $('#checkit').prop('disabled', false);
        $('#resulttext').css('color', 'blue');
        $('#resulttext').text('사용 가능한 ID 입니다.');
      }
    },
    error : function(xhr, status, e) {// e:에러
      alert("error : " + e);
    }
  });
  return false;// 거짓일 경우 진행 멈춤
}

function checkPW() {
  // 패스워드가 적합한지 검사
  var re = /(?=.*\d{1,12})(?=.*[~`!@#$%\^&*()-+=]{1,12})(?=.*[a-zA-Z]{2,12}).{6,12}$/;
  var pw = $('#insertPW').val();
  if (!re.test(pw)) {
    alert("PW는 숫자, 영문자, 특수문자 조합으로 6~12자리를 입력하세요.");
    $('#insertPW').val("");
    $('#insertPW').focus();
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

// 필수 입력 체크
function check() {
  if (document.frm.id.value == "") {
    alert("아이디를 입력하세요.");
    document.frm.id.value = '';
    document.frm.id.focus();
    return false;
  }
  if (document.frm.pw1.value == "") {
    alert("비밀번호를 입력하세요.");
    document.frm.pw1.value = '';
    document.frm.pw1.focus();
    return false;
  }
  if (document.frm.pw2.value == "") {
    alert("비밀번호 확인을 입력하세요.");
    document.frm.pw2.value = '';
    document.frm.pw2.focus();
    return false;
  }
  if (document.frm.pw1.value != document.frm.pw2.value) {
    alert("비밀번호가 일치하지 않습니다.");
    document.frm.pw2.focus();
    return false;
  }
  if (document.frm.name.value == "") {
    alert("이름을 입력하세요.");
    document.frm.name.focus();
    return false;
  }

  if (document.frm.email.value == "") {
    alert("이메일을 입력하세요.");
    document.frm.email.focus();
    return false;
  }

  if (document.frm.phone.value == "") {
    alert("핸드폰번호를 입력하세요.");
    document.frm.phone.focus();
    return false;
  }

  // 성별 체크
  var genChk = false;
  var arr_gen = document.getElementsByName("gen");
  for (var i = 0; i < arr_gen.length; i++) {
    if (arr_gen[i].checked == true) {
      genChk = true;
      break;
    }
  }
  if (!genChk) {
    alert("성별을 체크해주세요.");
    return false;
  }

  // 약관체크
  var chk2 = document.frm.check_pil.checked;
  if (!chk2) {
    alert("개인정보 제공 및 수집에 동의해주세요.");
    return false;
  }

}
