<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico">

<!--swiper-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/swiper-bundle.min.css">
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

<title>Fiennale</title>
</head>

<body>
	<!--:Preloader Spinner-->
	<div class="spinner-loader bg-gradient-secondary text-white">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>

	<jsp:include page="/header.jsp" />

	<!--:Search bar modal-->
	<div id="modal-search-bar-2" class="modal fade" tabindex="-1"
		aria-labelledby="modal-search-bar-2" aria-hidden="true">
		<div class="modal-dialog modal-dialog-top modal-md">
			<div class="modal-content position-relative border-0">
				<div class="position-relative px-4">
					<div
						class="position-absolute end-0 width-7x top-0 d-flex me-4 align-items-center h-100 justify-content-center">
						<button type="button" class="btn-close w-auto small"
							data-bs-dismiss="modal" aria-label="Close">Cancel</button>
					</div>
					<form class="mb-0">
						<div class="d-flex align-items-center">
							<div class="d-flex flex-grow-1 align-items-center">
								<i class="bx bx-search fs-4"></i> <input type="text"
									placeholder="Search...."
									class="form-control shadow-none border-0 flex-grow-1 form-control-lg">
							</div>
						</div>
					</form>
				</div>

				<div class="p-4 border-top">
					<div class="d-flex align-items-center mb-3">
						<i class="bx bx-trending-up fs-4"></i>
						<h6 class="mb-0 ms-2">Top searches</h6>
					</div>
					<div class="d-flex flex-wrap align-items-center">
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">Jeans</a></span>
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">Shoes</a></span>
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">Watches</a></span>
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">Men's</a></span>
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">Sneakers</a></span>
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">Casual</a></span>
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">Shirts</a></span>
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">T-shirts</a></span>
						<span><a href="#!"
							class="badge badge-pill border text-muted me-1 mb-1 px-3 py-1">Lowers</a></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--:Offcanvas end-->
	<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasCart"
		aria-labelledby="offcanvasCart">
		<div
			class="border-bottom offcanvas-header align-items-center justify-content-between">
			<h5 class="mb-0">Your Cart (3)</h5>
			<button type="button"
				class="btn-close text-reset p-0 m-0 width-3x height-3x flex-center ms-auto"
				data-bs-dismiss="offcanvas" aria-label="Close">
				<button type="button"
					class="btn-close shadow-none text-reset p-0 m-0 width-3x height-3x flex-center ms-auto"
					data-bs-dismiss="offcanvas" aria-label="Close">
					<i class="bx bx-x fs-4"></i>
				</button>
		</div>
		<div class="offcanvas-body p-4">
			<ul class="list-unstyled no-animation mb-0">
				<li class="d-flex py-3 border-bottom">
					<div class="me-1">
						<a href="#!"><img src="/resources/img/shop/backpack2.jpg"
							class="height-10x hover-lift hover-shadow w-auto" alt=""></a>
					</div>
					<div class="flex-grow-1 px-4 mb-3">
						<a href="#!" class="text-dark d-block lh-sm fw-semibold mb-2">Laptop
							backpack water proof</a>
						<p class="mb-0 small">
							<strong>$36.00</strong> x <strong>1</strong>
						</p>
					</div>
					<div class="d-block text-end">
						<a href="#!" class="text-muted small text-decoration-underline">
							Remove </a>
					</div>
				</li>
				<li class="d-flex py-3">
					<div class="me-1">
						<a href="#!"><img src="/resources/img/shop/jacket1.jpg"
							class="height-10x hover-lift hover-shadow w-auto" alt=""></a>
					</div>
					<div class="flex-grow-1 px-4 mb-3">
						<a href="#!" class="text-dark d-block lh-sm fw-semibold mb-2">Brown
							denim jacket for mens</a>
						<p class="mb-0 small">
							<strong>$59.00</strong> x <strong>2</strong>
						</p>
					</div>
					<div class="d-block text-end">
						<a href="#!" class="text-muted small text-decoration-underline">
							Remove </a>
					</div>
				</li>
				<li
					class="d-flex p-3 mb-3 border-top justify-content-between align-items-center">
					<span class="fw-normal">Subtotal</span> <span
					class="text-dark fw-bold">$154.00</span>
				</li>
			</ul>
		</div>
		<div class="offcanvas-footer p-4 border-top">
			<ul class="list-unstyled mb-0">

				<li class="pb-2 d-grid"><a href="#"
					class="btn btn-secondary btn-hover-arrow"><span>View
							shopping cart</span></a></li>
				<li class="d-grid"><a href="#"
					class="btn btn-primary btn-hover-arrow"><span>Checkout</span></a></li>
			</ul>
		</div>
	</div>

	<main>

		<section class="position-relative overflow-hidden">
			<!--:Swiper classic -->
			<div
				class="swiper-container swiper-classic overflow-hidden position-relative vh-100">
				<div class="swiper-wrapper">
					<!--:Slide-->
					<div class="swiper-slide"
						style="background-image: url('/resources/img/shop/banners/03.jpg')">
						<div
							class="bg-dark position-absolute start-0 top-0 w-100 h-100 opacity-50"></div>
						<!--:container-->
						<div
							class="container h-100 text-white position-relative z-index-1">
							<div class="row d-flex align-items-center h-100">
								<div class="col-xl-10 mx-auto text-center">
									<!--:slider layers-->
									<ul class="carousel-layers list-unstyled mb-0 pt-lg-9">
										<li data-carousel-layer="fade-start">
											<h2 class="display-1 mb-3">3차 프로젝트_전시회</h2>
										</li>
										<li data-carousel-layer="fade-end">
											<p class="lead mb-4 mb-lg-5">3차 프로젝트_전시회</p>
										</li>
										<li data-carousel-layer="fade-start"><a href="#"
											class="btn btn-white btn-lg btn-hover-text mb-2 me-2"> <span
												class="btn-hover-label label-default">3차 프로젝트_전시회</span> <span
												class="btn-hover-label label-hover">3차 프로젝트_전시회</span>
										</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--:Slide-->
					<div class="swiper-slide"
						style="background-image: url('/resources/img/shop/banners/06.jpg')">
						<div
							class="bg-dark position-absolute start-0 top-0 w-100 h-100 opacity-50"></div>
						<!--:container-->
						<div
							class="container h-100 text-white position-relative z-index-1">
							<div class="row d-flex align-items-center h-100">
								<div class="col-xl-10 mx-auto text-center">
									<!--:slider layers-->
									<ul class="carousel-layers list-unstyled mb-0 pt-lg-9">
										<li data-carousel-layer="fade-start">
											<h2 class="display-1 mb-3">3차 프로젝트_전시회</h2>
										</li>
										<li data-carousel-layer="fade-end">
											<p class="lead mb-4 mb-lg-5">3차 프로젝트_전시회</p>
										</li>
										<li data-carousel-layer="fade-start"><a href="#"
											class="btn btn-white btn-lg btn-hover-text mb-2 me-2"> <span
												class="btn-hover-label label-default">3차 프로젝트_전시회</span> <span
												class="btn-hover-label label-hover">3차 프로젝트_전시회</span>
										</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--:Slide-->
					<div class="swiper-slide"
						style="background-image: url('/resources/img/shop/banners/07.jpg')">
						<div
							class="bg-dark position-absolute start-0 top-0 w-100 h-100 opacity-50"></div>
						<!--:container-->
						<div
							class="container h-100 text-white position-relative z-index-1">
							<div class="row d-flex align-items-center h-100">
								<div class="col-xl-10 mx-auto text-center">
									<!--:slider layers-->
									<ul class="carousel-layers list-unstyled mb-0 pt-lg-9">
										<li data-carousel-layer="fade-start">
											<h2 class="display-1 mb-3">3차 프로젝트_전시회</h2>
										</li>
										<li data-carousel-layer="fade-end">
											<p class="lead mb-4 mb-lg-5">3차 프로젝트_전시회</p>
										</li>
										<li data-carousel-layer="fade-start"><a href="#"
											class="btn btn-white btn-lg btn-hover-text mb-2 me-2"> <span
												class="btn-hover-label label-default">3차 프로젝트_전시회</span> <span
												class="btn-hover-label label-hover">3차 프로젝트_전시회</span>
										</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!--:Add Pagination -->
				<div
					class="swiper-pagination swiperClassic-pagination z-index-1 text-white"></div>
				<!--:Add arrows-->
				<div
					class="swiper-button-prev swiperClassic-button-prev width-2x height-2x bg-transparent text-white">
				</div>
				<div
					class="swiper-button-next swiperClassic-button-next width-2x height-2x bg-transparent text-white">
				</div>
			</div>
		</section>
		<section class="bg-white position-relative overflow-hidden">
			<div class="container pt-7 pt-lg-12 position-relative">
				<div class="row align-items-center">
					<div
						class="col-md-4 border-end-md border-light text-center mb-7 mb-md-0">
						<div class="mb-3">
							<h1>이미지</h1>
						</div>
						<h6 class="mb-0">Chapter.1</h6>
					</div>
					<div
						class="col-md-4 border-end-md border-light text-center mb-7 mb-md-0">
						<div class="mb-3">
							<h1>이미지</h1>
						</div>
						<h6 class="mb-0">Chapter.2</h6>
					</div>
					<div class="col-md-4 text-center">
						<div class="mb-3">
							<h1>이미지</h1>
						</div>
						<h6 class="mb-0">Chapter.3</h6>
					</div>
				</div>
			</div>
		</section>
		<section class="position-relative bg-white">
			<div class="container-fluid px-lg-4 position-relative pt-7 pt-lg-12">
				<div class="row justify-content-between">
					<div class="col-md-6 mb-3 mb-md-0">
						<div class="card border-0 card-hover overflow-hidden">
							<div class="overflow-hidden position-relative">

								<!-- <img src="/resources/img/shop/banners/women.jpg" class="img-fluid img-zoom" alt=""> -->
								<div
									style="border: 10px solid gray; height: 300px; background-color: gray;"></div>

							</div>
							<div
								class="position-absolute text-white start-0 top-0 p-4 justify-content-center text-center align-items-center d-flex w-100 h-100">
								<div class="">
									<span>3차_프로젝트</span>
									<h5 class="mb-4 display-3">Menu01</h5>
									<a href="#"
										class="btn btn-white btn-lg btn-hover-text mb-2 me-2"> <span
										class="btn-hover-label label-default">Button1</span> <span
										class="btn-hover-label label-hover">Button2</span>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card border-0 card-hover overflow-hidden">
							<div class="overflow-hidden position-relative">

								<!-- <img src="/resources/img/shop/banners/men.jpg" class="img-fluid img-zoom" alt=""> -->
								<div
									style="border: 10px solid gray; height: 300px; background-color: gray;"></div>

							</div>
							<div
								class="position-absolute text-white start-0 top-0 p-4 justify-content-center text-center align-items-center d-flex w-100 h-100">
								<div class="">
									<span>3차_프로젝트</span>
									<h5 class="mb-4 display-3">Menu02</h5>
									<a href="#"
										class="btn btn-white btn-lg btn-hover-text mb-2 me-2"> <span
										class="btn-hover-label label-default">Button1</span> <span
										class="btn-hover-label label-hover">Button2</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--End section-->

		<section class="overflow-hidden bg-white">
			<div class="container py-9 py-lg-11">
				<div class="row align-items-end">
					<div class="col-md-8 mx-auto text-center">
						<h2 class="mb-5 display-4">다가오는 전시회 top8</h2>
					</div>
				</div>
				<div class="row">
					<c:forEach items="${vo}" var="vo">
						<div class="col-md-6 col-lg-3 mb-4">
							<!--Card-product-->
							<div
								class="card hover-shadow-lg overflow-hidden hover-lift-lg card-product border-0">
								<div
									class="card-product-header px-5 p-4 d-block overflow-hidden">
									<!--Product image-->
									<a href="#!"> <img src="${vo.exhibition_image}"
										class="img-fluid" alt="Product">
									</a>
								</div>
								<div class="card-product-body px-4 pb-4 text-center">
									<a href="#!"
										class="h6 d-block position-relative mb-2 text-dark">${vo.exhibition_title}</a>
									<div class="card-product-body-ovelray">
										<!--Price-->
										<span class="card-product-price"> <span>${vo.exhibition_start_date}</span>
											~ <span>${vo.exhibition_end_date}</span>
										</span>
										<!--Action-->
										<span class="card-product-view-btn"> <a href="#!"
											class="link-underline mb-1 fw-semibold text-dark">상세보기</a>
										</span>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="text-center pt-2">
					<a href="#" class="btn btn-dark btn-lg btn-hover-text mb-2 me-2">
						<span class="btn-hover-label label-default">>>더보기&lt;&lt;</span> <span
						class="btn-hover-label label-hover">>다가오는 전시회 목록</span>
					</a>
				</div>
			</div>
		</section>

		<section class="position-relative overflow-hidden bg-white">
			<div
				class="position-absolute w-100 w-lg-60 start-0 top-0 h-100 bg-tint-primary w-100 rounded-end-lg-4">
			</div>
			<div class="container py-9 py-lg-11 position-relative">
				<div class="row align-items-center">
					<div class="col-md-6 col-xl-5 ms-md-auto order-last order-md-1">

						<span class="d-block mb-2"><i
							class="bx bx-stopwatch fs-5 me-1"></i> 전시 종료 임박!! </span>
						<div
							class="countdown-timer py-3 mb-3 d-flex flex-wrap align-items-center"></div>
						<h2 class="display-1 mb-4">Pororo</h2>
						<h5 class="mb-5">On order above $200</h5>
						<a href="#" class="btn btn-dark btn-lg btn-hover-text mb-2 me-2">
							<span class="btn-hover-label label-default">Explore
								products</span> <span class="btn-hover-label label-hover">Explore
								products</span>
						</a>
					</div>
					<div class="col-md-6 ms-auto mb-5 mb-md-0 order-1 order-md-last">
						<div class="position-relative pe-12 pb-12">
							<img src="/resources/img/shop/banners/women3.jpg"
								class="img-fluid position-absolute w-50 end-0 bottom-0 rounded-4"
								alt=""> <img src="/resources/img/shop/banners/lg1.jpg"
								class="img-fluid rounded-4" alt="">

						</div>
					</div>
				</div>
			</div>
		</section>


		<section class="position-relative bg-white">
			<div class="container py-9 py-lg-11"></div>
		</section>
	</main>


	<jsp:include page="/footer.jsp" />

	<!-- :Back to top -->
	<a href="#top"
		class="position-fixed toTop d-none d-sm-flex btn btn-light rounded-circle p-0 flex-center width-4x height-4x z-index-fixed end-0 bottom-0 mb-3 me-3">
		<i class="bx bxs-up-arrow align-middle lh-1"></i>
	</a>


	<!--cursor-->
	<div class="cursor">
		<div class="cursor__inner"></div>
	</div>

	<!-- scripts -->



</body>


<script src="/resources/js/theme.bundle.js"></script>
<script src="/resources/vendor/node_modules/js/gsap.min.js"></script>
<script src="/resources/vendor/node_modules/js/cursor.js"></script>


<!--Page Countdown script-->
<script src="/resources/vendor/node_modules/js/jquery.min.js"></script>
<script src="/resources/vendor/node_modules/js/jquery.countdown.min.js"></script>
<script src="/resources/vendor/node_modules/js/swiper-bundle.min.js"></script>




<script>
	//swiper
	//Classic
	var swiperClassic = new Swiper(".swiper-classic", {
		slidesPerView : 1,
		spaceBetween : 0,
		effect : 'fade',
		speed : 800,
		loop : true,
		autoplay : {
			delay : 2500
		},
		pagination : {
			el : ".swiperClassic-pagination",
			type : "fraction"
		},
		navigation : {
			nextEl : ".swiperClassic-button-next",
			prevEl : ".swiperClassic-button-prev"
		}
	});

	function get1dayFromNow() {
		return new Date(new Date().valueOf() + 1 * 24 * 60 * 60 * 1000);
	}

	var $clock = $('.countdown-timer');

	$clock
			.countdown(
					get1dayFromNow(),
					function(event) {
						$(this)
								.html(
										event
												.strftime('<div class="d-flex flex-column px-2 width-7x"><h2 class="mb-0 h4">%H</h2><span class="small text-muted">Hours</span></div><div class="d-flex flex-column px-2 width-7x"><h2 class="mb-0 h4">%M</h2><span class="small text-muted">Minutes</span></div><div class="d-flex flex-column px-2 width-7x"><h2 class="mb-0 h4">%S</h2><span class="small text-muted">Seconds</span></div>'));
					});
</script>

</html>
