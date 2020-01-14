// 이름이 한글로 들어오는지 검사
function checkName() {
  var nameRe = /^[가-힣]{2,4}$/;
  var name = $('#insertName').val();
  if (!nameRe.test(name)) {
    alert("이름이 올바르지 않습니다.");
    $('#insertName').val("");
    $('#insertName').focus();
    return false;
  }
}

// 이메일이 적합한지 검사
function checkEmail() {
  var re2 = /^[a-z0-9_]+[a-z0-9]*[@]{1}[a-z0-9]+[a-z0-9]*[.]{1}[a-z]{1,3}$/;
  var email = $('#insertE').val();
  if (!re2.test(email)) {
    alert("적합하지 않은 이메일 형식입니다.");
    $('#insertE').val("");
    $('#insertE').focus();
    return false;
  }
}

// 전화번호
function checkPhone() {
  var phoneRe = /^[0-9]{11,11}$/;
  var phone = $('#insertPhone').val();
  if (!phoneRe.test(phone)) {
    alert("핸드폰번호를 확인해주세요.");
    $('#insertPhone').val("");
    $('#insertPhone').focus();
    return false;
  }
}

// 아이디 찾기 - 필수 입력 체크
function check() {
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
}

function checkID2() {
  var id = $('#insertID2').val();
  var re = /^[a-z0-9]{4,12}$/;
  if (!re.test(id)) {
    alert("ID는 4~12자 이내의 영문 소문자와 숫자로만 입력 가능합니다.");
    $('#insertID2').val("");
    $('#insertID2').focus();
    return false;
  }
}

// 이름이 한글로 들어오는지 검사
function checkName2() {
  var nameRe = /^[가-힣]{2,4}$/;
  var name = $('#insertName2').val();
  if (!nameRe.test(name)) {
    alert("이름이 올바르지 않습니다.");
    $('#insertName2').val("");
    $('#insertName2').focus();
    return false;
  }
}

// 이메일이 적합한지 검사
function checkEmail2() {
  var re2 = /^[a-z0-9_]+[a-z0-9]*[@]{1}[a-z0-9]+[a-z0-9]*[.]{1}[a-z]{1,3}$/;
  var email = $('#insertE2').val();
  if (!re2.test(email)) {
    alert("적합하지 않은 이메일 형식입니다.");
    $('#insertE2').val("");
    $('#insertE2').focus();
    return false;
  }
}

// 전화번호
function checkPhone2() {
  var phoneRe = /^[0-9]{11,11}$/;
  var phone = $('#insertPhone2').val();
  if (!phoneRe.test(phone)) {
    alert("핸드폰번호를 확인해주세요.");
    $('#insertPhone2').val("");
    $('#insertPhone2').focus();
    return false;
  }
}

// 비밀번호 찾기 - 필수 입력 체크
function check2() {
  if (document.frm2.id.value == "") {
    alert("아이디를 입력하세요.");
    document.frm2.id.value = '';
    document.frm2.id.focus();
    return false;
  }
  if (document.frm2.name.value == "") {
    alert("이름을 입력하세요.");
    document.frm2.name.focus();
    return false;
  }

  if (document.frm2.email.value == "") {
    alert("이메일을 입력하세요.");
    document.frm2.email.focus();
    return false;
  }

  if (document.frm2.phone.value == "") {
    alert("핸드폰번호를 입력하세요.");
    document.frm2.phone.focus();
    return false;
  }
}

$(function() {
  $('ul.sign_tab li').click(function() {
    var activeTab = $(this).attr('data-tab');
    $('ul.sign_tab li').removeClass('current');
    $('.tabcontent').removeClass('current');
    $(this).addClass('current');
    $('#' + activeTab).addClass('current');
  })
});
