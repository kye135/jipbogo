var num = [ 'B', 'C', 'D', 'E', 'F' ];

var i = 1;

function add() {
  if (i > 5) {
    alert("최대 6개 까지만 추가 가능합니다.");
  } else {
    var newDivHtml = "<div class='room_regdetail'>"
    newDivHtml += "<div class='type' name='" + num[i - 1] + "'>" + num[i - 1]
        + "</div>"
    newDivHtml += "<div class='row'>"
    newDivHtml += "<div class='row1_1'>성별</div>"
    newDivHtml += "<div class='row1_2'>"
    newDivHtml += "<input type='radio' name='r_gen" + i + "' value='m'>남성전용"
    newDivHtml += "<input type='radio' name='r_gen" + i + "' value='f'>여성전용"
    newDivHtml += "</div>"
    newDivHtml += "<div class='row1_1'>타입</div>"
    newDivHtml += "<div class='row1_2'><input type='text' name='r_type" + i
        + "' placeholder='몇인실인지 적어주세요.'></div>"
    newDivHtml += "</div>"
    newDivHtml += "<div class='row'>"
    newDivHtml += "<div class='row1_1'>면적</div>"
    newDivHtml += "<div class='row1_2'><input type='text' name='r_size" + i
        + "'></div>"
    newDivHtml += "<div class='row1_1'>운영관리비</div>"
    newDivHtml += "<div class='row1_2'><input type='text' name='r_cost" + i
        + "'></div>"
    newDivHtml += "</div>"
    newDivHtml += "<div class='row'>"
    newDivHtml += "<div class='row1_1'>보증금</div>"
    newDivHtml += "<div class='row1_2'><input type='text' name='r_depo" + i
        + "'></div>"
    newDivHtml += "<div class='row1_1'>선불공과금</div>"
    newDivHtml += "<div class='row1_2'><input type='text' name='r_utility" + i
        + "'></div>"
    newDivHtml += "</div>"
    newDivHtml += "<div class='row'>"
    newDivHtml += "<div class='row1_1'>월세</div>"
    newDivHtml += "<div class='row1_2'><input type='text' name='r_month" + i
        + "'></div>"
    newDivHtml += "<div class='row1_1'>입주가능일</div>"
    newDivHtml += "<div class='row1_2'><input type='text' name='r_avail" + i
        + "' placeholder='년-월-일 형태로 입력하세요.'></div>"
    newDivHtml += "<div class='row'>"
    newDivHtml += "</div>"
    newDivHtml += "</div>"

    document.getElementById("roomadd").innerHTML += newDivHtml;
    i++;

  }
}

function execDaumPostcode() {
  new daum.Postcode({
    oncomplete : function(data) {
      // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

      // 각 주소의 노출 규칙에 따라 주소를 조합한다.
      // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
      var addr = ''; // 주소 변수
      var extraAddr = ''; // 참고항목 변수

      // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
      if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
        addr = data.roadAddress;
      } else { // 사용자가 지번 주소를 선택했을 경우(J)
        addr = data.jibunAddress;
      }

      // 우편번호와 주소 정보를 해당 필드에 넣는다.
      document.getElementById('postcode').value = data.zonecode;
      document.getElementById("address").value = addr;
      // 커서를 상세주소 필드로 이동한다.
      document.getElementById("detailAddress").focus();
    }
  }).open();
}

var themeObj = {
  bgColor : "#ECECEC", // 바탕 배경색
  searchBgColor : "#FFFFFF", // 검색창 배경색
  contentBgColor : "#FFFFFF", // 본문 배경색(검색결과,결과없음,첫화면,검색서제스트)
  pageBgColor : "#FAFAFA", // 페이지 배경색
  textColor : "#333333", // 기본 글자색
  queryTextColor : "#222222", // 검색창 글자색
  postcodeTextColor : "#FA4256", // 우편번호 글자색
  emphTextColor : "#008BD3", // 강조 글자색
  outlineColor : "#E0E0E0" // 테두리
};
