<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>QnA_Detail</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="./resources/mng_css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
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
	
	.popupTable>tr>th{
		width: 30%;
		background-color:#f0f0f0;
		padding: 10px;
	}
	
	.popupTable>tr>th, .popupTable>tr>td{
		border: 1px solid #f0f0f0;
	}
	
</style>
 <!-- JQuery google CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">


$(function(){
	
	
	
	$("#writeBtn").click(function(){
		answerWrite()
	})//click
	
	$("#listBtn").click(function(){//목록 버튼 클릭 시
		moveQnaList();
	})//click
	
	boxhide();
	
});//ready

function boxhide(){
if('${qnaData.qnaAFlag}'==1){
	$('#answerTable').hide();
}

}



function answerWrite(){
	$.ajax({
		url:"mng_qna_detail_answerWrite.do",
		type:"POST",
		data:$("#answerWranswerTable").serialize(),
		error:function(xhr){
			alert("작성에 실패했습니다")
			console.log(xhr.status);
		},
		success:function(xh){
			location.href="http://salad.sist.co.kr/mng_qna_detail.do?qnaNum="+${param.qnaNum};
		}
	})
	
}

/* function moveQnaAnswer() {
	location.href="http://salad.sist.co.kr/mng_qna_answer.do?qnaNum="+${param.qnaNum};
}//movePrdEdit */

function moveQnaList() {
	location.href="http://salad.sist.co.kr/mng_qna.do";
}//movePrdList

</script>
    </head>
    
    
    <body class="sb-nav-fixed">
 <!-- 상단 우측 네비 -->     
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
            href="index.html"><img alt="img" src="./resources/mng_images/saladLogo.png" height="50px"></a>
            <div class="ms-auto" style="color:white;">3조 관리자님, 어서오세요.&nbsp;&nbsp;</div>
            <!-- Navbar-->
             <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="mng_logout.do">Logout</a></li>
                    </ul>
                </li>
            </ul> 
        </nav>
        
        
        <div id="layoutSidenav">
<!-- 좌측 메인 네비 -->         
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
<!-- 본문상단 -->                
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
	                        <img src="./resources/mng_images/socialMedia.png" width="130px">
	                        </div>
	                        <div style="width:319px;"></div>
                        </div>
                        </div>

                        
<!-- 본문 리스트 시작 -->  
                 <div class="card-body">
            		<table style="border-spacing: 0px; width: 90%; margin-left: 85px; margin-bottom: 20px; font-size:18px;">
					<colgroup>
						<col style="width: 100px;">
						<col>
					</colgroup>
					<tbody >
						<tr style="border-top: 1px solid; height: 60px;">
							<th >문의번호</th>
							<td>
								<text style="border: 0px; width: 100%; height: 40px;">
								<c:out value="${qnaData.qnaNum }"/>
							</td>
						</tr>
						<tr style="border-top: 1px solid; height: 60px;">
							<th>제목</th>
							<td>
								<text class="title" style="border: 0px; width: 100%; height: 40px;">
								<c:out value="${qnaData.qnaTitle }"/>
							</td>
						</tr>
						<tr style="border-top: 1px solid; height: 60px;">
							<th>작성자</th>
							<td>
								<text style="border: 0px; width: 100%; height: 40px;"/>
								<c:out value="${qnaData.id }"/> | <c:out value="${qnaData.qnaWriteDate}"/>
							</td>
						</tr>
						<tr style="border-top: 1px solid; border-bottom: 1px solid; height: 300px;">
							<th>문의내용</th>
							<td>
								<text style="border: 0px; width: 100%; height: 150px;">
								<c:out value="${qnaData.qnaCont }"/>
								</text>
							</td>
						</tr>
						
						<tr  style="border-top: 1px solid; background-color: #ECECEC; height: 60px;">
							<th style ="padding-left: 10px;">A.</th>
							<td>
								<text style="border: 0px; width: 100%; height: 40px;">
								안녕하세요 건강한 샐러드입니다.
								</text>
							</td>
						</tr>
						<tr style="border-top: 1px solid;  background-color: #ECECEC; height: 60px;">
							<th>작성자</th>
							<td>
								<text style="border: 0px; width: 100%; height: 40px;">
								관리자 | <c:out value="${answer.qnaAWriteDate }"/>
								</text>
							</td>
						</tr>
						<tr style="border-top: 1px solid;  border-bottom: 1px solid;  background-color: #ECECEC; height: 50px;">
							<th> 내용</th>
							<td>
								<c:out value="${answer.qnaACont }"/>
							</td>
						</tr>
						<tr style="height:  50px;"></tr>
					</tbody>
				</table>
				<form method="post"  name="answerWrite" action="mng_qna_detail_answerWrite.do" id="answerWranswerTable">
				<table id="answerTable" style="border-spacing: 0px; width: 90%; margin-left: 85px; margin-bottom: 20px; font-size:18px;">
				<colgroup>
						<col style="width: 100px;">
						<col>
					</colgroup>
					<tr style="border-top: 1px solid; background-color: #ECECEC; height: 60px;">
							<th style ="padding-left: 10px;">A.</th>
							<td colspan="2">
								<text style="border: 0px; width: 100%; height: 40px;">
								안녕하세요 건강한 샐러드입니다.
								</text>
							</td>
						</tr>
						<tr style="border-top: 1px solid;  border-bottom: 1px solid;  background-color: #ECECEC; height: 300px;">
							<th>답변 내용</th>
							<td>
								<textarea  style="border: 0px; width: 100%; height: 200px;" name="qnaACont"></textarea>
		 					</td>
								<td style="width:5%;"><input type="button" class="button" id="writeBtn" value="작성"></td>
						</tr>
						</table>
		 					<input type="hidden" name="qnaNum" value="${param.qnaNum}"/>
					</form>
             </div>
               
             <div style="display: flex; justify-content: space-between; width: 90%; margin-left: 85px; margin-bottom: 20px;">
				<!-- <div>
					<input type="button" value="이전 문의글" class="button">
					<input type="button" value="다음 문의글" class="button">
				</div> -->
				<div style="display: flex;">
					<input type="button" value="목록" id="listBtn" class="button">
				</div>
			</div>
          </main>
<!-- 본문 끝 -->          
          
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
	                        		<img alt="img" src="./resources/mng_images/saladLogo.png">
	                        	</div>
                        	</div>
                        </div>
                    </div>
                </footer>
<!-- 푸터 끝 -->
            </div>
        </div>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
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
        `\${hours < 10 ? `\${hours}` : hours}:\${minutes < 10 ? `\${minutes}` : minutes}` + `\${AmPm}`;
            
    }
    clock();
    setInterval(clock, 1000); // 1초마다 실행
</script>
    </body>
</html>
