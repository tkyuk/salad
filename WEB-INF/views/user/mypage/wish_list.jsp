<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html>
<head>
    <title>샐러드월드 - 내가 찾던 식단관리!</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="author" content="" />
    <meta name="description" content="신선한 샐러드를 언제 어디서나 간편하게 즐기는 포켓샐러드! 라이스&포켓닭까지 함께 즐겨보세요" />
    <meta name="keywords" content="샐러드, 닭가슴살, 샐러드배달, 샐러드도시락, 다이어트도시락, 포켓닭, 탄단지, 다이어트, 다이어트식단, 식단관리" />
    <meta name="csrf-token" content="MTY2NjgwMjE0OTEyMjk3MTM5Njk0MTk2NjI4NDEwNjE5MjM2NDU2NDI0" />
   <meta name="facebook-domain-verification" content="l8vlpgoyq5exc97dfww64gqzmnialy" />
	

    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://www.pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://www.pocketsalad.co.kr/mypage/wish_list.jsp">
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
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/layout/layout.css?ts=1666735347">
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/goods/list.css?ts=1662515260">
	<link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/button.css?ts=1644979979">
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/mypage/mypage.css?ts=1663905323" />
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/js/jquery/chosen/chosen.css?ts=1662105386" />
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/custom.css?ts=1660281178" />

    <!-- 온노마드 css 추가 -->
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/nd_custom.css?ts=1662983189" />
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/swiper.css?ts=1610501674" />


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
    $(function(){
    	$("#allMenuToggle").click(function(){
    		$("#gnbAllMenu").toggle();
    	});//click
    	
    });//ready
    
</script>

<script type="text/javascript">
$(function(){
	
	setMyTotal();//나의 전체 찜, 후기, 상품문의 건 수 표시
	
	setWishList(1);//찜 리스트 표시
	
});//ready

function loginChk() {
	
	var loginFlag=true;
	
	<c:if test="${ sessionScope.userId eq null }">
		alert("로그인을 해주세요.");
		location.href="http://salad.sist.co.kr/login.do";
		loginFlag= false;
	</c:if>
	
	return loginFlag;
}//loginChk

function setMyTotal() {//나의 전체 찜, 후기, 상품문의 건수
	$.ajax({
		url:"http://salad.sist.co.kr/my_total_ajax.do",
		dataType:"json",
		error:function( request, status, error ){
			alert("나의 전체 찜, 후기, 상품문의 건수를 불러오는데 실패했습니다.")
			console.log( "code"+request.status + "\n msg:" + request.responseText+"\n error:"+error);
		},
		success : function(jsonObj){
			$("#totalMyWish").html(jsonObj.totalMyWish);
			$("#totalMyRev").html(jsonObj.totalMyRev);
			$("#totalMyQna").html(jsonObj.totalMyQna);
		}//success
	});//ajax
}//setMyTotal

function setWishList(currentPage){
	$.ajax({
		url:"wish_list_ajax.do",
		data:"currentPage="+currentPage,
		dataType:"json",
		error:function( xhr ){
			alert("찜 목록 리스트를 불러오는데 실패했습니다.");
			console.log(xhr.status);
		},
		success:function(jsonObj){
			var tbOutput="";
			tbOutput+="<table>";
			tbOutput+="<colgroup>";
			tbOutput+="<col style='width:6%'>";	<!-- 선택 -->
			tbOutput+="<col>";					<!-- 상품명 -->
			tbOutput+="<col style='width:15%'>";	<!-- 가격 -->
			tbOutput+="<col style='width:15%'>";	<!-- 장바구니/삭제하기 버튼 -->
			tbOutput+="</colgroup>";
			tbOutput+="<tr>";
			tbOutput+="<th>";
			tbOutput+="<div>";
			tbOutput+="<input type='checkbox' id='allCheck' name='allCheck' class='gd_checkbox_all111 dev_checkbox_all' data-target-name='prdNumArr'>";
			tbOutput+="<label for='allCheck' class='check_s on'></label>";
			tbOutput+="</div>";
			tbOutput+="</th>";
			tbOutput+="<th>상품명</th>";
			tbOutput+="<th>가격</th>";
			tbOutput+="<th></th>";
			tbOutput+="</tr>";
			if(!jsonObj.isEmpty){
				$.each(jsonObj.list, function(i, json){
					tbOutput+="<tr>";
					tbOutput+="<td>";
					tbOutput+="<div class='wish_sno_"+json.prdNum+"'>";
					tbOutput+="<input type='checkbox' id='wishSno"+json.prdNum+"' name='prdNumArr' class='dev_checkbox_1' value = '"+json.prdNum+"' data-order-possible='y'>";
					tbOutput+="<label for='wishSno"+json.prdNum+"' class='check_s on'></label>";
					tbOutput+="</div>";
					tbOutput+="</td>";
					tbOutput+="<td class='td_left'>";
					tbOutput+="<div class='pick_add_cont'>";
					tbOutput+="<span class='pick_add_img'>";
					tbOutput+="<em><a href='http://salad.sist.co.kr/goods/goods_view.do?prdNum="+json.prdNum+"'><img src='http://salad.sist.co.kr/common/images/product/"+json.thum+"' width='150' class='middle' class='imgsize-s' /></a></em>";
					tbOutput+="</span>";
					tbOutput+="<div class='pick_add_info'>";
					tbOutput+="<a href='http://salad.sist.co.kr/goods/goods_view.do?prdNum="+json.prdNum+"'>"+json.prdName+"</a>";
					tbOutput+="</div>";
					tbOutput+="</div>";
					tbOutput+="</td>";
					tbOutput+="<td>";
					
					var price=Math.floor(json.prdPrice-(json.prdPrice*(json.prdDiscount/100)));
					const prdPrice=price.toLocaleString('ko-KR');
					
					tbOutput+="<strong class='asdfasdf111'>"+prdPrice+"원</strong>";
					tbOutput+="</td>";
					tbOutput+="<td>";
					tbOutput+="<div>";
					tbOutput+="<a href='#void' id='addCartBtn' onclick=\"eventAddCart('"+json.prdNum+"')\" class='btn_wish_cart js_cart_wish'><em>장바구니</em></a>";
					tbOutput+="<a href='#void' id='removeWishBtn' onclick=\"eventRemoveWish('"+json.prdNum+"')\" class='btn_wish_del'><em>삭제하기</em></a>";
					tbOutput+="</div>";
					tbOutput+="</td>";
					tbOutput+="</tr>";
				});//each
			} else {
					tbOutput+="<tr><td colspan=4>데이터가 존재하지 않습니다.</td></tr>";
			}//end else
				tbOutput+="</table>";
				
				tbOutput+="<a href='#void' id='removeChoisWishBtn' onclick=\"eventRemoveChoiceWish()\" class='btn_wish_del'><em>선택 상품 삭제</em></a>";
				tbOutput+="<a href='#void' id='addChoisCartBtn' onclick=\"eventAddChoiceCart()\" class='btn_wish_cart js_cart_wish'><em>선택 상품 장바구니</em></a>";
			
				$("#wishListOutput").html(tbOutput);
				/* 페이징 버튼 */
				var pgOutput="<nav><ul>";
				if( jsonObj.startPage != 1 ) {
					pgOutput+="<li>";
					pgOutput+="<a href='#void' onclick='setWishList("+ 1 +")' tabindex='-1'";
					pgOutput+="aria-disabled='true'>&lt&lt;<!-- << --></a></li>";
				}//end if
				if( jsonObj.startPage != 1 ) {
					pgOutput+="<li>";
					pgOutput+="<a href='#void' onclick='setWishList("+ (jsonObj.startPage-1) +")' tabindex='-1'";
					pgOutput+="aria-disabled='true'>&lt;<!-- < --></a></li>";
				}//end if
				for(var i=jsonObj.startPage;i<=jsonObj.endPage;i++){
					if(currentPage==i) {
						pgOutput+="<li class='on a_none'>";
					} else {
						pgOutput+="<li>";
					}//end else
					pgOutput+="<a href='#void' onclick='setWishList("+ i +")'>"+ i +"</a></li>";
				}//end for
				if(jsonObj.totalPage != jsonObj.endPage) {
					pgOutput+="<li>";
					pgOutput+="<a href='#void' onclick='setWishList("+ (jsonObj.endPage + 1) +")'>&gt;<!-- > --></a></li>";
				}//end if
				if(jsonObj.totalPage != jsonObj.endPage) {
					pgOutput+="<li>";
					pgOutput+="<a href='#void' onclick='setWishList("+ (jsonObj.totalPage) +")'>&gt&gt;<!-- >> --></a></li>";
				}//end if
				pgOutput+="</ul></nav>";
				
				pgOutput+="<input type='hidden' id='currentPage' value='"+currentPage+"'>";
				
				$("#wishPageOutput").html(pgOutput);
				
				location.href="javascript:setChkBox()";
				
		}//success
	})//ajax
}//setWishList

function setChkBox(){//체크 박스 모두 선택 이벤트
	
	$("#allCheck").click(function() {
		if($("#allCheck").is(":checked")){
			$("input[name=prdNumArr]").prop("checked", true);
		}else {
			$("input[name=prdNumArr]").prop("checked", false);
		}//end else
	});//click

	$("input[name=prdNumArr]").click(function() {
		var total = $("input[name=prdNumArr]").length;
		var checked = $("input[name=prdNumArr]:checked").length;
		
		if(total != checked) {
			$("#allCheck").prop("checked", false);
		}else {
			$("#allCheck").prop("checked", true); 
		}
	});
	
}//setChkBox()

function eventRemoveWish(prdNum){//삭제하기 버튼 이벤트
	
	if(!loginChk()){
		return;
	}//end if
	
	var params = $("#wishFrm").serialize();
	$.ajax(
	{
		url : "remove_wish_process.do",
		data: "prdNumArr="+prdNum,
		dataType:"json",
		error:function( xhr ){
			alert("찜 목록이 삭제에 실패했습니다.");
			console.log(xhr.status);
		},
		success:function(jsonObj){
			alert("찜 목록이 삭제 되었습니다.");
			setWishList($("#currentPage").val());
			setMyTotal();//나의 전체 찜, 후기, 상품문의 건 수 갱신
		}//success
	});//ajax
}//eventRemoveWish

function eventAddCart(prdNum){//장바구니 버튼 이벤트
	
	if(!loginChk()){
		return;
	}//end if
	
	$.ajax(
	{
		url : "add_cart_wish_process.do",
		data: "prdNumArr="+prdNum,
		dataType:"json",
		error:function( xhr ){
			alert("장바구니 추가에 실패했습니다.");
			console.log(xhr.status);
		},
		success:function(jsonObj){
			alert("장바구니에 추가 되었습니다.");
			setWishList($("#currentPage").val());
			setMyTotal();//나의 전체 찜, 후기, 상품문의 건 수 갱신
		}//success
	});//ajax
}//eventAddCart

function eventRemoveChoiceWish(){
	
	if(!loginChk()){
		return;
	}//end if
	
	var params = $("#wishFrm").serialize();
	$.ajax(
	{
		url : "remove_wish_process.do",
		data: params,
		dataType:"json",
		error:function( xhr ){
			alert("찜 목록이 삭제에 실패했습니다.");
			console.log(xhr.status);
		},
		success:function(jsonObj){
			alert(jsonObj.delCnt+"건의 찜 목록이 삭제 되었습니다.");
			setWishList($("#currentPage").val());
			setMyTotal();//나의 전체 찜, 후기, 상품문의 건 수 갱신
		}//success
	});//ajax
}//eventRemoveWish

function eventAddChoiceCart(){
	
	if(!loginChk()){
		return;
	}//end if
	
	var params = $("#wishFrm").serialize();
	$.ajax(
	{
		url : "add_cart_wish_process.do",
		data: params,
		dataType:"json",
		error:function( xhr ){
			alert("장바구니 추가에 실패했습니다.");
			console.log(xhr.status);
		},
		success:function(jsonObj){
			alert(jsonObj.addCnt+"건의 장바구니에 추가 되었습니다.");
			setWishList($("#currentPage").val());
			setMyTotal();//나의 전체 찜, 후기, 상품문의 건 수 갱신
		}//success
	});//ajax
}//eventAddCart

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
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-27T01%3A35%3A49%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3A%2285754%22%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fwww.pocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22wish_list.jsp%22%2C%22domain%22%3A%22www.pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData=?v=2020120404"></script>
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
<script type="text/javascript" src="http://salad.sist.co.kr/resources/js/naver/naverCommonInflowScript.js?Path=/mypage/wish_list.jsp&amp;Referer=https://www.pocketsalad.co.kr:443&amp;AccountID=s_2dc21239d6a&amp;Inflow=pocketsalad.co.kr" id="naver-common-inflow-script"></script>
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
        <!-- This script is for AceCounter START --> 
        <script language='javascript'> 
            var _ag   = '0';            
            var _id   = 'ekdud3674';  
            var _mr = 'single';       // ( 'single' , 'married') 
            var _gd = '';            //  ('man' , 'woman')  
        </script>
        <!-- AceCounter END --><!-- AceCounter Log Gathering Script V.8.0.2019080601 -->
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
	
	
<body id="body" class="body-mypage body-wish-list pc"  >


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
				<div class="logo_main"><a href="http://salad.sist.co.kr/index.do" ><img src="http://salad.sist.co.kr/resources/mng_images/saladLogo.png"  alt="상단 로고" title="상단 로고"   /></a></div>
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
						<c:when test="${ sessionScope.userId eq null }">
							<li><a href="http://salad.sist.co.kr/login.do">로그인</a></li>
							<li><a href="http://salad.sist.co.kr/join.do">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li><span style="color: #333; font-size: 15px;"><c:out value="${ sessionScope.userName }"/>님, 오늘도 건강한 하루 되세요.</span></li>
							<li><a href="http://salad.sist.co.kr/logout_process.do">로그아웃</a></li>
						</c:otherwise>
					</c:choose>
					<li class="cs">
						고객센터
						<div class="cs_in">
							<ul >
								<li><a href="http://salad.sist.co.kr/notice.do">공지사항</a></li>
								<li><a href="http://salad.sist.co.kr/goodsreview_list.do">리얼후기</a></li>								
							</ul>
						</div>
					</li>
				</ul>
				<ul class="list_2">
					<li><a href="http://salad.sist.co.kr/mypage_pass.do"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/top_cs_icn.png" alt="마이페이지"></a></li>
					<li class="cart"><a href="http://salad.sist.co.kr/cart.do"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/top_cart_icn.png" alt="장바구니"></a>
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
                    <em><a href="#" class="local_home">HOME</a> > 마이페이지 > 찜리스트</em>
                </div>
            </div>
            <!-- //location_wrap -->

            <div class="sub_content">

                <div class="side_cont">
<div class="sub_menu_box">
    <h2>마이페이지</h2>
    <ul class="sub_menu_mypage">
        <li>쇼핑정보
            <ul class="sub_depth1">
                <li><a href="http://salad.sist.co.kr/order_list.do">- 주문목록/배송조회</a></li>
                <li><a href="http://salad.sist.co.kr/mypage/cancel_list.do">- 취소 내역</a></li>
                <li><a href="http://salad.sist.co.kr/mypage/wish_list.do">- 찜리스트</a></li>
            </ul>
        </li>
        <li>회원정보
            <ul class="sub_depth1">
                <li><a href="http://salad.sist.co.kr/my_change_index.do">- 회원정보 변경</a></li>
				<li><a href="http://salad.sist.co.kr/mypage_deli.do">- 배송지 관리</a></li>
                <li><a href="http://salad.sist.co.kr/mypage_out_pwChk.do">- 회원 탈퇴</a></li>
            </ul>
        </li>
        <li>나의 상품후기
            <ul class="sub_depth1">
                <li><a href="http://salad.sist.co.kr/mypage_goods_review.do">- 나의 상품후기</a></li>
            </ul>
        </li>
        <li>나의 상품문의
            <ul class="sub_depth1">
                <li><a href="http://salad.sist.co.kr/my_qna.do">- 나의 상품문의</a></li>
            </ul>
        </li>
    </ul>
</div>
<!-- //sub_menu_box -->
<script type="text/javascript">
    // 메뉴 선택
    $('.sub_menu_mypage li > a[href*="' + document.location.pathname + '"]').addClass('active');
</script>
                </div>
                <!-- //side_cont -->

<div class="content">
    <div class="mypage_cont">

        <!-- 마이페이지 회원 요약정보 -->
        <div class="mypage_top_info">
    <div class="mypage_top_txt">
        <div class="grade_txt">
            <p><c:out value="${ sessionScope.userName }"/>님의</p><p> 마이페이지입니다.</p>
            <div class="btn_layer">

            </div>
        </div>
        <!-- //grade_txt -->
    </div>
    <!-- //mypage_top_txt -->

    <div class="mypage_top_wallet">
        <ul>
            <li>
                <span><em>찜하기</em><strong><span id="totalMyWish"></span></strong></span>
            </li>
            <li>
                <span><em>나의 상품문의</em><strong><span id="totalMyQna"></span></strong></span>
            </li>
            <li>
				<span><em>나의 상품후기</em><strong><span id="totalMyRev"></span></strong></span>
            </li>
        </ul>
    </div>
    <!-- //mypage_top_wallet -->

</div>
<!-- //mypage_top_info -->

        <!-- 마이페이지 회원 요약정보 -->

        <div class="mypage_wish_list">
            <div class="mypage_zone_tit">
                <h3>찜리스트</h3>
            </div>

            <form id="wishFrm" name="wishFrm" method="post" >
            <div class="mypage_table_type" id="wishListOutput">
                
            </div>
            </form>
			<div id="wishPageOutput" style="text-align: center">
			
			</div>
        </div>
        <!-- //mypage_wish_list -->

    </div>
    <!-- //mypage_cont -->

</div>
<!-- //content -->


<div id="optionViewLayer" class="layer_wrap dn"></div>

<!-- Facebook Pixel Code --><script>
    fbq('track', 'AddToWishlist', {
        content_ids: [1000000434,68,68],
         currency: 'KRW',
        content_type: 'product',
    });
    </script><!-- Facebook Pixel Code -->

													 <!-- Start Script for IFDO ( 위시리스트 분석 )-->
<!-- 스크립트 생성 일시 = 2022 / 04 / 11 17:39:54 -->

<!-- 위시리스트 상품리스트 시작 -->
<div id='ifdo_basket_list' style='display:none;'>
<ul class='ifdo_basket_ul'>
<li class='ifdo_product_no'>1000000434</li>
<li class='ifdo_product_name'>[라이스 시즌2] 취나물밥&매콤 제육볶음</li>
<li class='ifdo_product_price'>4,410원</li>
<li class='ifdo_product_cate'></li>
<li class='ifdo_product_num'>1</li>
</ul>
<ul class='ifdo_basket_ul'>
<li class='ifdo_product_no'>68</li>
<li class='ifdo_product_name'>닭가슴살 샐러드</li>
<li class='ifdo_product_price'>6,700원</li>
<li class='ifdo_product_cate'></li>
<li class='ifdo_product_num'>1</li>
</ul>
<ul class='ifdo_basket_ul'>
<li class='ifdo_product_no'>68</li>
<li class='ifdo_product_name'>닭가슴살 샐러드</li>
<li class='ifdo_product_price'>13,400원</li>
<li class='ifdo_product_cate'></li>
<li class='ifdo_product_num'>2</li>
</ul>
</div>
<!-- 위시리스트 상품리스트 끝 -->
<script type='text/javascript'>
var _NB_LO = [];
    var _NB_plist =[];
//var _NB_LO = [{'PN':'','CT':'','AM':'0','PR':'2000'}];
var obj = document.getElementById('ifdo_basket_list');
if( obj != null ){
var obj2 = obj.getElementsByClassName('ifdo_basket_ul');
var len = obj2.length;
if( len > 0 ){
for(var i=0;i<len;i++){
var _l_pc=obj2[i].getElementsByClassName('ifdo_product_no')[0].textContent;
var _l_name=obj2[i].getElementsByClassName('ifdo_product_name')[0].textContent;
var _l_price=obj2[i].getElementsByClassName('ifdo_product_price')[0].textContent;
                var _l_cate=obj2[i].getElementsByClassName('ifdo_product_cate')[0].textContent;
                var _l_num=obj2[i].getElementsByClassName('ifdo_product_num')[0].textContent;
if(_l_name!=''&&_l_price!=''&&_l_num!=''){
                    if( typeof _NB_plist[_l_name] == 'undefined'){
                        var _t_obj = {};
_t_obj['PC'] = _l_pc;
                        _t_obj['PN'] = _l_name;
                        _t_obj['PR'] = parseInt(_l_price.replace(/[^0-9]/gi,''));
                        _t_obj['AM'] = parseInt(_l_num.replace(/[^0-9]/gi,''));
                        _t_obj['CT'] = '';
                        _NB_LO.push(_t_obj);
_NB_plist[_l_name] = _l_name;
                    }
}
}
}
}
    var _NB_PM = 'w';/*위시리스트 구분값*/
</script>
<!-- End Script for IFDO -->
													 
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


    <div class="scroll_wrap">

        <!-- 좌측 스크롤 배너 -->
        <div id="scroll_left">

        </div>
        <!-- //scroll_left -->
        <!-- //좌측 스크롤 배너 -->




    </div>
    <!-- //scroll_wrap -->


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
                { event: "setEmail", email: "56b2365153eb1d5a40fab99d6f0c68a579607e1e9d30189fdaa1d3de3a8746a4", hash_method: "sha256" },
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

<script type='text/javascript'>
var _NB_ID='ekdud3674';
var _NB_UDF={'udf01':'홍다영','udf03':'010-8258-3674','udf06':'포켓탐색 Lv.1'};
</script>

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

</body>.
</html>