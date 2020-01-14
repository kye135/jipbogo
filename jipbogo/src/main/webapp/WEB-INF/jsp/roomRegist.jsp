<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>방등록</title>
<%@ include file="skin/header.jsp"%>
<script>
var num = ['A', 'B', 'C', 'D', 'E', 'F'];
var num2 = ['a', 'b', 'c', 'd', 'e', 'f'];
var i = 1;
function add(){
	if(i > 6){
		alert("최대 6개 까지만 추가 가능합니다.");
	} else{
		var newDivHtml = "<div class='room_regdetail'>"
		newDivHtml += "<div class='type'>"+num[i-1]+"</div>"//"+num[i-1]+"
		newDivHtml += "<div class='row'>"
		newDivHtml += "<div class='row1_1'>성별<span class='pil'> *</span></div>"
		newDivHtml += "<div class='row1_2'>"
		newDivHtml += "<input type='radio' name='room_"+num2[i-1]+"_gen' value='m'>남성전용"
		newDivHtml += "<input type='radio' name='room_"+num2[i-1]+"_gen' value='f'>여성전용"
		newDivHtml += "</div>"
		newDivHtml += "<div class='row1_1'>타입</div>"
		newDivHtml += "<div class='row1_2'><input type='text' name='room_"+num2[i-1]+"_type' placeholder='몇인실인지 적어주세요.'> 인실</div>"
		newDivHtml += "</div>"
		newDivHtml += "<div class='row'>"
		newDivHtml += "<div class='row1_1'>면적</div>"
		newDivHtml += "<div class='row1_2'><input type='text' name='room_"+num2[i-1]+"_size'> ㎡</div>"
		newDivHtml += "<div class='row1_1'>운영관리비</div>"
		newDivHtml += "<div class='row1_2'><input type='text' name='room_"+num2[i-1]+"_cost'> 원</div>"
		newDivHtml += "</div>"
		newDivHtml += "<div class='row'>"
		newDivHtml += "<div class='row1_1'>보증금</div>"
		newDivHtml += "<div class='row1_2'><input type='text' name='room_"+num2[i-1]+"_depo'> 원</div>"
		newDivHtml += "<div class='row1_1'>선불공과금</div>"
		newDivHtml += "<div class='row1_2'><input type='text' name='room_"+num2[i-1]+"_utility'> 원</div>"
		newDivHtml += "</div>"
		newDivHtml += "<div class='row'>"
		newDivHtml += "<div class='row1_1'>월세</div>"
		newDivHtml += "<div class='row1_2'><input type='text' name='room_"+num2[i-1]+"_month'> 원</div>"
		newDivHtml += "<div class='row1_1'>입주가능일</div>"
		newDivHtml += "<div class='row1_2'><input type='text' name='room_"+num2[i-1]+"_avail' id='insertAvail' onchange='return checkAvail()' placeholder='0000-00-00 형태로 입력하세요.'></div>"
		newDivHtml += "</div>"
		newDivHtml += "</div>"
	 	
		document.getElementById("roomadd").innerHTML += newDivHtml;
		i++;
		
		
	}	
} 
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
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
    		   bgColor: "#ECECEC", //바탕 배경색
    		   searchBgColor: "#FFFFFF", //검색창 배경색
    		   contentBgColor: "#FFFFFF", //본문 배경색(검색결과,결과없음,첫화면,검색서제스트)
    		   pageBgColor: "#FAFAFA", //페이지 배경색
    		   textColor: "#333333", //기본 글자색
    		   queryTextColor: "#222222", //검색창 글자색
    		   postcodeTextColor: "#FA4256", //우편번호 글자색
    		   emphTextColor: "#008BD3", //강조 글자색
    		   outlineColor: "#E0E0E0" //테두리
    		};
  
    
//필수 입력 체크
function check(){
	if(document.frm.house_name.value == ""){
		alert("지점이름을 입력하세요.");
		document.frm.house_name.value = '';
		document.frm.house_name.focus();
		return false;
	}
	if(document.frm.house_addr1.value == ""){
		alert("우편번호를 입력하세요.");
		document.frm.house_addr1.value = '';
		document.frm.house_addr1.focus();
		return false;
	}
	if(document.frm.house_addr2.value == ""){
		alert("주소를 입력하세요.");
		document.frm.house_addr2.value = '';
		document.frm.house_addr2.focus();
		return false;
	}
	if(document.frm.house_addr3.value == ""){
		alert("상세주소를 입력하세요.");
		document.frm.house_addr3.value = '';
		document.frm.house_addr3.focus();
		return false;
	}
	if(document.frm.house_parking.value == ""){
		alert("주차여부를 선택하세요.");
		document.frm.house_parking.value = '';
		document.frm.house_parking.focus();
		return false;
	}
	if(document.frm.house_gen.value == ""){
		alert("성별을 선택하세요.");
		document.frm.house_gen.value = '';
		document.frm.house_gen.focus();
		return false;
	}
	if(document.frm.room_a_gen.value == ""){
		alert("하나 이상의 방정보는 입력하세요.");
		document.frm.room_a_gen.value = '';
		document.frm.room_a_gen.focus();
		return false;
	}
	if(document.frm.manager_name.value == ""){
		alert("담당자 이름을 입력하세요.");
		document.frm.manager_name.value = '';
		document.frm.manager_name.focus();
		return false;
	}
	if(document.frm.manager_phone.value == ""){
		alert("핸드폰 번호를 입력하세요.");
		document.frm.manager_phone.value = '';
		document.frm.manager_phone.focus();
		return false;
	}
	if(document.frm.manager_email.value == ""){
		alert("이메일을 입력하세요.");
		document.frm.manager_email.value = '';
		document.frm.manager_email.focus();
		return false;
	}
}

function checkh_Name(){
	//집이름이 한글로 들어오는지 검사
	var nameRe = /^[가-힣]{2,4}$/;
	var name = $('#inserth_Name').val();
	if(!nameRe.test(name)){
		alert("지점이름이 올바르지 않습니다.");
		$('#inserth_Name').val("");
		$('#inserth_Name').focus();
		return false;
	}
}
function checkExp(){
	//지점계약종료일
	var expRe = /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/;
	var exp = $('#insertExp').val();
	if(!expRe.test(exp)){
		alert("지점계약종료일을 확인해주세요.");
		$('#insertExp').val("");
		$('#insertExp').focus();
		return false;
	}
}
function checkAvail(){
	//입주가능날짜
	var expRe = /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/;
	var exp = $('#insertAvail').val();
	if(!expRe.test(exp)){
		alert("입주가능일을 확인해주세요.");
		$('#insertAvail').val("");
		$('#insertAvail').focus();
		return false;
	}
}
function checkEmail(){
	//이메일이 적합한지 검사
	var re2 = /^[a-z0-9_]+[a-z0-9]*[@]{1}[a-z0-9]+[a-z0-9]*[.]{1}[a-z]{1,3}$/;
	var email = $('#insertE').val();
	if(!re2.test(email)){
		alert("적합하지 않은 이메일 형식입니다.");
		$('#insertE').val("");
		$('#insertE').focus();
		return false;
	}
}
function checkName(){
	//이름이 한글로 들어오는지 검사
	var nameRe = /^[가-힣]{2,4}$/;
	var name = $('#insertName').val();
	if(!nameRe.test(name)){
		alert("이름이 올바르지 않습니다.");
		$('#insertName').val("");
		$('#insertName').focus();
		return false;
	}
}
function checkPhone(){
	//전화번호
	var phoneRe = /^[0-9]{11,11}$/;
	var phone = $('#insertPhone').val();
	if(!phoneRe.test(phone)){
		alert("핸드폰번호를 확인해주세요.");
		$('#insertPhone').val("");
		$('#insertPhone').focus();
		return false;
	}
}
</script>
<body>
	<div id="container">
		<div id="sub_top_banner">
			<img src="img/sub_banner.jpg">
		</div>
		<div id="sub_content">
			<div class="sub_location">
				<img src="img/home_icon.png"> > 방등록
			</div>
			<div class="sub_title">
				방등록<span class="solid_line"></span>
			</div>
			<form action="roomRegistWriteAction.do" method="post" name="frm" enctype="multipart/form-data">
			<div class="room_title">지점소개</div>
			<table class="room_intro">
				<tr>
					<td>지점 이름<span class="pil"> *</span></td>
					<td colspan="3">
						<input type="text" name="house_name" id="inserth_Name" onchange="return checkh_Name()">
					</td>
				</tr>
				<tr>
					<td>주소<span class="pil"> *</span></td>
					<td colspan="3">
						<input type="text" id="postcode" name="house_addr1" placeholder="우편번호" size="7">
						<input type="text" id="address" name="house_addr2" placeholder="주소">
						<input type="text" id="detailAddress" name="house_addr3" placeholder="상세주소">
						<input type="button" class="addbtn" onclick="execDaumPostcode()" value="검색">
					</td>
				</tr>
				<tr>
					<td>주차여부<span class="pil"> *</span></td>
					<td>
						<select name="house_parking">
							<option value="y">가능</option>
							<option value="n">불가능</option>
						</select>
					</td>
					<td class="td1">성별<span class="pil"> *</span></td>
					<td>
						<select name="house_gen">
							<option value="m">남자전용</option>
							<option value="f">여자전용</option>
							<option value="u">남녀공용</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>지점종료계약일</td>
					<td>
						<input type="text" name="house_exp" id="insertExp" onchange="return checkExp()" placeholder="0000-00-00 형태로 입력하세요." > 
					</td>
					<td class="td1">최대거주인원</td> 
						<td><input type="text" name="house_max"> 명</td>
				</tr>
				<tr>
					<td>주택유형</td>
					<td> <select name="house_type">
							<option value="apt">아파트</option>
							<option value="detach">단독주택</option>
							<option value="villa1">다세대(빌라)</option>
							<option value="villa2">다가구(빌라)</option>
							<option value="etc">기타</option>
						</select>
					</td>
					<td class="td1">구조</td>
					 <td>
					  <input type="text" name="house_layout">
					  </td>
				</tr>
				<tr>
					<td>지점소개</td>
					<td colspan="3"><textarea name="house_intro"></textarea></td>
				</tr>
				<tr>
					<td>집 사진</td>
					<td id="fileDiv">
						<a href="#this" class="f_btn" id="addfile">파일 추가</a>
						<!-- <input type="file" class="file" id="file1" name="h_file1"> 
						<input type="file" class="file" id="file2" name="h_file2"> 
						<input type="file" class="file"	id="file3" name="h_file3"> 
						<br> -->
						<span class="explain">※ 최대 10개까지 등록 가능합니다.</span>
						
					</td>
					<td colspan="2">	
					<!-- 
						<input type="file" class="file" id="file4" name="h_file4"> 
						<input type="file" class="file" id="file5" name="h_file5">
						<input type="file" class="file" id="file6" name="h_file6">  
						<br>&nbsp; -->
					</td>	
				</tr>
			</table>
			
			<div class="room_title">방 정보</div>
			<div class="room_reginfo">
				<div id="roomadd">
				</div>
				<div class="room_btn" onclick="add()">방 추가하기</div>
			</div>
				
			<div class="room_title">담당자소개</div>
			<table class="p_info">
				<tr>
					<td class="td3">지점운영자<span class="pil"> *</span></td>
					<td class="td3">
						<input type="text" name="manager_name" id="insertName" onchange="return checkName()">
					</td>
				</tr>
				<tr>
					<td class="td3">휴대폰<span class="pil"> *</span></td>
					<td class="td3">
						<input type="text" name="manager_phone" id="insertPhone" onchange="return checkPhone()" placeholder="'-' 없이 입력해주세요.">
					</td>
				</tr>				
				<tr>
					<td>이메일<span class="pil"> *</span></td>
					<td>
						<input type="email" id="insertE" onchange="return checkEmail()" name="manager_email">
					</td>
				</tr>				
			</table>
			<div class="btn">
        		<button type="submit" onclick="return check()">방 등록</button>
      		</div>
      		</form>
		</div>
	</div>

<script>
var count = 1;


$(document).ready(function(){
	$("#addfile").on("click", function(e){
		e.preventDefault();
		fn_addfile();
	})
})
function fn_addfile(){
	if(count > 10){
		alert("최대 10개까지만 등록 가능합니다.");
	} else{
		var str="<p><input type='file' class='file' name='house_img"+(count++)+"'><a href='#this' class='f_btn' name='delete'>삭제</a></p>";
	}
	$("#fileDiv").append(str);
	$("a[name='delete']").on("click", function(e){
		e.preventDefault();
		fn_deletefile($(this));
	})
}
function fn_deletefile(obj){
	obj.parent().remove();
}
</script>
<%@ include file="skin/footer.jsp"%>