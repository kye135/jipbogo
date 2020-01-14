<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>방정보상세</title>
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

<body>
	<div id="container">
		<div id="sub_top_banner">
			<img src="img/sub_banner.jpg">
		</div>
		<div id="sub_content">
			<div class="sub_location">
				<img src="img/home_icon.png"> > 방정보
			</div>
			<div class="sub_title">
				방정보<span class="solid_line"></span>
			</div>
			<div class="room_title">지점소개</div>
			<table class="room_intro">
				<tr>
					<td>지점 이름</td>
					<td colspan="3">
						${roomDetailRegist.house_name }
					</td>
				</tr>
				<tr>
					<td>주소</td>
					<td colspan="3">${roomDetailRegist.house_addr1 } ${roomDetailRegist.house_addr2 } ${roomDetailRegist.house_addr3 }</td>
				</tr>
				<tr>
					<td>주차여부</td>
					<td>${roomDetailRegist.house_parking }</td>
					<td class="td1">성별</td>
					<td>${roomDetailRegist.house_gen }</td>
				</tr>
				<tr>
					<td>지점종료계약일</td>
					<td>${roomDetailRegist.house_exp }</td>
					<td class="td1">최대거주인원</td> 
						<td>${roomDetailRegist.house_max }명</td>
				</tr>
				<tr>
					<td>주택유형</td>
					<td>${roomDetailRegist.house_type }</td>
					<td class="td1">구조</td>
					 <td>${roomDetailRegist.house_layout }</td>
				</tr>
				<tr>
					<td>지점소개</td>
					<td colspan="3">${roomDetailRegist.house_intro }</td>
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
					<td class="td3">지점운영자</td>
					<td class="td3">${roomDetailRegist.manager_name }</td>
				</tr>
				<tr>
					<td class="td3">휴대폰</td>
					<td class="td3">${roomDetailRegist.manager_phone }</td>
				</tr>				
				<tr>
					<td>이메일</td>
					<td>${roomDetailRegist.manager_email }</td>
				</tr>				
			</table>
			<div class="btn">
        		<button type="submit" onclick="location.href='roomRegistList.do'">목록</button>
      		</div>
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