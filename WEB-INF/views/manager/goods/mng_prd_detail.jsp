<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Dashboard - SB Admin</title>

<link href="http://salad.sist.co.kr/resources/mng_css/styles.css" rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />


<script src="http://salad.sist.co.kr/resources/mng_js/scripts.js"></script>
<script src="http://salad.sist.co.kr/resources/mng_assets/demo/chart-area-demo.js"></script>
<script src="http://salad.sist.co.kr/resources/mng_assets/demo/chart-bar-demo.js"></script>
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<script src="http://salad.sist.co.kr/resources/mng_js/datatables-simple-demo.js"></script>

<!-- JQuery google CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<style type="text/css">
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
	
	.dataTable-wrapper{
		padding: 10px 70px;
	}
	
	.dataTable-table > :not(caption) > * > *{
		box-shadow: none;
	}
	
	.dataTable-table > tbody > tr > td{
		text-align: left;
		border-left: none;
	}
	
	.dataTable-table > tbody > tr > th{
		background-color: #f0f0f0;
	}
	
	th{
		border-right: 1px solid black;
	}
	
	.imgBig{
		width: 200px; 
		height: 200px; 
		margin: 20px;
	}
	
	.imgSmall{
		width: 100px; 
		height: 100px; 
		margin: 20px;
	}
	
</style>

<script type="text/javascript">
$(function(){
	$("#editBtn").click(function(){//?????? ?????? ?????? ???
		movePrdEdit();
	})//click
	
	$("#listBtn").click(function(){//?????? ?????? ?????? ???
		movePrdList();
	})//click
});//ready

function movePrdEdit() {//?????? ?????? ?????? ??? ?????? ????????? ?????????????????? ??????
	location.href="http://salad.sist.co.kr/mng_prd_edit.do?prdNum="+${param.prdNum};
}//movePrdEdit

function movePrdList() {//?????? ?????? ?????? ??? ?????? ????????? ???????????? ??????
	location.href="http://salad.sist.co.kr/mng_prd.do";
}//movePrdList

</script>
</head>

<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
	    <!-- Navbar Brand-->
	    <a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
	    href="http://salad.sist.co.kr/mng_dashboard.do"><img alt="img" src="http://salad.sist.co.kr/resources/mng_images/saladLogo.png" height="50px"></a>
	    <div class="ms-auto" style="color:white;">3???&nbsp;????????????,???????????????.&nbsp;&nbsp;</div>
	    <!-- Navbar-->
	     <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
	        <li class="nav-item dropdown">
	            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
	            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
	                <li><a class="dropdown-item" href="http://salad.sist.co.kr/mng_logout.do">Logout</a></li>
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
		                <a class="nav-link" style="padding-bottom:28px;" href="http://salad.sist.co.kr/mng_dashboard.do">
		                    -????????????
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">????????????</div>
		                <a class="nav-link" style="padding-bottom:28px;" href="http://salad.sist.co.kr/mng_member.do">
		                    -?????? ??????
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">?????? ??????</div>
		                <a class="nav-link" href="http://salad.sist.co.kr/mng_prd.do">
		                    -?????? ??????
		                </a>
		                <a class="nav-link" style="padding-top:0; padding-bottom:28px;"href="http://salad.sist.co.kr/mng_rev.do">
		                    -?????? ??????
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">?????? ??????</div>
		                <a class="nav-link" href="http://salad.sist.co.kr/mng_order_main.do">
		                    -?????? ??????
		                </a>
		                <a class="nav-link" style="padding-top:0;"href="http://salad.sist.co.kr/mng_cancel.do">
		                    -?????? ??????
		                </a>
		                <a class="nav-link" style="padding-top:0; padding-bottom:28px" href="http://salad.sist.co.kr/mng_deli.do">
		                    -?????? ??????
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">????????? ??????</div>
		                <a class="nav-link" style="padding-bottom:28px;" href="http://salad.sist.co.kr/mng_notice.do">
		                    -????????????
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">?????? ??????</div>
		                <a class="nav-link" style="padding-bottom:28px;" href="http://salad.sist.co.kr/mng_qna.do">
		                    -????????????
		                </a>
		            </div>
		        </div>
		    </nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<div style="display:flex; justify-content:space-between; flex-direction:row;padding:20px 0 30px 0;">
						<div>
							<h1 id="clock" class="mt-4" style="font-size:20px; color:rgb(94,94,94); font-weight:bold;">clock</h1>
							<div style="font-size:24px; color:rgb(51,51,51); font-weight:bold;">???????????????! 3??? ????????????.</div>
						</div>
						<div>
							<img src="http://salad.sist.co.kr/resources/mng_images/socialMedia.png" width="130px">
						</div>
						<div style="width:319px;"></div>
					</div>
				</div>
				<div class="dataTable-wrapper dataTable-loading no-footer searchable fixed-columns">
					<div class="dataTable-container">
						<table class="dataTable-table" style="width: 80%; margin: 20px auto;">
							<tbody>
								<tr>
									<th width="30%">????????????</th>
									<td><c:out value="${ prdData.mainCateName }"/> | <c:out value="${ prdData.subCateName }"/></td>
								</tr>
								<tr>
									<th>?????????</th>
									<td><c:out value="${ prdData.prdName }"/></td>
								</tr>
								<tr>
									<th>?????? ??????</th>
									<td>
										<img class="imgBig" src="http://salad.sist.co.kr/common/images/product/${ prdData.thum }">
										<c:if test="${ prdData.prdImgList ne null }">
											<c:forEach var="prdImg" items="${ prdData.prdImgList }">
												<img class="imgSmall" src="http://salad.sist.co.kr/common/images/product/${ prdImg }">
											</c:forEach>
										</c:if>
									</td>
								</tr>
								<tr>
									<th>????????????(?????? ??????)</th>
									<td style="display: flex; flex-direction: column;">
										<img class="imgBig" src="http://salad.sist.co.kr/common/images/product/${ prdData.prdBodyThum }">
										<c:if test="${ prdData.prdBodyImgList ne null }">
											<c:forEach var="prdBodyImg" items="${ prdData.prdBodyImgList }">
												<img class="imgBig" src="http://salad.sist.co.kr/common/images/product/${ prdBodyImg }">
											</c:forEach>
										</c:if>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="dataTable-wrapper dataTable-loading no-footer searchable fixed-columns" style="width: 82%; margin: 0px auto;">
					<div class="dataTable-container">
						<table class="dataTable-table">
							<tbody>
								<tr>
									<th width="30%">??????</th>
									<td style="width: 80px; border-right: none;">?????????</td><td style="width: 25px; border-right: none; font-weight: bold;"><c:out value="${ prdData.prdDiscount }"/></td><td>%</td>
								</tr>
								<tr>
									<th>??????</th>
									<td style="width: 80px; border-right: none;">??????</td><td style="width: 25px; border-right: none; font-weight: bold;"><fmt:formatNumber value="${ prdData.prdPrice }" pattern="#,#00"/></td><td>???</td>
								</tr>
								<tr>
									<th>?????????</th>
									<td style="width: 80px; border-right: none;">?????????</td><td style="width: 25px; border-right: none; font-weight: bold;"><fmt:formatNumber value="${ prdData.prdPrice-(prdData.prdPrice*(prdData.prdDiscount/100)) }" pattern="#,#00"/></td><td>???</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div style="display: flex; justify-content: flex-end; margin: 20px 0px;">
						<!-- <div>
							<input type="button" class="button" value="??????">
							<input type="button" class="button" value="??????">
						</div> -->
						<div>
							<input type="button" class="button" id="editBtn" value="??????">
							<input type="button" class="button" id="listBtn" value="??????">
						</div>
					</div>
				</div>
			</main>
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
		</div>
	</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>
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
</body>
</html>
