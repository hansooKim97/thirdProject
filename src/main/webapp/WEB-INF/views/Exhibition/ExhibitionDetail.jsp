<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
Object userId = session.getAttribute("userId");
Object userName = session.getAttribute("userName");
Object userPh = session.getAttribute("userPh");
// 세션 연결
if (session.getAttribute("userId") == null) {
// 세션 연결에 실패하면 null	
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 실패:"+userId);
System.out.println("세션연결 실패:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

}else{
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 성공:"+userId);
System.out.println("세션연결 성공:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
}
%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico">
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/choices.min.css">
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/simplebar.min.css">
<!--Icons-->
<link href="/resources/fonts/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<!--Google fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100..700&family=Source+Serif+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400&display=swap"
	rel="stylesheet">
<!-- Main CSS -->
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">

<!--Flatpickr-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/flatpickr.min.css">

<!--:Simplebar css ()-->
<style type="text/css">
.simplebar-track.simplebar-vertical {
	width: 7px;
}

.simplebar-scrollbar:before {
	background: currentColor;
}

.date {
	margin: 0px;
	color: gray;
}
</style>

<title>${vo.exhibition_title}</title>
</head>

<body>
	<!--:Preloader Spinner-->
	<div class="spinner-loader bg-gradient-secondary text-white">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-3">Loading...</span>
	</div>


	<jsp:include page="/header.jsp" />


	<!--Main content-->
	<main>
		<section class="position-relative bg-white">
			<div class="container py-9 position-relative">
				<div class="row justify-content-between">
					<div class="col-lg-6 col-sm-7 mx-auto mx-lg-0 mb-5 mb-lg-0">
						<img src="${vo.exhibition_image}" alt="" style="width: 1500px"
							class="img-fluid mb-3"> <img
							src="/resources/img/exam/22.jpg" alt="" class="img-fluid mb-3">
							<img src="${vo.exhibition_contents}" alt="" style="width: 1500px"
							class="img-fluid mb-3">
					</div>
					<!--/.col-->
					<div class="col-md-8 mx-auto col-lg-5">

						<div class="sticky-top top-0">
							<!--Breadcrumbs-->
							<nav class="d-md-flex" aria-label="breadcrumb">
								<ol class="breadcrumb mb-3">
									<p class="date">${vo.exhibition_total_date}</p>
								</ol>
							</nav>
							<!-- Product Description -->
							<div class="mb-4 pb-4 border-bottom">
								<div class="mb-2">
									<h3>${vo.exhibition_title}</h3>
									<div class="d-flex justify-content-between align-items-center">
										<div>
											<p class="fs-5 mb-0">
												${vo.exhibition_price} won
											</p>
										</div>
									</div>
								</div>
							</div>

							<div class="mb-4 pb-4 border-bottom">
								<div class="mb-0">
									<div
										class="d-flex align-items-center mb-3 justify-content-between">
										<h6 class="mb-0" style="color: #f15b66;">Location</h6>
									</div>
									<div
										class="d-md-flex align-items-center justify-content-between">
										<h6>${vo.exhibition_location}</h6>
										<a href="#" class="btn btn-outline-dark" data-bs-target="#modal-loc-bar-2" data-bs-toggle="modal">
											<i class="bx bx-location-plus fs-5"></i>
										</a>
									</div>
								</div>
								<!--/.size-->
							</div>
							<!--/.size-->


							<div class="mb-4 pb-4 border-bottom">
								<div
									class="d-flex justify-content-between align-content-stretch">

									<!--정보-->
									<div class="">
										<h6 style="color: #f15b66;">Schedule</h6>
										<div class="d-flex" role="group"
											aria-label="Basic radio toggle button group">
											<h6>${vo.exhibition_memo }</h6>
										</div>
									</div>
									<!--/.정보-->

								</div>
							</div>
							
							
							
							<%
							// 세션 연결
							if (session.getAttribute("userId") == null) {
							// 세션 연결에 실패하면 null	
							%>						
							<div class="d-grid mb-2">
								<a class="btn btn-outline-primary hover-lift"> 
									<i class="bx bx-heart fs-4 me-2"></i> Add to Wishlist
								</a>
							</div>
							<% 
							}else{
							%>
							<div class="d-grid mb-2">
								<a href="../customer/CustomerWishList.do?id=${vo.exhibition_id}" class="btn btn-outline-primary hover-lift"> 
									<i class="bx bx-heart fs-4 me-2"></i> Add to Wishlist
								</a>
							</div>
							<% 
							}
							%>
							
							
							<div class="d-grid">
								<a href="#" class="btn btn-primary hover-lift"
									data-bs-target="#modal-pay-bar-2" data-bs-toggle="modal"> <i class="bx bx-credit-card fs-4 me-2"></i> 
									Book a Ticket
								</a>
							</div>
							<!--/.cart-action-->

						</div>
					</div>
					<!--/.col-->
				</div>
			</div>
		</section>
	</main>
	
	
	<!-- 장소 모달 시작 -->
	<div id="modal-loc-bar-2" class="modal fade" tabindex="-1" aria-labelledby="modal-loc-bar-2" aria-hidden="true">
		<div class="modal-dialog modal-dialog-top modal-md" style="max-width: 700px;">
			<div class="modal-content position-relative border-0">
				<div class="position-relative px-4">
					<div class="position-absolute end-0 width-7x top-0 d-flex align-items-center justify-content-center" style="margin-top: 5px;">
						<button type="button" class="btn-close w-auto small"
							data-bs-dismiss="modal" aria-label="Close">
							<i class="bx bx-x fs-4 me-2"></i>
						</button>
					</div>
					<div class="align-items-center">
						<div class="mb-3 mt-6">
							<h5 id="exhibition_name">${vo.exhibition_title}</h5>
							<h6 id="adress">${vo.exhibition_location}</h6>
						</div>
						<div class="mb-3" id="googleMap" style="height: 500px;"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 장소 모달 끝 -->


	<!-- 예매 모달 시작 -->
	<div id="modal-pay-bar-2" class="modal fade" tabindex="-1" aria-labelledby="modal-pay-bar-2" aria-hidden="true">
		<div class="modal-dialog modal-dialog-top modal-md">
			<div class="modal-content position-relative border-0">
				<div class="position-relative px-4">
					<div class="position-absolute end-0 width-7x top-0 d-flex align-items-center justify-content-center" style="margin-top: 5px;">
						<button type="button" class="btn-close w-auto small"
							data-bs-dismiss="modal" aria-label="Close">
							<i class="bx bx-x fs-4 me-2"></i>
						</button>
					</div>
					<form class="mb-0" action="ExhibitionPayment.do">
						<div class="align-items-center">
							<h6 class="d-flex mt-4" style="justify-content: center;">Ticekting</h6>

							<!-- 구분선 -->
							<div class="d-flex align-items-center py-3">
								<span class="flex-grow-1 border-bottom pt-1"></span>
							</div>
							<!-- 전시회 이름 -->
							<div class="mb-3">
								<label class="form-label" for="profile_name">Exhibition</label> <input
									type="text" name="title" placeholder="전시회명" title="${vo.exhibition_title}"
									value="${vo.exhibition_title}" readonly="readonly"
									class="form-control">
							</div>
							<!-- 이름 -->
<!-- 							<div class="mb-3"> -->
<!-- 								<label class="form-label" for="profile_name">Id</label> <input -->
<!-- 									type="text" name="customer_id" placeholder="세션아이디" -->
<%-- 									value="<%=userId%>" readonly="readonly" class="form-control"> --%>
<!-- 							</div> -->
							<!-- 예매자 이름 -->
							<div class="mb-3">
								<label class="form-label" for="profile_name">Name</label> <input
									type="text" name="consumer_name" placeholder="구매자" value="<%=userName %>"
									class="form-control">
							</div>
							<!-- 전시회 아이디 -->
							<div class="mb-3">
								<input type="hidden" name="exhibition_id" placeholder="전시아이디"
									value="${vo.exhibition_id}" readonly="readonly"
									class="form-control">
							</div>
							<!-- 예매자 연락처 -->
							<div class="mb-3">
								<label class="form-label" for="profile_name">Phone</label> <input
									type="text" name="consumer_ph" placeholder="핸드폰번호" value="<%=userPh%>" class="form-control">
							</div>
							<!-- 방문 날짜 -->
							<div class="mb-3">
								<label class="form-label" for="profile_name">Visit Date</label> 
								<input type="date" name="ticketing_date" placeholder="날짜" id="now_date"
									data-flatpickr class="form-control">
							</div>
							<!-- 구분선 -->
							<div class="d-flex align-items-center py-3">
								<span class="flex-grow-1 border-bottom pt-1"></span>
							</div>

							<!-- 결제하기 섹션 -->
							<!-- 기본값 -->
<!-- 							<div class="mb-3"> -->
								<input type="hidden" id="d_money"
									value="${vo.exhibition_price}" readonly="readonly"
									class="form-control">
<!-- 							</div> -->

							<!-- 인원 -->
							<div class="mb-2">
								<label class="form-label" for="profile_name">Count</label> <input
									type="number" name="totalCustomer" id="result" value="1"
									readonly="readonly" class="form-control">
							</div>
							
							<div class="mb-3 d-flex" style="justify-content: space-between;">
								<button class="btn btn-light" type="button"
									onclick='count("plus")' style="width: 49%;">
									<i class="bx bx-caret-up fs-4 me-2"></i>
								</button>
								<button class="btn btn-light" type="button"
									onclick='count("minus")' style="width: 49%;">
									<i class="bx bx-caret-down fs-4 me-2"></i>
								</button>
							</div>
							
							<!-- 금액 -->
							<div class="mb-3">
								<label class="form-label" for="profile_name">Total Price</label> <input
									type="number" name="totalPrice" id="money"
									value="${vo.exhibition_price}" readonly="readonly"
									class="form-control">
							</div>

							<div class="d-flex align-items-center py-3">
								<span class="flex-grow-1 border-bottom pt-1"></span>
							</div>
							
							<%
							// 세션 연결
							if (session.getAttribute("userId") == null) {
							// 세션 연결에 실패하면 null	
							%>							
							<!-- 결제하기 버튼 -->
							<div class="mb-2 text-end">
								<button type="submit" class="btn btn-primary form-control" disabled="disabled">로그인 후에 이용할 수 있어요!</button>
							</div>
							<% 
							}else{
							%>
							<!-- 결제하기 버튼 -->
							<div class="mb-2 text-end">
								<button type="submit" class="btn btn-primary form-control">결제하기</button>
							</div>
							<% 
							}
							%>
														
							
							<div class="mb-3 text-end">
								<button type="reset" class="btn btn-outline-dark form-control">취소하기</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 예매 모달 끝 -->
	

	<!-- 추후 결제모달로 바뀔 예정 (시작) -->
<!-- 	<hr> -->
<!-- 	<form action="ExhibitionPayment.do"> -->
<!-- 		<br> <br> <br> -->
<!-- 		<h1>결제모달 예정</h1> -->
<!-- 		<hr> -->
<!-- 		<input type="text" name="customer_id" placeholder="세션아이디" -->
<!-- 			value="default" readonly="readonly"> <br> <input -->
<!-- 			type="text" placeholder="구매자" name="consumer_name" value="김한수"> -->
<!-- 		<br> <input type="text" placeholder="전시아이디" name="exhibition_id" -->
<%-- 			value="${vo.exhibition_id}" readonly="readonly"> <br> <input --%>
<%-- 			type="text" value="${vo.exhibition_title}" placeholder="전시회명" --%>
<!-- 			readonly="readonly" name="title"> <br> <input -->
<!-- 			type="text" value="0" placeholder="핸드폰번호" name="consumer_ph"> -->
<!-- 		<br> <input type="text" placeholder="날짜" value="2022.01.01" -->
<!-- 			name="ticketing_date" readonly="readonly"> -->
		<!-- 달력 들어갈 예정 -->
<!-- 		<br> <br> 금액 :<input type="number" -->
<%-- 			value="${vo.exhibition_price}" id="money" readonly="readonly" --%>
<!-- 			name="totalPrice"> 인원 : <input type="number" id='result' -->
<!-- 			value="1" name="totalCustomer"> 기본값 : <input type="number" -->
<%-- 			value="${vo.exhibition_price}" id="d_money" readonly="readonly"> --%>
<!-- 		<input type='button' onclick='count("plus")' value='+' /> <input -->
<!-- 			type='button' onclick='count("minus")' value='-' /> <br> <input -->
<!-- 			type="submit" value="결제하기"> <input type="reset" value="취소하기"> -->
<!-- 	</form> -->
<!-- 	<hr> -->
<!-- 	<br> -->
<!-- 	<br> -->
<!-- 	<br> -->
<!-- 	<hr> -->
	<!-- 추후 결제모달로 바뀔 예정 (끝)  -->


<jsp:include page="/footer.jsp" />


</body>

<!-- 구글맵 start  -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8uz4_YNEc-obhIbo9BaHUxktKYQcXqxM&callback=myMap"></script>
<script type="text/javascript">
//전시회명
var exhibition_name = document.querySelector("#exhibition_name").innerText
// 주소
var adress = document.querySelector("#adress").innerText

    function initialize() {
        var mapOptions = {
                            zoom: 17, // 지도를 띄웠을 때의 줌 크기
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        };
         
         
        var map = new google.maps.Map(document.getElementById("googleMap"), mapOptions);
         
        var size_x = 40; // 마커로 사용할 이미지의 가로 크기
        var size_y = 40; // 마커로 사용할 이미지의 세로 크기
     
        // 마커로 사용할 이미지 주소
        var image = new google.maps.MarkerImage( adress,
                                                    new google.maps.Size(size_x, size_y),
                                                    '',
                                                    '',
                                                    new google.maps.Size(size_x, size_y));
         
        // Geocoding *****************************************************
        var marker = null;
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode( { 'address': adress}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                marker = new google.maps.Marker({
                                map: map,
                                icon: image, // 마커로 사용할 이미지(변수)
                                title: exhibition_name, // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
                                position: results[0].geometry.location
                            });
 
                var content = exhibition_name+"<br/><br/>장소: "+adress; // 말풍선 안에 들어갈 내용
             
                // 마커를 클릭하면 표시되는 내용
                var infowindow = new google.maps.InfoWindow({ content: content});
                google.maps.event.addListener(marker, "click", function() {infowindow.open(map,marker);});
            } else {
            	// 주소를 못찾을 경우 alert 창 + 지도가 표시되지 않음
                alert("Geocode was not successful for the following reason: " + status);
            }
        });     
    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>
<!-- 구글맵 end -->


<!-- 결제모달 스크립트 시작 -->
<script type="text/javascript">
	function count(type) {
// 		alert("함수호출")
		var totalMoney = document.getElementById("money");
		var totalResult = document.getElementById("result");
		var deafultMoney = document.getElementById("d_money");

		
		var money = totalMoney.value;
		var d_money = deafultMoney.value;
		var result = totalResult.value;
		
// 		alert(money)

		// 더하기/빼기
		if (type === 'plus') {
// 			alert("+")
			result = parseInt(result) + 1;
			money = parseInt(money) + parseInt(d_money);
// 			alert(money)
		} else if (type === 'minus') {
// 			alert("-")
			
			if( result == 1){
				alert("1매 이상 선택해주세요.");
				return;
			}
			result = parseInt(result) - 1;
			money = parseInt(money) - parseInt(d_money);
		} 
		// 결과 출력
		totalResult.value = result;
		totalMoney.value = money;
	}
</script>
<!-- 결제모달 스크립트 끝 -->




<!-- scripts -->
<script src="/resources/js/theme.bundle.js"></script>

<!--Select scripts-->
<script src="/resources/vendor/node_modules/js/choices.min.js"></script>
<script src="/resources/vendor/node_modules/js/simplebar.min.js"></script>

<!-- 달력 선택 스크립트 -->
<script src="/resources/vendor/node_modules/js/flatpickr.min.js"></script>
<script>
        let pickr = document.querySelectorAll("[data-flatpickr]");
        pickr.forEach(el => {
            const t = {
                ...el.dataset.flatpickr ? JSON.parse(el.dataset.flatpickr) : {},
            }
            new flatpickr(el, t)
        }
        );
        
//         history.replaceState({}, null, location.pathname);
	</script>
	
	
<!-- 오늘날짜 뽑는 스크립트 -->
<script type="text/javascript">

	window.onload = function(){
		var date = new Date();
		var date1 = date.toISOString().substring(0, 10)
// 		var date2 = new Date(date.setDate(date.getDate()+14)).toISOString().substring(0, 10);
											
		document.getElementById('now_date').value = date1
		
	}
	
</script>

</html>
