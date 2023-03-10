<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <title>샐러드월드 - 내가 찾던 식단관리!</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="author" content="" />
    <meta name="description" content="신선한 샐러드를 언제 어디서나 간편하게 즐기는 포켓샐러드! 라이스&포켓닭까지 함께 즐겨보세요" />
    <meta name="keywords" content="샐러드, 닭가슴살, 샐러드배달, 샐러드도시락, 다이어트도시락, 포켓닭, 탄단지, 다이어트, 다이어트식단, 식단관리" />
    <meta name="csrf-token" content="MTY2NjY4NDQ1MDMyODY5OTU2MDc0MTg3OTYwODg5OTc4NzI4MjgxNDA0" />
   <meta name="facebook-domain-verification" content="l8vlpgoyq5exc97dfww64gqzmnialy" />
	

    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://www.pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://www.pocketsalad.co.kr/member/join.jsp">
    <meta property="og:description" content="내가 찾던 식단관리!">
    <meta property="og:locale" content="ko_KR">
    <meta property="og:image:width" content="160">
    <meta property="og:image:height" content="160">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="포켓샐러드">
    <meta name="twitter:image" content="https://www.pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta name="twitter:description" content="내가 찾던 식단관리!">

    <link rel="icon" href="/data/common/favicon.ico" type="image/x-icon" />

    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/reset.css?ts=1647562972">
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/common/common.css?ts=1659591193">
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/common/layer/layer.css?ts=1666243530">
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/layout/layout.css?ts=1666674309">
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/goods/list.css?ts=1662515260">
	<link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/button.css?ts=1644979979">
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/member/member.css?ts=1662983268" />
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/js/jquery/chosen/chosen.css?ts=1662105386" />
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/custom.css?ts=1660281178" />

    <!-- 온노마드 css 추가 -->
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/nd_custom.css?ts=1662983189" />
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/swiper.css?ts=1610501674" />

    <!-- Add style : start -->
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/plugins/bootstrap-datetimepicker.min.css" />
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/plugins/bootstrap-datetimepicker-standalone.css" />
    <!-- Add style : end -->

    <script type="text/javascript">
        var json_locale_data = {"domain":"messages","locale_data":{"messages":{"":{"lang":"ATF","plural-forms":"nplurals=1; plural=0"}}}}
    </script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/gd_gettext.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/jquery/jquery.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/underscore/underscore-min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/jquery/validation/jquery.validate.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/jquery/validation/additional-methods.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/numeral/numeral.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/global/accounting.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/global/money.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/jquery/chosen/chosen.jquery.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/jquery/placeholder/placeholders.jquery.min.js?ts=1610501674"></script>
    <![if gt IE 8]>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/copyclipboard/clipboard.min.js?ts=1610501674"></script>
    <![endif]>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/jquery/vticker/jquery.vticker.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/gd_ui.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/jquery.iframeResizer.min.js?ts=1649920172"></script>
    <script type="text/javascript" defer src="http://salad.sist.co.kr/resources/js/slider/slick/slick.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/swiper.js?ts=1610501674"></script>
    
    <!-- 우편번호 사용  -->
    <script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	  <!-- 검색 시작 -->
<script type="text/javascript">
    $(function(){
    	
    	$("#topSearchBtn").click(function(){
    		searchEvent();
    	})//click
    	
    	$("#keyword").keydown(function(keyNum){
    		//현재의 키보드의 입력값을 keyNum으로 받음
    		if(keyNum.keyCode == 13){ //keyCode=13 : Enter
    			$("#topSearchBtn").click()	
    		}//end if
    	});//keydown
    	
    });//ready
    
    function searchEvent() {//검색 클릭 시 검색 화면으로 이동
    	location.href="http://salad.sist.co.kr/goods_search.do?keyword="+$("#keyword").val();
    }//searchEvent
    
</script>
<!-- 검색 끝 -->
	
    <!-- 전체 카테고리 -->
<script type="text/javascript">

//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function execDaumPostcode() {
	new daum.Postcode({
		oncomplete : function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var roadAddr = data.roadAddress; // 도로명 주소 변수
			var extraRoadAddr = ''; // 참고 항목 변수

			// 법정동명이 있을 경우 추가한다. (법정리는 제외)
			// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
				extraRoadAddr += data.bname;
			}
			// 건물명이 있고, 공동주택일 경우 추가한다.
			if (data.buildingName !== '' && data.apartment === 'Y') {
				extraRoadAddr += (extraRoadAddr !== '' ? ', '
						+ data.buildingName : data.buildingName);
			}
			// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			if (extraRoadAddr !== '') {
				extraRoadAddr = ' (' + extraRoadAddr + ')';
			}
		

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById('zipcode').value = data.zonecode;
			document.getElementById("addr").value = roadAddr;
		}
	}).open();
}

    $(function(){
    	
    	$("#allMenuToggle").click(function(){
    		$("#gnbAllMenu").toggle();
    	});//click
    	
    	$("#joinBtn").click(function(){
    		joinCheck();
    		
    	});//click
    	
    	
    	
    	//아이디 중복검사
    	$("#id").on("propertychange change keyup paste input", function(){
    		var memberId=$("#id").val();
    		var data={memberId : memberId}
    		var idReg = /^[a-z]+[a-z0-9]{5,19}$/g;
    		
    		$.ajax({
    			type:"post",
    			url:"id_chk_process.do",
    			data : data,
    			success: function(result){
    				if(result != 'fail' ){ 
    					$("#errorId").text("");
    					$("#possId").css("display","inline-block");
    					$("#impossId").css("display","none");
    					$("#idPassFlag").val("0"); //사용가능
    				}else{
    					$("#errorId").text("");
    					$("#impossId").css("display","inline-block");
    					$("#possId").css("display","none");
    					$("#idPassFlag").val("1"); //아이디사용불가능
    				}
    				
    				if(!idReg.test( $("input[name=id]").val() )){
    					$("#errorId").text("아이디는 영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다.");
    					$("#possId").css("display","none");
    					$("#impossId").css("display","none");
    					$("#idPassFlag").val("1"); //사용불가능
    				}
    			}
    		});
    		
    		
    	});
    	
    	//비밀번호 일치확인
    	$("#pass, #pass_chk").on("propertychange change keyup paste input", function(){
    		var pw = document.getElementById('pass').value;
            var SC = ["!","@","#","$","%"];
            var check_SC = 0;
 			
            
            for(var i=0;i<SC.length;i++){
                if(pw.indexOf(SC[i]) != -1){
                    check_SC = 1;
                }
            }
            if(pw.length < 6 || pw.length>16 || check_SC == 0){
            	$("#errorPass").text('!,@,#,$,% 의 특수문자포함 6~15글자이내로 입력.')
            	$("#passPassFlag").val("1"); //사용불가능
            }else{
            	$("#errorPass").text("");
            	$("#passPassFlag").val("0"); //사용가능
            }
            
            if(document.getElementById('pass').value !="" && document.getElementById('pass_chk').value!=""){
                if(document.getElementById('pass').value==document.getElementById('pass_chk').value){
                	$("#truePass").css("display","inline-block");
					$("#falsePass").css("display","none");
					$("#psChkPassFlag").val("0"); //사용가능
                }
                else{
                	$("#falsePass").css("display","inline-block");
					$("#truePass").css("display","none");
					$("#psChkPassFlag").val("1"); //사용불가능
                }
            }
    	});
    	
    });//ready
    
    //비어있는값 계산
    function joinCheck(){
    	//psChkPassFlag passPassFlag idPassFlag
    	var userid=$("#id").val();
    	var userpass=$("#pass").val();
    	var username=$("#name").val();
    	var userphone=$("#phone").val();
    	var useremailH=$("#email_head").val();
    	var useremailN=$("#email_next").val();
    	var userzipcode=$("#zipcode").val();
    	var userdeaddr=$("#deAddr").val();
    	var idPassFlag=$("#idPassFlag").val();
    	var passPassFlag=$("#passPassFlag").val();
    	var psChkPassFlag=$("#psChkPassFlag").val();
    	
    	if(idPassFlag=='1'){
    		$("#id").focus();
    		return;
    	}
    	
    	if(passPassFlag=='1'){
    		$("#pass").focus();
    		return;
    	}
    	
    	if(psChkPassFlag=='1'){
    		$("#pass_chk").focus();
    		return;
    	}
    	
    	if(userid.length==0){
    		$("#errorId").text("아이디를 입력하세요");
    		$("#id").focus();
    		return;
    	}else{
    		$("#errorId").text("");
    	}
    	
    	if(userpass.length==0){
    		$("#errorPass").text("비밀번호를 입력하세요");
    		$("#pass").focus();
    		return;
    	}else{
    		$("#errorPass").text("");
    	}
    	
    	if(username.length==0){
    		$("#errorName").text("이름을 입력하세요");
    		$("#name").focus();
    		return;
    	}else{
    		$("#errorName").text("");
    	}
    	
    	if(useremailH.length==0){
    		$("#errorEmail").text("이메일을 입력하세요");
    		$("#email_head").focus();
    		return;
    	}else{
    		$("#errorEmail").text("");
    	}
    	
    	if(useremailN.length==0){
    		$("#errorEmail").text("이메일주소를 입력하세요");
    		$("#email_next").focus();
    		return;
    	}else{
    		$("#errorEmail").text("");
    	}
    	
    	if(userphone.length==0){
    		$("#errorPhone").text("전화번호를 입력하세요");
    		$("#phone").focus();
    		return;
    	}else{
    		$("#errorPhone").text("");
    	}
    	
    	if(userzipcode.length==0){
    		$("#errorZipcode").text("우편번호를 입력하세요");
    		$("#zipcode").focus();
    		return;
    	}else{
    		$("#errorZipcode").text("");
    	}
    	
    	if(userdeaddr.length==0){
    		$("#errorDeaddr").text("상세주소를 입력하세요");
    		$("#deAddr").focus();
    		return;
    	}else{
    		$("#errorDeaddr").text("");
    	}
    	
    	var pass = true;
        /*
         * 필수 동의 항목 검증
         */
        $(':checkbox.require').each(function (idx, item) {
            var $item = $(item);
            if (!$item.prop('checked')) {
                pass = false;
                alert("필수항목에 체크해주세요!")
                _.delay(function () {
                    $item.focus();
                }, 1000);        
                return false;
            }
        });
        
    	if(pass){
    		$("#formJoin").submit();
    	}
    			
    	
    }
    
    
</script>
    
    <script type="text/javascript">
        // 고도몰5 통화정책
        var gdCurrencyDecimal = 0;
        var gdCurrencyDecimalFormat = '0';
        var gdCurrencyCode = 'KRW';
        var gdCurrencyAddDecimal = 0;
        var gdCurrencyAddDecimalFormat = '';
        var gdCurrencyAddCode = '';
        var gdLocale = 'ko';
        var gdCurrencySymbol = '';
        var gdCurrencyString = '원';

        // 환율변환 정책
        fx.base = "KRW";
        fx.settings = {
            from : "KRW",
            to : gdCurrencyCode
        };
        fx.rates = {
            "KRW" : 1,
            "USD" : 0.00069994680404289274,
            "CNY" : 0.00505203597049610993,
            "JPY" : 0.10453471597917668457,
            "EUR" : 0.00071439797682492963,
        }
    </script>

    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/gd_common.js?ts=1610501674"></script>

    <!-- Add script : start -->
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-25T16%3A54%3A11%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3Anull%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fwww.pocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22join.jsp%22%2C%22domain%22%3A%22www.pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData=?v=2020120404"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/jquery/jquery-cookie/jquery.cookie.js?v=2020120404"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/moment/moment.js?v=2020120404"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/moment/locale/ko.js?v=2020120404"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/gd_member2.js?v=2020120404"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/jquery/datetimepicker/bootstrap-datetimepicker.js?v=2020120404"></script>
    <!-- Add script : end -->

    

    <style type="text/css">
        body {
        }

        /* body > #wrap > #header_warp : 상단 영역 */
        #header_warp {
        }

        /* body > #wrap > #container : 메인 영역 */
        #container {
        }

        /* body > #wrap > #footer_wrap : 하단 영역 */
        #footer_wrap {
        }
    </style>

    <script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script type="text/javascript" src="http://salad.sist.co.kr/resources/js/naver/naverCommonInflowScript.js?Path=/member/join.jsp&amp;Referer=https://www.pocketsalad.co.kr:443&amp;AccountID=s_2dc21239d6a&amp;Inflow=pocketsalad.co.kr" id="naver-common-inflow-script"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<!--
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-81300049-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-81300049-1');
</script>
-->

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-NS4V8GR');</script>
<!-- End Google Tag Manager --><!-- Facebook Pixel Code -->
        <script>
        !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
        n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
        n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
        t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
        document,'script','https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '1469865633321623', {}, {'agent':'plgodo'});
        fbq('track', 'PageView');
        </script>
        <noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=1469865633321623&ev=PageView&noscript=1"/></noscript>
        <!-- DO NOT MODIFY -->
        <!-- End Facebook Pixel Code --><!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id="></script>
        <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', '');
        </script>

        <!-- Criteo Loader -->
        <script type="text/javascript" src="//dynamic.criteo.com/js/ld/ld.js?a=34297" async="true"></script>
        <!-- END Criteo Loader -->
        <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
        <script type="text/javascript">
            kakaoPixel('5900620314493041185').pageView();
        </script>
        <!-- AceCounter Log Gathering Script V.8.0.2019080601 -->
        <script language='javascript'>
	        var _AceGID=(function(){var Inf=['gtc4.acecounter.com','8080','BS1A45883992363','AW','0','NaPm,Ncisy','ALL','0'];
	        var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src ='https://'+Inf[0]+'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	        var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src='https:'+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
        </script>
        <!-- AceCounter Log Gathering Script End -->
	
	<!-- Google Shopping -->
<meta name="google-site-verification" content="B1k_K4m7BeZIxpICcT8HOm3BK9ixbegJkaPl0r8muA0" />
<!-- Google Shopping -->
	
	
	<!-- Global site tag (gtag.js) - Google Ads: 955276942 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-955276942"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-955276942');
</script>

	

</head>
	
	
<body id="body" class="body-member body-join pc"  >


	<div class="top_area"></div>
<div id="wrap" >

    <div id="header_warp" >
		

	<script>
		$(window).scroll(function(){
			if($(window).scrollTop() >= 128){
				$('#header_warp').addClass('headerFix');
			}else{
				$('#header_warp').removeClass('headerFix');
			}
		});
	</script>
	
	<link rel="stylesheet" href="http://salad.sist.co.kr/resources/css/selectric.css">
	<script src="http://salad.sist.co.kr/resources/js/jquery.selectric.js"></script>
	<script>
		$(function() {
		  $('.c-select').selectric();
		});
	</script>
	
	
	


<div id="header">
	  <div class="header_top">
		  <div class="header_top_cont">
			  	<div class="h1_logo">
				<div class="logo_main"><a href="index.do" ><img src="http://salad.sist.co.kr/resources/mng_images/saladLogo.png"  alt="상단 로고" title="상단 로고"   /></a></div>
			</div>
            <!-- 멀티상점 선택 -->
            
            <!-- 멀티상점 선택 -->
			<div class="header_search">
				<div class="header_search_cont">

					<!-- 검색 폼 -->
	<div class="top_search">
        <fieldset>
            <legend>검색폼</legend>
            <div class="top_search_cont">
                <div class="top_text_cont">
                    <input type="text" id="keyword" name="keyword" class="top_srarch_text" value="">
                    <input type="image" src="http://salad.sist.co.kr/resources/images/main/sch_btn.png" id="topSearchBtn" class="btn_top_srarch" title="검색" value="검색">
                </div>
            <!-- //top_text_cont -->
                <div class="search_cont" style="display:none;"></div>
    		</div>
        </fieldset>
	</div>
			<!-- //top_search -->
<!-- 검색 폼 -->

				</div>
				<!-- //header_search_cont -->
			</div>
			<!-- //header_search -->
			<div class="top_member_box">
			
				<ul class="list_1">
					<c:choose>
					<c:when test="${empty userId }">
						<li><a href="join.do">회원가입</a></li>
						<li><a href="login.do">로그인</a></li>
					</c:when>
					<c:otherwise>
						<li><span style="color: #333; font-size: 15px;">${userName} 님, 오늘도 건강한 하루 되세요.</span></li>
						<li><a href="logout_process.do">로그아웃</a></li>
					</c:otherwise>
					</c:choose>
					<li class="cs">
						고객센터
						<div class="cs_in">
							<ul >
								<li><a href="notice.do">공지사항</a></li>
								<li><a href="goodsreview_list.do">리얼후기</a></li>								
							</ul>
						</div>


					</li>

				</ul>
				<ul class="list_2">
					<li><a href="mypage_pass.do"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/top_cs_icn.png" alt="매이페이지"></a></li>
					<li class="cart"><a href="cart.do"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/top_cart_icn.png" alt="장바구니"></a>


                    </li>

				</ul>
			</div>
        </div>
        <!-- //header_top_cont -->
    </div>
    <!-- //header_top -->


<!-- Google Shopping -->
<meta name="google-site-verification" content="B1k_K4m7BeZIxpICcT8HOm3BK9ixbegJkaPl0r8muA0" />
<!-- Google Shopping -->

<div class="gnb">
<div class="gnb_in">
<!-- 전체 카테고리 출력 레이어 시작 -->
<div class="gnb_all">
<strong>ALL CATEGORY</strong>
<a href="#void" id="allMenuToggle"><img src="http://salad.sist.co.kr/resources/images/common/btn/btn_allmenu_open.png" alt="전체메뉴보기"></a>
</div>
	<div class="gnb_allmenu_wrap">
<div class="gnb_allmenu" id="gnbAllMenu" style="display:none" >
<div class="gnb_allmenu_box">
<ul>
	<c:forEach var="mainCate" items="${ mainCateList }">
	<li style="width:20%;">
		<div class="all_menu_cont">
			<a href="http://salad.sist.co.kr/goods_list.do?mainCateNum=${ mainCate.mainCateNum }&subCateNum=0"><c:out value="${ mainCate.mainCateName }"/></a>
			<ul class="all_depth1">
				<c:forEach var="subCate" items="${ mainCate.subCateList }">
					<li><a href="http://salad.sist.co.kr/goods_list.do?mainCateNum=${ mainCate.mainCateNum }&subCateNum=${ subCate.subCateNum }"><c:out value="${ subCate.subCateName }"/></a></li>
				</c:forEach>
			</ul>
		</div>
	</li>
	</c:forEach>
</ul>
</div>
</div>
</div>

<!-- 전체 카테고리 출력 레이어 끝 -->

			<div class="gnb_left"><a href="#PREV" class="active">PREV</a></div>
<div class="gnb_menu_box">
    <ul class="depth0 gnb_menu0">
        <c:forEach var="mainCate" items="${ mainCateList }">
        <li>
            <a href="http://salad.sist.co.kr/goods_list.do?mainCateNum=${ mainCate.mainCateNum }&subCateNum=0" ><c:out value="${ mainCate.mainCateName }"/></a>
        </li>
    	</c:forEach>
    </ul>
</div>
<div class="gnb_right"><a href="#NEXT">NEXT</a></div>

            <!-- 상단 카테고리 출력 시작 -->

            </div>

        </div>
        <!-- //gnb -->

        <!-- //gnb_allmenu -->

    <!-- //header_gnb -->
	<script>
		$(window).scroll(function(){
			if($(window).scrollTop() >= 128){
				$('#header_warp').addClass('headerFix');
			}else{
				$('#header_warp').removeClass('headerFix');
			}
		});
			 $(document).ready(function(){
            $(".header_banner_btn").click(function(){
                    $(".header_banner").css("display", "none");
            });
        });
	</script>
	<link rel="stylesheet" href="http://salad.sist.co.kr/resources/css/selectric.css">
	<script src="http://salad.sist.co.kr/resources/js/jquery.selectric.js"></script>
	<script>
		$(function() {
		  $('.c-select').selectric();
		  
		});
	</script>
</div>





<!-- //header -->
    </div>
    <!-- //header_warp -->

    <div id="container">
        <div id="contents">
        <!-- 본문 시작 -->

            <div class="location_wrap">
                <div class="location_cont">
                    <em><a href="#" class="local_home">HOME</a> > 회원가입 > 정보입력</em>
                </div>
            </div>
            <!-- //location_wrap -->

            <div class="sub_content">

                <!-- //side_cont -->
<div class="content_box">
	<div class="join_base_wrap">
		<div class="member_tit">
			<h2>회원가입</h2>
			<ol>
				<li class="page_on"><span>01</span> 정보입력<span><img src="http://salad.sist.co.kr/resources/images/main/icon_join_step_on.png" alt=""></span></li>
				<li><span>02</span> 가입완료</li>
			</ol>
		</div>
		<!-- //member_tit -->
		<div class="member_cont">
			<form id="formJoin" name="formJoin" action="join_process.do" method="post">
				<input type="hidden" name="rncheck" value="">
				<input type="hidden" name="dupeinfo" value="">
				<input type="hidden" name="pakey" value="">
				<input type="hidden" name="foreigner" value="">
				<input type="hidden" name="adultFl" value="">
				<input type="hidden" name="mode" value="join">

				<!-- 회원가입/정보 기본정보 --><div class="base_info_box">
    
	  <h3>기본정보</h3>
 

    <span class="important">표시는 반드시 입력하셔야 하는 항목입니다.</span>

    <div class="base_info_sec">
        <table border="0" cellpadding="0" cellspacing="0">
		
		<colgroup>
                <col width="25%">
                <col width="75%">
            </colgroup>

            <tbody>
            <tr>
                <th><span class="important">아이디</span></th>
                <td>
                    <div class="member_warning">
                        <input type="text" id="id" name="id" data-pattern="gdMemberId">
                        <input type="hidden" id="idPassFlag" name="idPassFlag" value="0">
                    </div>
                    <span id="errorId" style="color: red; "></span>
                    <span id="possId" style="color: green; display: none;">사용 가능한 아이디입니다.</span>
                    <span id="impossId" style="color: red; display: none;">아이디가 이미 존재합니다.</span>
                </td>

            </tr>
            <tr class="">
                <th><span class="important">비밀번호</span></th>
                <td class="member_password">
                    <div class="member_warning">
                        <input type="password" id="pass" name="pass" autocomplete="off" placeholder="" onchange="check_pw()">
                        <input type="hidden" id="passPassFlag" name="passPassFlag" value="1">
                    </div>
                    <span id="errorPass"  style="color: red"></span>
                </td>       
            </tr>
            <tr class="">
                <th><span class="important">비밀번호 확인</span></th>
                <td>
                    <div class="member_warning">
                        <input type="password" class="check-id"  id="pass_chk" name="pass_chk" autocomplete="off" onchange="check_pw()">
                    	<input type="hidden" id="psChkPassFlag" name="psChkPassFlag" value="1">
                    </div>
                    <span id="truePass" style="color: green; display: none;">비밀번호가 일치합니다.</span>
                    <span id="falsePass" style="color: red; display: none;">비밀번호가 일치하지않습니다.</span>
                </td>
            </tr>
            <tr>
                <th><span class="important">이름</span></th>
                <td>
                    <div class="member_warning">
                        <input type="text" name="name"   id="name" data-pattern="gdMemberNmGlobal" value="" maxlength="30" >
                    </div>
                    <span id="errorName"  style="color: red"></span>
                </td>
            </tr>
            <tr>
                <th><span class="important">이메일</span></th>
                <td class="member_email">
                    <div class="member_warning">
						<input type="hidden" name="email" id="email">
                        <input type="text" name="email_head" id="email_head" value="" style="width:160px;margin-right:7px;">@
						<input type="text" name="email_next" id="email_next" value="" style="width: 181px;">
                        <select id="emailDomain" name="emailDomain" class="chosen-select" style="width:180px;">
                            <option value="self">직접입력</option>
                            <option value="naver.com">naver.com</option>
                            <option value="hanmail.net">hanmail.net</option>
                            <option value="daum.net">daum.net</option>
                            <option value="nate.com">nate.com</option>
                            <option value="hotmail.com">hotmail.com</option>
                            <option value="gmail.com">gmail.com</option>
                            <option value="icloud.com">icloud.com</option>
                        </select>

                       
                    </div>
					<span id="errorEmail"  style="color: red"></span>
<!--                    <div class="form_element">-->
<!--                        <input type="checkbox" id="maillingFl" name="maillingFl" value="y" >-->
<!--                        <label for="maillingFl" class="check_s ">다양한 할인 혜택과 이벤트 정보 메일 수신에 동의합니다.</label>-->
<!--                    </div>-->
                </td>
            </tr>
            <tr>
                <th><span class="important">휴대폰번호</span></th>
                <td class="member_address">
                    <div class="address_postcode">
                        <input type="text" id="phone" name="phone" maxlength="11" placeholder="- 없이 입력하세요." 
                        data-pattern="gdNum" value=""  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  style="width: calc( 100% - 187px) ;">

                        <!-- s onnomad -->
<!--                         <button class="btn_post_search" type="button" id="btnAuthPhoneVf" style="width:165px;">
                            인증번호받기
                        </button> -->
                        <!-- <input style="margin-top:5px;display: none" type="text" id="cellPhoneVf" name="cellPhoneVf" maxlength="5" placeholder="인증번호입력" data-pattern="gdNum" >
                        <button style="display: none" class="btn_post_search" type="button" id="btnAuthPhoneVfCheck">
                            인증하기
                        </button>
                        <button style="display: none" class="btn_post_search" type="button" id="btnAuthPhoneVfRe">
                            재전송
                        </button>
                        <p id="vfInfo" style="float:left; margin: 10px 0 0 10px;color:#e10505;display: none;">인증이 완료 되었습니다!</p>
                        <script>
                            var vfNum;
                            var isVfChecked = false;

                            $("#btnAuthPhoneVf").click(function() {
                                if($("#cellPhone").val() && $("#cellPhone").val().length > 8) {
                                    $.ajax({
                                        url: '/member/member_ps.jsp',
                                        type: "POST",
                                        data: {
                                            mode: 'smsCpVf',
                                            cellPhone: $("#cellPhone").val()
                                        }
                                    }).done(function(res) {
                                        if(res.success) {
                                            $("#btnAuthPhoneVf").hide();
                                            $("#cellPhoneVf").show();
                                            $("#btnAuthPhoneVfRe").show();
                                            $("#btnAuthPhoneVfCheck").show();
                                            vfNum = res.vfNum;
                                        }
                                        else {
                                            alert("인증번호 발송이 실패하였습니다. 휴대폰 번호를 확인해 주세요.");
                                        }
                                    });
                                }
                                else {
                                    alert("인증번호 발송이 실패하였습니다. 휴대폰 번호를 확인해 주세요.");
                                }
                                $("#vfInfo").hide();
                            });
                            $("#btnAuthPhoneVfRe").click(function() {
                                $("#btnAuthPhoneVf").click();
                            });
                            $("#btnAuthPhoneVfCheck").click(function() {
                                if(vfNum && vfNum == $("#cellPhoneVf").val()) {
                                    $("#cellPhone").attr("readonly", true);
                                    $("#cellPhoneVf").hide();
                                    $("#btnAuthPhoneVfRe").hide();
                                    $("#btnAuthPhoneVfCheck").hide();
                                    $("#vfInfo").text("인증이 완료 되었습니다!").show();
                                    isVfChecked = true;
                                }
                                else {
                                    $("#vfInfo").text("인증번호가 잘못 입력되었습니다!").show();
                                }

                            });
                        </script> -->
                        <!-- e onnomad -->
                    </div>
                    <span id="errorPhone"  style="color: red"></span>
<!--                    <div class="form_element">-->
<!--                        <input type="checkbox" id="smsFl" name="smsFl" value="y" >-->
<!--                        <label for="smsFl" class="check_s ">다양한 할인 혜택과 이벤트 정보 SMS 수신에 동의합니다.</label>-->
<!--                    </div>-->
                </td>
            </tr>
            <!-- 우편번호 -->
            <tr >
            <th><span class="important">우편번호</span></th>
            <td class="member_address">
            <div class="address_postcode">
            <input type="text" name="zipcode" id="zipcode" value="" style="width:160px;margin-right:7px;"/>
            <button class="btn_post_search"  type="button" id="zipcodeBtn" style="width:165px;" onclick="execDaumPostcode()">우편번호</button>
            </div>
            <span id="errorZipcode"  style="color: red"></span>
            </td>
            
            </tr>
            <!-- 주소 -->
            <tr>
            <th><span class="important">주소</span></th>
            <td>
                    <div class="member_warning">
                        <input type="text" id="addr" name="addr" data-pattern="gdMemberId">
                    </div>
             </td>
            </tr>
            <!-- 상세주소 -->
            <tr>
            <th><span class="important">상세주소</span></th>
            <td>
                    <div class="member_warning">
                        <input type="text" id="deAddr" name="deAddr" data-pattern="gdMemberId">
                    </div>
                    <span id="errorDeaddr"  style="color: red"></span>
             </td>
            </tr>
            </tbody>
        </table>
    </div>
    <!-- //base_info_sec -->
</div>
<!-- //base_info_box --><!-- 회원가입/정보 기본정보 -->
				<!-- 회원가입/정보 사업자정보 --><!-- 회원가입/정보 사업자정보 -->
				<!-- 회원가입/정보 부가정보 -->

<!-- 회원가입/정보 부가정보 -->

				<!-- s_onnomad_210712_약관동의영역 HM -->
				<div class="nd-agreement" style="border-top: 0px">
					<table class="">
						<tbody>
						<tr>
							<th>
								<span class="important">이용약관동의</span>
							</th>
							<td>
								<div class="join_agreement_cont join_view">
									<div class="join_agreement_box nd-all-agree">
										<div class="form_element">
											<input type="checkbox" id="allAgree"/>
											<label class="check" for="allAgree"> <em>모든 약관을 확인하고 전체 동의합니다.</em></label>
											<span>(전체동의, 선택항목도 포함됩니다.)</span>
										</div>
									</div>
									<!-- //join_agreement_box -->

									<style>
										.join_agreement_cont .join_agreement_box .form_element span, .body-join .nd-agreement .form_element span a {
											font-size:12px !important;
											background-size: 8%;
											background-position: 91% 50%;
											font-weight: normal;
										}
										.body-join .nd-agreement .nd-sms-mail .nd-check-area {
											padding: 15px 0 0 15px;
										}
									</style>
									<div class="join_agreement_box js_terms_view">
										<div class="form_element">
											<input type="checkbox" id="termsAgree1" value="y" name="agreementInfoFl" class="checkbox require" />
											<label class="check_s" for="termsAgree1"><strong>(필수)</strong> <b>이용약관</b></label>
											<span style="margin-left: 100px;"><a href="agreement.do" target="_blank">전체보기</a></span>
										</div>
										<!--                            <div class="agreement_box">-->
										<!--                                
										<!--                            </div>-->
										<!-- //agreement_box -->
									</div>
									<!-- //join_agreement_box -->

									<div class="join_agreement_box js_terms_view">
										<div class="form_element">
											<input type="checkbox" id="termsAgree2" value="y" name="privateApprovalFl" class="checkbox require" />
											<label class="check_s" for="termsAgree2"><strong>(필수)</strong> <b>개인정보 수집 및 이용</b></label>
											<span style="margin-left: 32px;"><a href="pprivate.do" target="_blank">전체보기</a></span>
										</div>
										<!--                            <div class="agreement_box">-->
										<!--                                
										<!--                            </div>-->
										<!-- //agreement_box -->
									</div>
									<!-- //join_agreement_box -->
									<div class="nd-sms-mail">
										<div class="form_element">
											<input type="checkbox" id="receptAgree" value="y" name="receptAgree" class="nd-recept-agree"/>
											<label class="check_s" for="receptAgree"><strong>(선택)</strong> <b>정보 수신 동의</b></label>
										</div>

									</div>

									<div class="join_agreement_box">
										<div class="form_element" id="termsAgreeDiv">
											<input type="checkbox" id="termsAgree" value="y" name="under14ConsentFl" class="checkbox require" />
											<label class="check check_s" for="termsAgree"><strong>(필수)</strong> <em>본인은 만 14세 이상입니다</em></label>
										</div>
									</div>
								</div>
								<!-- //join_agreement_cont -->
							</td>
						</tr>
						</tbody>
					</table>
				</div>
				<script>


					var isAllCheck = false;
					var $allAgree = $("input#allAgree");
					var $aggreInputs = $allAgree.closest('.join_view').find('input');

					function toggleAllAgreeInput() {
						var isCheck = $allAgree.is(':checked');
						if(isCheck) {
							$allAgree.prop( "checked", false );
							$allAgree.next().removeClass("on");

						}
						else {
							$allAgree.prop( "checked", true );
							$allAgree.next().addClass("on");
						}
					}

					$allAgree.change(function () {
						var isCheck = $allAgree.is(':checked');
						$aggreInputs.each(function (index){
							if(isCheck) {
								if(!$(this).prop("checked")) {
									$(this).click();
								}
								isAllCheck = true;
							}
							else {
								if($(this).prop("checked")) {
									$(this).click();
								}
								isAllCheck = false;
							}
						});
					});

					$allAgree.closest('.join_view').find('input').change(function () {
						$aggreInputs.each(function (index){
							isAllCheck = true;
							if($($aggreInputs[index]).attr('id') != 'allAgree' && !$($aggreInputs[index]).prop("checked")) {
								isAllCheck  = false;
								if($allAgree.is(':checked')) {
									toggleAllAgreeInput();
								}
								return false;
							}
						});

						if(isAllCheck && !$allAgree.is(':checked')) {
							toggleAllAgreeInput();
						}
					});

					var $maggre = $("input#receptAgree");
					var $maggreInputs = $(".receptAgree-input").find('input');
					$maggre.change(function () {
						var isCheck = $maggre.is(':checked');
						$maggreInputs.each(function (index){
							if(isCheck) {
								if(!$(this).prop("checked")) {
									$(this).click();
								}
							}
						});
					});
					$maggreInputs.change(function () {
						var isMaggreCheck = true;
						$maggreInputs.each(function (index){
							if(!$($maggreInputs[index]).prop("checked")) {
								isMaggreCheck = false;
							}
						});
						if(!isMaggreCheck) {
							$maggre.prop( "checked", false );
							$maggre.next().removeClass("on");
						}
						else {
							$maggre.prop( "checked", true );
							$maggre.next().addClass("on");
							$maggre.change();
						}
					});

				</script>
				<!-- e_onnomad_210712_약관동의영역 HM -->

				<div class="btn_center_box">
<!--					<button type="button" id="btnCancel" class="btn_member_cancel">취소</button>-->
					<button type="button" class="btn_comfirm js_btn_join" id="joinBtn"  value="회원가입">가입하기</button>
				</div>
				<!-- //btn_center_box -->
			</form>
		</div>
		<!-- //member_cont -->
	</div>
	<!-- //join_base_wrap -->
</div>
<!-- //content_box -->
<script type="text/javascript">
	var paycoProfile = [];
    var naverProfile = [];
	var thirdPartyProfile = Array;
	var kakaoProfile = [];
	var appleProfile = null;

	$(document).ready(function () {
		var $formJoin = $('#formJoin');

		$(':text:first', $formJoin).focus();

		$('#btnCancel', $formJoin).click(function (e) {
			e.preventDefault();
			top.location.href = '/';
		});

		if ($('.js_datepicker').length) {
			$('.js_datepicker').datetimepicker({
				locale: 'ko',
				format: 'YYYY-MM-DD',
				dayViewHeaderFormat: 'YYYY MM',
				viewMode: 'days',
				ignoreReadonly: true,
				debug: false,
				keepOpen: false
			});
		}

		$('#btnPostcode').click(function (e) {
			e.preventDefault();
			$('#address-error, #addressSub-error').remove();
			$(':text[name=address], :text[name=addressSub]').removeClass('text_warning');
			gd_postcode_search('zonecode', 'address', 'zipcode');
		});

		$('#btnCompanyPostcode').click(function (e) {
			e.preventDefault();
			$('#comAddress-error, #comAddressSub-error').remove();
			$(':text[name=comAddress], :text[name=comAddressSub]').removeClass('text_warning');
			gd_postcode_search('comZonecode', 'comAddress', 'comZipcode');
		});





		$('#email_head').keyup(function () {
			if($('#email_head').val() != '' && $('#email_next').val() != ''){
				$("#email").val($('#email_head').val() + "@" + $('#email_next').val());
			} else {
				$("#email").val("");
			}
		});

		$('#email_next').keyup(function () {
			if($('#email_head').val() != '' && $('#email_next').val() != ''){
				$("#email").val($('#email_head').val() + "@" + $('#email_next').val());
			} else {
				$("#email").val("");
			}
		});

        gd_select_email_domain2('email_next');

		gd_member2.init($formJoin);

		$('.js_btn_join').click({form: $formJoin}, gd_member2.save);
	});


    /**
     * 회원가입시 Exception 발생하는 경우 회원가입 버튼 복원
     */
    function callback_not_disabled()
    {
        $('.js_btn_join').prop("disabled", false);
        $('.js_btn_join em').html("회원가입");
    }

	function gd_select_email_domain2(name,select) {
		if (typeof select === 'undefined') {
			select = 'emailDomain';
		}
		var $email = $(':text[name=' + name + ']');
		var $emailDomain = $('select[id='+select+']');
		$emailDomain.on('change', function (e) {
			var emailValue = $email.val();			
			var indexOf = emailValue.indexOf('@');
			if (indexOf == -1) {
				if ($emailDomain.val() === 'self') {										
					$("#email_next").val("");
				} else {
					$email.val($emailDomain.val());
					if($('#email_head').val() != '' && $('#email_next').val() != ''){
						$("#email").val($('#email_head').val() + "@" + $('#email_next').val());
					} else {
						$("#email").val("");
					}
				}
				$email.trigger('focusout');
			} else {
				if ($emailDomain.val() === 'self') {
					//$email.val(emailValue.substring(0, indexOf + 1));
					$("#email_next").val("");
					$email.focus();
				} else {
					$email.val(emailValue.substring(0, indexOf + 1) + $emailDomain.val());
					$email.trigger('focusout');
				}
			}
		});
	}
</script>


<!--이지어드민 실시간주문알림 입니다. 삭제시 알림톡 전송이 안됩니다.-->
<!--<script  
   src="//code.jquery.com/jquery-2.2.4.min.js"  
   integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="  
   crossorigin="anonymous"></script>-->

<script>
   /* $('#formJoin').submit(function(){        
       var cust_id = $("input[name=memId]").val();
       var name =  $("input[name=memNm]").val();
       var mobile = $("#cellPhone").val();
	   
       var data = {};
       data["action" ] = "join_set";
       data["domain" ] = "atower2015";
       data["userid" ] = "atower2015";
       data["cust_id"] = cust_id;
       data["name"   ] = name;
       data["mobile" ] = mobile;
       $.ajax({
           url : "//kakao.ezapps.co.kr/class/class_godo_alimtalk.jsp",
           data : data,
          dataType : "jsonp",
          jsonp    : "callback",
          success : function( resp )
          {
        console.log("success"+$("#cellPhone").val());
          },
          error : function(request,status,error)
          {
       console.log("error"+error);
   }
      });
  }); */

</script>    
<!--이지어드민 실시간주문알림 입니다. 삭제시 알림톡 전송이 안됩니다.-->


            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    </div>
    <!-- //container -->

    <div id="footer_wrap">
<div id="footer">
    <div class="foot_list">
		<div class="foot_list_in">
			<ul>
				<li><a href="../service/company.jsp">회사소개</a></li>
				<li><a href="../service/agreement.jsp">이용약관</a></li>
				<li><a href="../service/private.jsp">개인정보처리방침</a></li>
				<li><a href="../service/guide.jsp">이용안내</a></li>
			</ul>
			<div class="main_sns">
				<a href="https://www.instagram.com/pocketsalad_official/" target="_blank" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/sns_insta.png" alt="인스타"></a>
				<a href="https://www.facebook.com/pocketsalad/"  target="_blank" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/sns_fb.png" alt="페이스북"></a>
				<a href="https://www.youtube.com/channel/UCU7y8u3KvKaqxKmF9sahtgQ"  target="_blank" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/new/sns_you.png" alt="유투브"></a>
			</div>
		</div>
    </div>
    <!-- //foot_list -->
    <div class="foot_cont">
        <div class="foot_logo">
<img src="http://salad.sist.co.kr/resources/mng_images/saladLogo.png"  alt="하단로고" title="하단로고"   />        </div>
        <!-- //foot_logo -->
        <div class="foot_info">            
            <div class="foot_info_list">
				<dl>
					<dt>법인명(상호) : </dt>
					<dd>주식회사 에이타워</dd>
				</dl>
                <dl>
                    <dt>대표 :</dt>
                    <dd> 박혜리</dd>
                </dl>
				<dl>
                    <dt>TEL :</dt>
                    <dd><strong>1833-5722</strong></dd>
                </dl>
                <dl>
                    <dt>FAX : </dt>
                    <dd>02-6959-2236</dd>
                </dl>
                
            </div>
            <div class="foot_info_list">
                <dl>
                    <dt>사업자등록번호 :</dt>
                    <dd> 346-88-00170</dd>
                </dl>
                <dl class="ts">
                    <dt>통신판매업신고번호 :</dt>
                    <dd> 제 2015 - 인천강화 - 0015호  <a href="#" class="btn_licensee_info" onclick="gd_popup_bizInfo('3468800170'); return false;">사업자정보확인</a></dd>
                </dl>
            </div>
			<div class="foot_info_list">
				<dl>
					<dt>주소 : </dt>
					<dd>인천광역시 강화군 양도면 중앙로 971 </dd>
				</dl>
				<dl>
                    <dt>개인정보관리책임자 :</dt>
                    <dd> 박혜리</dd>
                </dl>
                <dl>
                    <dt>E-Mail :</dt>
                    <dd><a href="mailto:godo@godo.co.kr" class="btn_email">pocketsalad@atower.co.kr</a></dd>
                </dl>      
			</div>
            <!-- // -->
            <p class="copyright">Copyright©<strong>pocketsalad.co.kr</strong>All rights reserved.</p>
        </div>
        <!-- //foot_info -->
		
		<!-- //content_info_wrap -->
    </div>
<script>
$(function(){

	$("input[type='password']").on("propertychange change keyup paste input", function(){
			$(this).addClass("onput");

	});
	$("input[type='password']").removeClass("onput");
});
</script>
    <!-- //foot_cont -->
    <div class="foot_certify">
        <span></span>
        <span></span>
    </div>
    <!-- //foot_certify -->
</div>
<!-- //footer -->

<!-- Global site tag (gtag.js) - Google Ads: 955276942 -->

<script async src="https://www.googletagmanager.com/gtag/js?id=AW-955276942"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-955276942');
</script>


<!-- Global site tag (gtag.js) - Google Analytics -->
<!--
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-81300049-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-81300049-1');
</script>
-->

<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
      kakaoPixel('5900620314493041185').pageView();
</script>



<script type='text/javascript'>
	var sTime = new Date().getTime();

	(function(i,s,o,g,r,a,m){i['cmcObject']=g;i['cmcUid']=r;a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','//parks2016.cmclog.cafe24.com/weblog.js?v='+sTime,'parks2016');
</script>

<!-- 리포트2.0 로그분석코드 시작 -->
<script type="text/javascript">
var sTime = new Date().getTime();
(function(i,s,o,g,r,a,m){i['webObject']=g;i['webUid']=r;a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})
(window,document,'script','//parks2016.weblog.cafe24.com/weblog.js?v='+sTime,'parks2016');
</script>
<!-- 리포트2.0  로그분석코드 완료 -->

<script type='text/javascript'>
(function(i,s,o,g,r,a,m,n,d){i['cfaObject']=g;i['cfaUid']=r;i['cfaStype']=a;i['cfaDomain']=m;i['cfaSno']=n;i['cfaEtc']=d;a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})
(window,document,'script','//parks2016.weblog.cafe24.com/cfa.js?v='+new Date().getTime(),'parks2016','w','','0','');
</script>
    </div>
    <!-- //footer_wrap -->




    <!-- 퀵 검색 폼 -->
    <!-- 퀵 검색 폼 -->

</div>
<!-- //wrap -->

<!-- 쇼핑 카트 탭 -->

<!-- //쇼핑 카트 탭 -->

<!-- 회원가입 유도 푸시 -->

<!-- //회원가입 유도 푸시 -->

<!-- 절대! 지우지마세요 : Start -->
<div id="layerDim" class="dn">&nbsp;</div>
<iframe name="ifrmProcess" src='/blank.jsp' style="display:none" width="100%" height="0" bgcolor="#000"></iframe>
<!-- 절대! 지우지마세요 : End -->

<!-- 외부 스크립트 -->
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NS4V8GR"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) --><!-- Criteo Cart Event Script -->
        <script type="text/javascript">
        var setCriteoGoodsPrice = 0;
            
        function set_criteo_price() {
            if (typeof $('#frmViewLayer input[name="set_goods_price"]').val() == 'undefined') {
                var tmpGoodsPrice = parseFloat($('#frmView input[name="set_goods_price"]').val());
                var tmpOptionPrice = parseFloat($('#frmView input[name="set_option_price"]').val());
                var tmpTextPrice = parseFloat($('#frmView input[name="set_option_text_price"]').val());
            } else {
                var tmpGoodsPrice = parseFloat($('#frmViewLayer input[name="set_goods_price"]').val());
                var tmpOptionPrice = parseFloat($('#frmViewLayer input[name="set_option_price"]').val());
                var tmpTextPrice = parseFloat($('#frmViewLayer input[name="set_option_text_price"]').val());
            }
            if (tmpOptionPrice > 0) { tmpOptionPrice = tmpOptionPrice / goodsTotalCnt; }
            if (tmpTextPrice > 0) { tmpTextPrice = tmpTextPrice / goodsTotalCnt; }
            
            setCriteoGoodsPrice = tmpGoodsPrice + tmpOptionPrice + tmpTextPrice;
        }
        
        function criteoCartEvent(goodsNo, price, quantity) {
            window.criteo_q = window.criteo_q || [];
            var deviceType = /iPad/.test(navigator.userAgent) ? "t" : /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent) ? "m" : "d";
            window.criteo_q.push(
                { event: "setAccount", account: "34297" },
                { event: "setEmail", email: "", hash_method: "sha256" },
                { event: "setZipcode", zipcode: "" },
                { event: "setSiteType", type: deviceType },
                { event: "addToCart", item: [
                    { id: goodsNo, price: price, quantity: quantity }
                    ]
                }
            );
        }
        </script>
        <!-- End Criteo Cart Event Script -->

        

<!-- Start Script for IFDO ( 회원분석 )-->
<!-- 스크립트 생성 일시 = 2022 / 04 / 11 17:39:54 -->


<!-- End Script for IFDO -->
<!-- Start Script for IFDO -->
<script type='text/javascript'>
var _NB_gs = 'wlog.ifdo.co.kr';
var _NB_MKTCD = 'NJA2221003405';
var _NB_APPVER=''; /* 하이브리드 앱 버전 */
(function(a,b,c,d,e){var f;f=b.createElement(c),g=b.getElementsByTagName(c)[0];f.async=1;f.src=d;
f.setAttribute('charset','utf-8');
g.parentNode.insertBefore(f,g)})(window,document,'script','//script.ifdo.co.kr/jfullscript.js');
</script>
<!-- End Script for IFDO -->

<!-- Enliple Tracker Start -->
<script type="text/javascript">
		(function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_godomall_rent.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
    enp('create', 'common', 'atower2015', { device: 'W' });    
    enp('send', 'common', 'atower2015');
</script>
<!-- Enliple Tracker End -->

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="http://salad.sist.co.kr/resources/js/nd_kakao.js?ts=1662087469"></script>

</body>
</html>