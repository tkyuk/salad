<%@page import="kr.co.salad.manager.vo.MngCancelVO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="kr.co.salad.manager.domain.MngCancelDomain"%>
<%@page import="kr.co.salad.manager.dao.MngCancelDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=" "%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="http://salad.sist.co.kr/resources/mng_css/styles.css" rel="stylesheet" />
        <style type="text/css"> 
        
        .tableMainBtn{
        background-color: #d5d5d5; 
        width:100px;
        }
        
        .tableMainBtn:hover{
		border-color: #14CEA9;
		background-color:#fff;
		color:#14CEA9;
		}
		
		.tableMainNum{
		color:rgb(22,160,133);
		text-decoration: none;
		}
		
		.tableMainNum:hover{
		color:rgb(22,160,133);
		text-decoration: underline;
		}
		
		.button2{
		width: 14%; 
		background-color: white; 
		border: 1px solid grey;
		}
	
		.button2:hover{
			background-color: #f0f0f0;
		}
		
		 .popup {
			display: flex;
			justify-content: center;
			align-items: center;
			position: fixed;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			background: rgba(0, 0, 0, .7);
			z-index: 1;
		}
			
		.popup.hide {
			display: none;
		}
			
		.popup.has-filter {
			backdrop-filter: blur(4px);
			-webkit-backdrop-filter: blur(4px);
		}
			
		.popup .content {
			padding: 20px;
			background: #fff;
			border-radius: 5px;
			box-shadow: 1px 1px 3px rgba(0, 0, 0, .3);
		}
			  
		.button{
		width: 100px;
		height: 40px;
		margin: 10px;
		background-color: transparent;
		border: 1px solid #14CEA9;
		color: #14CEA9;
		line-height: 30px;
		
		}
		.button:hover {
			background-color: #14CEA9;
			color: white;
		} 
	
		.popupTable>tr>th{
			width: 30%;
			background-color:#f0f0f0;
			padding: 10px;
		}
	
		.popupTable>tr>th, .popupTable>tr>td{
			border: 1px solid #f0f0f0;
		}
        </style>
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>   		   		
   		<script src="https://code.jquery.com/jquery-3.4.1.js"></script> 
   		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
   		<script type="text/javascript">
   		
   		$(function(){
   			setCountList(1);
   		});
   		
   		//검색어 기능
   		/* $("#searchBtn").click(function(){
   		 let searchText = document.getElementsByName("searchText")[0].value;
	   	  let search =  document.getElementsByName("search")[0].value;
	   	  
	   	  console.log(searchText)
	   	  console.log(search)
   			setCountList($("#currentPage").val());
   		}); */
   		
   		function setCountList(currentPage){//리뷰 관리 리스트
   			$.ajax({
   				url:"mng_cancelList_ajax.do",
   				data:"currentPage="+currentPage,
   				dataType:"json",
   				error:function(request,status,error){
   					alert("리뷰 관리 리스트를 불러오는 중에 문제가 발생했습니다.");
   					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
   				},
   				success:function(jsonObj){
   					/* 페이징 테이블 */
   				   /*  $("#cancelListOutput").show();
   					var tbOutput="<table class='table'>";
   					 tbOutput+="<thead class='table-light' style='height: 50px;'>";
   					 tbOutput+="<tr><th>주문번호</th><th>아이디</th><th>주문자</th><th>주문 일자</th><th>총 주문 가격</th><th>취소 현황</th></tr>";
   					 tbOutput+="</thead>";
   					 tbOutput+="<tbody>";
   					 if(!jsonObj.isEmpty){
   						$.each(jsonObj.list, function(i, json){
   							tbOutput+="<tr>";
   							tbOutput+="<td>"+json.orderNum+"</td>";
   							tbOutput+="<td>"+json.name+"</td>";
   							tbOutput+="<td>"+json.orderDate+"</td>";
   							tbOutput+="<td>"+json.id+"</td>";
   							tbOutput+="<td><button type='button' class='btn btn-light btn-sm' onclick=\"setDetail('"+json.revNum+"')\">상세보기</button></td>";
   							tbOutput+="</tr>";
   						});//each
   					} else {
   							tbOutput+="<tr><td colspan=8>데이터가 존재하지 않습니다.</td></tr>";
   					}//end else
   							tbOutput+="</tbody>";
   							tbOutput+="</table>";
   					$("#cancelListOutput").html(tbOutput); */
   					//document.getElementById("total").innerHTML = jsonObj.totalCount; 
   					
   					/* 페이징 버튼 */
   					//var pgOutput="<nav><ul>";
   					/* var pgOutput="";
   					if( jsonObj.startPage != 1 ) {
   						pgOutput+="<li>";
   						pgOutput+="<a href='#void' onclick='setCountList(" + 1 + ")' tabindex='-1'";
   						pgOutput+="aria-disabled='true'>&lt&lt;<!-- << --></a></li>";
   					}//end if
   					if( jsonObj.startPage != 1 ) {
   						pgOutput+="<li>";
   						pgOutput+="<a href='#void' onclick='setCountList(" + (jsonObj.startPage-1) + ")' tabindex='-1'";
   						pgOutput+="aria-disabled='true'>&lt;<!-- < --></a></li>";
   					}//end if
   					for(var i=jsonObj.startPage;i<=jsonObj.endPage;i++){
   						pgOutput+="<li>"
   						pgOutput+="<a href='#void' onclick='setCountList(" + i  + ")'>"+ i +"</a></li>";
   					}//end for
   					if(jsonObj.totalPage != jsonObj.endPage) {
   						pgOutput+="<li>";
   						pgOutput+="<a href='#void' onclick='setCountList(" + (jsonObj.endPage + 1) + ")'>&gt;<!-- > --></a></li>"
   					}//end if
   					if(jsonObj.totalPage != jsonObj.endPage) {
   						pgOutput+="<li>";
   						pgOutput+="<a href='#void' onclick='setCountList(" + jsonObj.totalPage + ")'>&gt&gt;<!-- >> --></a></li>"
   					}//end if
   					pgOutput+="";
   					
   					pgOutput+="<input type='hidden' id='currentPage' name='currentPage' value='"+jsonObj.currentPage+"'/>"
   					
   					$("#pageOutput").html(pgOutput); */
   					var pgOutput="<nav aria-label='Page navigation example' style='display: flex; justify-content: center; margin: 40px 0px;'>";
   					pgOutput+="<ul class='pagination'>";
   				if( jsonObj.startPage != 1 ) {
   					pgOutput+="<li class='page-item'>";
   					pgOutput+="<a class='page-link' href='#void' onclick='setDeilList(" + 1 + ")' tabindex='-1'";
   					pgOutput+="aria-disabled='true'>&lt&lt;<!-- << --></a></li>";
   				}//end if
   				if( jsonObj.startPage != 1 ) {
   					pgOutput+="<li class='page-item'>";
   					pgOutput+="<a class='page-link' href='#void' onclick='setDeilList(" + (jsonObj.startPage-1) + ")' tabindex='-1'";
   					pgOutput+="aria-disabled='true'>&lt;<!-- < --></a></li>";
   				}//end if
   				for(var i=jsonObj.startPage;i<=jsonObj.endPage;i++){
   					pgOutput+="<li class='page-item'>"
   					pgOutput+="<a class='page-link' href='#void' onclick='setDeilList(" + i  + ")'>"+ i +"</a></li>";
   				}//end for
   				if(jsonObj.totalPage != jsonObj.endPage) {
   					pgOutput+="<li class='page-item'>";
   					pgOutput+="<a class='page-link' href='#void' onclick='setDeilList(" + (jsonObj.endPage + 1) + ")'>&gt;<!-- > --></a></li>"
   				}//end if
   				if(jsonObj.totalPage != jsonObj.endPage) {
   					pgOutput+="<li class='page-item'>";
   					pgOutput+="<a class='page-link' href='#void' onclick='setDeilList(" + jsonObj.totalPage + ")'>&gt&gt;<!-- >> --></a></li>"
   				}//end if
   				pgOutput+="</ul></nav>";
   				
   				pgOutput+="<input type='hidden' id='currentPage' name='currentPage' value='"+jsonObj.currentPage+"'/>"
   				
   				$("#pageOutput").html(pgOutput);
   				}//success
   			})//ajax
   		}//setMemberList
   		</script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
            href="mng_dashboard.do"><img alt="img" src="http://salad.sist.co.kr/resources/mng_images/saladLogo.png" height="50px"></a>
            <div class="ms-auto" style="color:white;">3조&nbsp;관리자님,어서오세요.&nbsp;&nbsp;</div>
            <!-- Navbar-->
             <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <!-- <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li> -->
                        <li><a class="dropdown-item" href="mng_logout.do">Logout</a></li>
                    </ul>
                </li>
            </ul> 
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">메인</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="mng_dashboard.do">
                                -대시보드
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">회원관리</div>
		                <a class="nav-link" style="padding-bottom:28px;" href="http://salad.sist.co.kr/mng_member.do">
		                    -회원 관리
		                </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">상품 관리</div>
                            <a class="nav-link" href="mng_prd.do">
                                -상품 등록
                            </a>
                            <a class="nav-link" style="padding-top:0; padding-bottom:28px;"href="mng_rev.do">
                                -상품 후기
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">주문 관리</div>
                            <a class="nav-link" href="mng_order_main.do">
                                -주문 관리
                            </a>
                            <a class="nav-link" style="padding-top:0;"href="mng_cancel.do">
                                -취소 관리
                            </a>
                            <a class="nav-link" style="padding-top:0; padding-bottom:28px" href="mng_deli.do">
                                -배송 관리
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">게시판 관리</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="mng_notice.do">
                                -공지사항
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">문의 관리</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="mng_qna.do">
                                -상품문의
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                    	<div style="display:flex; justify-content:space-between; flex-direction:row;
                    	padding:20px 0 30px 0;">
	                    	<div>
	                        <h1 id="clock" class="mt-4" 
	                        style="font-size:20px; color:rgb(94,94,94); font-weight:bold;">clock</h1>
	                        <div style="font-size:24px; color:rgb(51,51,51); font-weight:bold;">
	                        환영합니다! 3조 관리자님.
	                        </div>
	                        </div>
	                        <div>
	                        <img src="http://salad.sist.co.kr/resources/mng_images/socialMedia.png" width="130px">
	                        </div>
	                        <div style="width:319px;"></div>
                        </div>
                        </div>
                        <div class="row" style="--bs-gutter-x:0;">
                       			<!-- 내역 -->
                        		<div style="width:100%; display:flex; justify-content:center;
                        		 font-size:16px; font-weight:bold; padding:10px 0 20px 0; ">
		                        		<div style="width:150px; margin:0 100px 0 0;">
		                        		취소 요청_내역
		                        		</div>
		                        		<div style="width:150px;">
		                        		취소 확정_내역
		                        		</div>
                        		</div>
                        		<!-- 건수 -->
                       		 	<div style="width:100%; position:relative; display:flex; justify-content:center; align-items:center; padding:0 0 40px 0;">
		                        	<div style="margin:0 100px 0 0;">
		                        	<div style="background:rgb(141,216,198); width:150px; height:155px;
		                        	border-radius:35px; ">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:white; font-weight:bold; font-size:20px; ">
				                        	주문건수
				                        	</div>
				                        	<div style="color:white; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;"><%= request.getAttribute("cancelRequest") %></span>건
				                        	</div>
			                        	</div>
		                        	</div>
		                        	</div>
		                        	
		                        	<div style="background:rgb(186,212,206); width:150px; height:155px;
		                        	border-radius:35px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                        	<div style=" color:white; font-weight:bold; font-size:20px;">
				                        	주문건수
				                        	</div>
				                        	<div style="color:white; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;"><%= request.getAttribute("cancelConfirm") %></span>건
				                        	</div>
			                        	</div>
		                        	</div>
                       		 </div>
                       		 <!-- 건수 끝 --> 
                       	</div>
					<div class="row px-4"  style="--bs-gutter-x:0;">
						<div style="width: 83%; margin: 0 0 0 0; text-align: center;">
						<form id="categoryFrm" name="categoryFrm" action="#" method="post" style="display: flex; justify-content: flex-end; margin-bottom: 10px;">
							<!-- <select name="main" id="mai"  style="width: 16%"> -->
							<%
							String category = request.getParameter("mainCateNum");
							String category2 = request.getParameter("subCateNum");
							System.out.println("나오냐"+category);
							System.out.println("나오냐2"+category2);
							if(category == null) category = "";
							if(category == "1") {
								category = "정기배송";
							System.out.println("이제"+category);
							}
							MngCancelVO cancelVO = new MngCancelVO();
							%>
							<select name="searchText" class="select"  style="width: 150px; margin:0 10px 0 0;">
								<option value="none">---키워드 선택---</option>
								<option  value="name"<c:if test="${searchText eq 'name'}">selected</c:if>>
								이름
								</option>
								<option  value="orderNum"<c:if test="${searchText eq 'orderNum'}">selected</c:if>>
								주문 번호
								</option>
								<option  value="orderDate"<c:if test="${searchText eq 'orderDate'}">selected</c:if>>
								주문 날짜
								</option>
							</select>
							<input type="text"  name="search" id="search" value="${search}" style="width: 15%;margin:0 10px 0 0;">
							<input type="text" style="display: none;">
							<input type="button" style="width: 10%;" value="검색" class="button2" id="searchBtn" name="searchBtn">
						</form>
						</div>

	               	<div style="width: 83%; margin: 10px auto; text-align: center;">
               		<!-- <form id="orderForm" name="orderForm" action="mng_orderDetail.do" method="get"> -->
<!-- 						<div id="cancelListOutput">
						왜 안나와?
						</div> -->
						<!-- <div id="pageOutput">
						</div> -->
               		<table class="table" style="table-layout:fixed;">
					  <thead class="table-light" style="height: 50px;">
						<tr>
							<th>주문번호</th>
							<th>아이디</th>
							<th>주문자</th>
							<th>주문 일자</th>
							<th>총 주문 가격</th>
							<th>취소 현황</th>
						</tr>
					  </thead>
					  <!-- <tbody id="beforeTr" > -->
					  	<!-- 카테고리 검색 전 표시되는 테이블  -->
					 	<!--  <tr>
						 	<td colspan="8" style="border-bottom:none;"><img alt="img" src="./resources/mng_images/list-man.png" style="width:100px; margin:20px 0 0 0;"></td>
						 	</tr>
						 	<tr height="80px">
						 	<td colspan="8"style="border-top:none; font-weight:bold;">상위&amp;하위 카테고리명을 입력해주세요.</td>
					 	</tr>
					 	 </tbody> -->
					 	<!-- 카테고리 검색 전 표시되는 테이블 끝 -->
					  
					  	<!-- 카테고리 검색 후 표시되는 테이블 -->
					  	<tbody id="afterTr">
					  	<c:forEach var="allCancel" items="${allCancelList}">
						 <tr>
						 	<!-- 환불 조회 기능 구현 못해서 막아놓음 -->
							<%-- <td><a id="searchOrder"  class="tableMainNum" href="mng_cancel_detail.do?orderNum=${allCancel.orderNum}
							&orderStatus=${allCancel.orderStatus}">${allCancel.orderNum}</a></td> --%>
							<!-- <td class="tableMainNum" > 나중에 링크 탈 때 꾸미는 요소임 -->
							<td>
							${allCancel.orderNum}</td>
							<td>${allCancel.id}</td>
							<td>${allCancel.name}</td>
							<td>${allCancel.orderDate}</td>
							<%-- <td>${allCancel.orderTotalPrice}원</td> --%>
							<td><fmt:formatNumber value="${allCancel.orderTotalPrice}" pattern="#,###"/>원</td> 
							<td>
							<button id="mngOrderBtn" value="mng_orderDetail.do?orderNum=${allCancel.orderNum}" type="button" class="btn btn-light btn-sm tableMainBtn" 
							onclick="if(this.value)location.href=(this.value);">
							<c:if test="${allCancel.orderStatus eq '4' }">
							취소 요청
							</c:if>
							<c:if test="${allCancel.orderStatus eq '5' }">
							취소 확정
							</c:if>
							</button>
							</td>
						</tr>
						</c:forEach>
						</tbody>
						<!-- 카테고리 검색 후 표시되는 테이블 끝 -->
					 <!--  </tbody> -->
					</table>
					<!-- </form> -->
               	</div>
			</div> <!--표 끝  -->   
          </main>
                  <div>
	               	<nav aria-label="Page navigation example" style="display: flex; justify-content: center; margin: 40px 0px;" >
					<ul class="pagination"> 
					<li>
					  <div id="pageOutput">
						</div>
					</li>
					    <!-- <li class="page-item">
					      <a class="page-link" href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					      </a>
					    </li>
					    <li class="page-item"><a class="page-link" href="#">1</a></li>
					    <li class="page-item"><a class="page-link" href="#">2</a></li>
					    <li class="page-item"><a class="page-link" href="#">3</a></li>
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li> -->
					 </ul>  
					</nav>
               	</div>
                	<!-- 푸터 -->
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="align-items-center justify-content-between small">
                            <div class="text-muted">
                            	<span style="margin: 0 30px 0 0;">회사소개</span>
                            	<span style="margin: 0 30px 0 0;">이용약관</span>
                            	<span style="margin: 0 30px 0 0;">개인정보처리방침</span>
                            	<span>이용안내</span>
                            </div>
                            <hr>
                            <div style="display: flex; justify-content: space-between;" >
	                             <div class="text-muted">
	                            	<div>법인명(상호) : 주식회사 샐러드월드 / 대표 : 3조 / TEL : 0000-0000 / FAX : 02-0000-0000</div>
	                            	<div>사업자등록번호 : 000-00-00000 / 통신판매업신고번호 : 제 0000 - 쌍용3조 - 0000호</div>
	                            	<div>주소 : 서울광역시 강남구 테헤란로 132 / 개인정보관리책임자 : 3조 / E-Mail : 3조@0000.co.kr</div>
	                        	</div>
	                        	<div>
	                        		<img alt="img" src="http://salad.sist.co.kr/resources/mng_images/saladLogo.png">
	                        	</div>
                        	</div>
                        </div>
                    </div>
                </footer>
                <!-- 푸터 끝 -->
            </div>
        </div>
        <!-- 팝업창 : mng_cancel_form/ 취소 현황-->
        <div id="mng_cancel_form" class="hide popup" align="center">
		<div class="content">
			<div style="width: 800px; border: 1px solid grey;">
				<div style="font-weight: bold; font-size: 20px; border-bottom: 2px solid #ddd; padding: 15px;" align="left">
					취소 현황
				</div>
				
				<div style="width: 800px;">
					<div style="margin:40px 0 40px 0;">
					<table id="detailPopup" class="member" style="width: 95%;">
						<tbody align="center">
							<tr height="40px" style="background-color: #f0f0f0; ">
								<th>주문번호</th>
								<th>주문자</th>
								<th>주문일자</th>
								<th>총 주문 가격</th>
							</tr>
							<tr height="40px">
								<%-- <c:forEach var="cancel" items="${cancelList}"> --%>
								<td style="border: 1px solid #f0f0f0;">${cancelOrder.orderNum}</td>
								<td style="border: 1px solid #f0f0f0;">${cancelOrder.name}</td>
								<td style="border: 1px solid #f0f0f0;">${cancelOrder.orderDate}</td>
								<td style="border: 1px solid #f0f0f0;"><fmt:formatNumber value="${cancelOrder.orderTotalPrice}" pattern="#,###"/></td>
								<%-- </c:forEach> --%>
							</tr>
						</tbody>
					</table>
				</div>	
					<div style="font-size:18px; margin:0 0 40px 0;">
					현재 김도희님의 배송 현황은 <span style="color:rgb(22,160,133);">[ 취소 요청 ]</span> 입니다.
					</div>
				</div>
			</div>
				<div style="display: flex; align-items: center; justify-content: center; margin-top: 10px;">
					<input type="button" value="닫기" class="button" onclick="closePopup('mng_cancel_form')">
					<input type="button" value="취소 확정" class="button" onclick="location.href='mng_cancel_form_1.do'">
				</div>
			</div>
		</div>
		<!-- 끝 -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="http://salad.sist.co.kr/resources/mng_js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="http://salad.sist.co.kr/resources/mng_assets/demo/chart-area-demo.js"></script>
        <script src="http://salad.sist.co.kr/resources/mng_assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="http://salad.sist.co.kr/resources/mng_js/datatables-simple-demo.js"></script>
        <script>
    var Target = document.getElementById("clock");
    function clock() {
        var time = new Date();

        var year = time.getFullYear();
        var month = time.getMonth();
        var date = time.getDate();
        var day = time.getDay();
        var week = ['일', '월', '화', '수', '목', '금', '토'];

        var hours = time.getHours();
        var minutes = time.getMinutes();
        var seconds = time.getSeconds();
        var AmPm = "AM";
        if(hours > 12){
            var AmPm = "PM";
            hours %= 12;
        }

        Target.innerText =
        	`\${year}-\${month + 1}-\${date} \${week[day]}요일 ` +
            `\${hours < 10 ? `0\${hours}` : hours}:\${minutes < 10 ? `0\${minutes}` : minutes}` + `\${AmPm}`;
            
    }
    clock();
    setInterval(clock, 1000); // 1초마다 실행
</script>
<script>

	/*  $(function(){
		
		let query = window.location.search;
		let param = new URLSearchParams(query);
		let id=param.get('subCateNum');
		console.log("와라"+id); 
		
		const beforeTr = document.getElementById("#beforeTr");
		const afterTr = document.getElementById("#afterTr");

		if( id > 0 ){
			console.log("와라2"+id); 
			$("#beforeTr").hide();
			$("#afterTr").show();
			/* 왜 작동이 안될까?? */
			/* beforeTr.style.display="none";
			afterTr.style.display="table-row"; */
	/* 	} else {
			$("#beforeTr").show();
			$("#afterTr").hide();
		}

	}); */
	
</script>
<script type="text/javascript">
		function showPopup(hasFilter, id) {
			const popup = document.querySelector('#' + id);
			if (hasFilter) {
				popup.classList.add('has-filter');
			} else {
				popup.classList.remove('has-filter');
			}
			popup.classList.remove('hide');
		}
		
		
		function closePopup(id) {
			const popup = document.querySelector('#' + id);
			popup.classList.add('hide');
		}	
		

	</script>
	<script>
	/* $(function(){
		$("#keywordBtn").click(function(){
			
			
			$("#categoryFrm").submit();
		});
	});
	
	
	$(function(){
		$("#mngOrderBtn").click(function(){
			
			
			$("#orderForm").submit();
		});
	}); */
	</script>
	<script>
	/* 키워드 관련 스크립트 */
	 document.getElementById("searchBtn").onclick = function () {
	    
	  let searchText = document.getElementsByName("searchText")[0].value;
	  let search =  document.getElementsByName("search")[0].value;
	  
	  if (search == ""){
		  alert("키워드를 선택해주세요");
		  location.href = "mng_cancel.do?" + "searchText=" + searchText;
	  } else {
	  location.href = "mng_cancel.do?" + "searchText=" + searchText + "&search=" + search;		  
	  }
	  setCountList($("#currentPage").val());
	 /*  console.log(searchText)
	  console.log(search) */
	 }; 
	</script>
	<script>
	/* 주문 정보 관련 스크립트 */
	/*  document.getElementById("#searchOrder").onclick = function () {
	    
	  var orderNum = document.getElementsByName("searchOrder")[0].value;
	  var orderFlag =  document.getElementsByName("mngOrderBtn")[0].value;
	  
	  $("#searchOrder").on("click",function(){
		  location.href="mng_order_detail.do?"+"orderNum="+orderNum+"&orderStatus="+orderFlag;
		  })
	  } */
	 
	</script>
    </body>
</html>
