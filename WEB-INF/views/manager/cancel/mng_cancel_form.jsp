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

    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
            href="mng_dashboard.do"><img alt="img" src="http://salad.sist.co.kr/resources/mng_images/saladLogo.png" height="50px"></a>
            <div class="ms-auto" style="color:white;">3???&nbsp;????????????,???????????????.&nbsp;&nbsp;</div>
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
                            <div class="sb-sidenav-menu-heading">??????</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="mng_dashboard.do">
                                -????????????
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">????????????</div>
		                <a class="nav-link" style="padding-bottom:28px;" href="http://salad.sist.co.kr/mng_member.do">
		                    -?????? ??????
		                </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">?????? ??????</div>
                            <a class="nav-link" href="mng_prd.do">
                                -?????? ??????
                            </a>
                            <a class="nav-link" style="padding-top:0; padding-bottom:28px;"href="mng_rev.do">
                                -?????? ??????
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">?????? ??????</div>
                            <a class="nav-link" href="mng_order_main.do">
                                -?????? ??????
                            </a>
                            <a class="nav-link" style="padding-top:0;"href="mng_cancel.do">
                                -?????? ??????
                            </a>
                            <a class="nav-link" style="padding-top:0; padding-bottom:28px" href="mng_deli.do">
                                -?????? ??????
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">????????? ??????</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="mng_notice.do">
                                -????????????
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">?????? ??????</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="#">
                                -????????????
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
	                        ???????????????! 3??? ????????????.
	                        </div>
	                        </div>
	                        <div>
	                        <img src="http://salad.sist.co.kr/resources/mng_images/socialMedia.png" width="130px">
	                        </div>
	                        <div style="width:319px;"></div>
                        </div>
                        </div>
                        <div class="row" style="--bs-gutter-x:0;">
                       			<!-- ?????? -->
                        		<div style="width:100%; display:flex; justify-content:center;
                        		 font-size:16px; font-weight:bold; padding:10px 0 20px 0; ">
		                        		<div style="width:150px; margin:0 100px 0 0;">
		                        		??????_??????
		                        		</div>
		                        		<div style="width:150px;">
		                        		?????????_??????
		                        		</div>
                        		</div>
                        		<!-- ?????? -->
                       		 	<div style="width:100%; position:relative; display:flex; justify-content:center; align-items:center; padding:0 0 60px 0;">
		                        	<div style="margin:0 100px 0 0;">
		                        	<div style="background:rgb(141,216,198); width:150px; height:155px;
		                        	border-radius:35px; ">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:white; font-weight:bold; font-size:20px; ">
				                        	????????????
				                        	</div>
				                        	<div style="color:white; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;"><%= request.getAttribute("orderDayT") %></span>???
				                        	</div>
			                        	</div>
		                        	</div>
		                        	</div>
		                        	
		                        	<div style="background:rgb(186,212,206); width:150px; height:155px;
		                        	border-radius:35px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                        	<div style=" color:white; font-weight:bold; font-size:20px;">
				                        	????????????
				                        	</div>
				                        	<div style="color:white; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;"><%= request.getAttribute("orderDayM") %></span>???
				                        	</div>
			                        	</div>
		                        	</div>
                       		 </div>
                       		 <!-- ?????? ??? --> 
                       	</div>
					<div class="row px-4"  style="--bs-gutter-x:0;">
						<div style="width: 90%; margin: 10px auto; text-align: center;">
						<form name="categoryFrm" action="mng_cate.do" method="post" style="display: flex; justify-content: flex-end; margin-bottom: 10px;">
							<!-- <select name="main" id="mai"  style="width: 16%"> -->
							<%
							String category = request.getParameter("mainCateNum");
							String category2 = request.getParameter("subCateNum");
							System.out.println("?????????"+category);
							System.out.println("?????????2"+category2);
							if(category == null) category = "";
							if(category == "1") {
								category = "????????????";
							System.out.println("??????"+category);
							}
							MngCancelVO cancelVO = new MngCancelVO();
							%>
							<select name="searchText" class="select"  style="width: 10%; margin:0 10px 0 0;">
								<option value="none">---????????? ??????---</option>
								<option  value="name"<c:if test="${searchText eq 'name'}">selected</c:if>>
								??????
								</option>
								<option  value="orderNum"<c:if test="${searchText eq 'orderNum'}">selected</c:if>>
								?????? ??????
								</option>
								<option  value="orderDate"<c:if test="${searchText eq 'orderDate'}">selected</c:if>>
								?????? ??????
								</option>
							</select>
							<input type="text"  name="search" id="search" value="${search}" style="width: 15%;margin:0 10px 0 0;">
							<input type="button" style="width: 10%;" value="??????" class="button2" id="searchBtn" name="searchBtn">
						</form>
						</div>

	               	<div style="width: 90%; margin: 10px auto; text-align: center;">
               		<form id="orderForm" name="orderForm" action="mng_cate.do" method="get">
               		<table class="table" style="table-layout:fixed;">
					  <thead class="table-light" style="height: 50px;">
						<tr>
							<th>????????????</th>
							<th>?????????</th>
							<th>?????????</th>
							<th>?????? ??????</th>
							<th>??? ?????? ??????</th>
							<th>?????? ??????</th>
						</tr>
					  </thead>
					  <tbody id="beforeTr" >
					  	<!-- ???????????? ?????? ??? ???????????? ?????????  -->
					 	 <tr>
						 	<td colspan="6" style="border-bottom:none;"><img alt="img" src="http://salad.sist.co.kr/resources/mng_images/processMan.png" style="width:100px; margin:20px 0 0 0;"></td>
						 	</tr>
						 	<tr height="80px">
						 	<td colspan="6"style="border-top:none; font-weight:bold;">????????? ????????? ?????????.</td>
					 	</tr>
					 	 </tbody>
					 	<!-- ???????????? ?????? ??? ???????????? ????????? ??? -->
					  
					  	<!-- ???????????? ?????? ??? ???????????? ????????? -->
					  	<tbody id="afterTr" style="display: none;">
					  	<c:forEach var="allCancel" items="${allCancelList}">
						 <tr>
							<td><a class="tableMainNum" href="mng_detail_order.do">${allCancel.orderNum}</a></td>
							<td>${allCancel.id}</td>
							<td>${allCancel.name}</td>
							<td>${allCancel.orderDate}</td>
							<td>${allCancel.orderTotalPrice}???</td>
							<td>
							<button id="mngOrderBtn" value="mng_orderDetail.do?orderNum=${allCancel.orderNum}" type="button" class="btn btn-light btn-sm tableMainBtn" 
							onclick="if(this.value)location.href=(this.value);">
							<c:if test="${allCancel.orderStatus eq '4' }">
							?????? ??????
							</c:if>
							<c:if test="${allCancel.orderStatus eq '5' }">
							?????? ??????
							</c:if>
							</button>
							</td>
						</tr>
						</c:forEach>
						</tbody>
						<!-- ???????????? ?????? ??? ???????????? ????????? ??? -->
					 <!--  </tbody> -->
					</table>
					</form>
               	</div>
			</div> <!--??? ???  -->    
          </main>
                 <!--  <div>
	               	<nav aria-label="Page navigation example" style="display: flex; justify-content: center; margin: 40px 0px;" >
					  <ul class="pagination">
					    <li class="page-item">
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
					    </li>
					  </ul>
					</nav>
               	</div> -->
                	<!-- ?????? -->
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="align-items-center justify-content-between small">
                            <div class="text-muted">
                            	<span style="margin: 0 30px 0 0;">????????????</span>
                            	<span style="margin: 0 30px 0 0;">????????????</span>
                            	<span style="margin: 0 30px 0 0;">????????????????????????</span>
                            	<span>????????????</span>
                            </div>
                            <hr>
                            <div style="display: flex; justify-content: space-between;" >
	                             <div class="text-muted">
	                            	<div>?????????(??????) : ???????????? ??????????????? / ?????? : 3??? / TEL : 0000-0000 / FAX : 02-0000-0000</div>
	                            	<div>????????????????????? : 000-00-00000 / ??????????????????????????? : ??? 0000 - ??????3??? - 0000???</div>
	                            	<div>?????? : ??????????????? ????????? ???????????? 132 / ??????????????????????????? : 3??? / E-Mail : 3???@0000.co.kr</div>
	                        	</div>
	                        	<div>
	                        		<img alt="img" src="http://salad.sist.co.kr/resources/mng_images/saladLogo.png">
	                        	</div>
                        	</div>
                        </div>
                    </div>
                </footer>
                <!-- ?????? ??? -->
            </div>
        </div>
        <!-- ????????? : mng_cancel_form/ ?????? ??????-->
        <div id="mng_cancel_form" class="popup" align="center">
		<div class="content">
			<div style="width: 800px; border: 1px solid grey;">
				<div style="font-weight: bold; font-size: 20px; border-bottom: 2px solid #ddd; padding: 15px;" align="left">
					?????? ??????
				</div>
				
				<div style="width: 800px;">
					<div style="margin:40px 0 40px 0;">
					<table id="detailPopup" class="member" style="width: 95%;">
						<tbody align="center">
							<tr height="40px" style="background-color: #f0f0f0; ">
								<th>????????????</th>
								<th>????????? ?????????</th>
								<th>????????????</th>
								<th>??? ?????? ??????</th>
							</tr>
							<tr height="40px">
								<%-- <c:forEach var="cancel" items="${cancelList}"> --%>
								<td style="border: 1px solid #f0f0f0;">${cancelOrder.orderNum}</td>
								<td style="border: 1px solid #f0f0f0;">${cancelOrder.id}</td>
								<td style="border: 1px solid #f0f0f0;">${cancelOrder.orderDate}</td>
								<td style="border: 1px solid #f0f0f0;"><fmt:formatNumber value="${cancelOrder.orderTotalPrice}" pattern="#,###"/>???</td>
								<%-- </c:forEach> --%>
							</tr>
						</tbody>
					</table>
				</div>	
					<div style="font-size:18px; margin:0 0 40px 0;">
					?????? ${cancelOrder.name}?????? ?????? ?????????  
					<c:if test="${cancelOrder.orderStatus eq '4' }">
					<span style="color:rgb(22,160,133);">
							[ ?????? ?????? ]
					</span> ?????????.
					</c:if>
					<c:if test="${cancelOrder.orderStatus eq '5' }">
					<span style="color:rgb(22,160,133);">
							[ ?????? ?????? ]
					</span> ?????????.
					</c:if>
					</div>
				</div>
			</div>
				<div style="display: flex; align-items: center; justify-content: center; margin-top: 10px;">				
					<c:if test="${cancelOrder.orderStatus eq '4' }">
					<input type="button" value="?????? ??????" class="button" onclick="showPopup(true,'mngCancelForm1')">
					</c:if>
					<c:if test="${cancelOrder.orderStatus eq '5' }">
					</c:if>
					<input type="button" value="??????" class="button" onclick="history.back(-1)">
				</div>
			</div>
		</div>
		<!-- ??? -->
		<!-- ????????? : mng_cancel_form_1/ ?????? ?????? ??????(?????? ?????? ??????)-->
		<div id="mngCancelForm1" class="hide popup" align="center">
		 <div class="content">
			<div style="width: 450px; border: 1px solid grey;">
				<div style="font-weight: bold; font-size: 20px; border-bottom: 2px solid #ddd; padding: 15px;" align="left">?????? ?????? ??????</div>
				
					<div style="font-size: 16px; display: flex; justify-content: center; align-items: center; height: 70px ;">
					?????? ?????? ????????? ?????????????????????????
					</div>
					
					<div style="display: flex; align-items: center; justify-content: center; padding-bottom: 10px;">
						<button type="button" value="mng_orderCancel.do?orderNum=${cancelOrder.orderNum}" class="button" 
						onclick="if(this.value)location.href=(this.value);">??????</button>
						<input type="button" value="??????" class="button" onclick="closePopup('mngCancelForm1')">	
					</div>
				</div>
			</div>
		  </div>	  
		  <!-- ??? -->
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
        var week = ['???', '???', '???', '???', '???', '???', '???'];

        var hours = time.getHours();
        var minutes = time.getMinutes();
        var seconds = time.getSeconds();
        var AmPm = "AM";
        if(hours > 12){
            var AmPm = "PM";
            hours %= 12;
        }

        Target.innerText =
        	`\${year}-\${month + 1}-\${date} \${week[day]}?????? ` +
            `\${hours < 10 ? `0\${hours}` : hours}:\${minutes < 10 ? `0\${minutes}` : minutes}` + `\${AmPm}`;
            
    }
    clock();
    setInterval(clock, 1000); // 1????????? ??????
</script>
<script>

	$(function(){
		
		let query = window.location.search;
		let param = new URLSearchParams(query);
		let id=param.get('subCateNum');
		console.log("??????"+id); 
		
		const beforeTr = document.getElementById("#beforeTr");
		const afterTr = document.getElementById("#afterTr");

		if( id > 0 ){
			console.log("??????2"+id); 
			$("#beforeTr").hide();
			$("#afterTr").show();
			/* ??? ????????? ??????????? */
			/* beforeTr.style.display="none";
			afterTr.style.display="table-row"; */
		} else {
			$("#beforeTr").show();
			$("#afterTr").hide();
		}

	});//
	
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
	$(function(){
		$("#mngOrderBtn").click(function(){
			
			
			$("#orderForm").submit();
		});
	});
	/* function openPop(){
		var popTitle1 = "mng_cancel_form";
		window.open("",popTitle1);
		
		var orderForm = document.orderForm;
		orderForm.target = popTitle1;
		orderForm.action = "mng_cate.do";
		
		orderForm.submit();
	} */
	</script>
    </body>
</html>
