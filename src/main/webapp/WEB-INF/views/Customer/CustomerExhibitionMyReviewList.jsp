<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
Object userId = session.getAttribute("userId");
Object userName = session.getAttribute("userName");
// 세션 연결
if (session.getAttribute("userId") == null) {
// 세션 연결에 실패하면 null	
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 실패:"+userId);
System.out.println("세션연결 실패:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
//LogOut.jsp로 이동
/* 테스트를 위한 sendRedirect 해제 */
/* response.sendRedirect("../LogOut.do");	 */
}else{
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 성공:"+userId);
System.out.println("세션연결 성공:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

}
%>
<!doctype html>
<html lang="en">
<!--예매내역-->
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico">


<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/choices.min.css">

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
<title>My Review</title>
</head>

<body>

	<jsp:include page="/header.jsp" />


	<!--Main content-->
	<main>

		<!--Page header start-->
		<section class="position-relative bg-dark text-white overflow-hidden">
			<div class="container py-11 py-lg-15 position-relative">
				<div class="row align-items-center">
					<div class="col-lg-10 mx-auto text-center">
						<nav class="d-flex justify-content-center" aria-label="breadcrumb">
							<ol class="breadcrumb mb-3">
								<li class="breadcrumb-item"><a href="#!">Home</a></li>
								<li class="breadcrumb-item active">Mypage</li>
								<li class="breadcrumb-item active">My Review</li>
							</ol>
						</nav>
						<h1 class="mb-0 display-3">My Review</h1>
					</div>
				</div>
				<!--/.row-->
			</div>
		</section>

		<!--예매내역카드 섹션 시작-->
		<section class="position-relative">
			<div class="container pb-7 pb-lg-12 pt-7">
				<c:forEach items="${myReviewList}" var="vo">
					<div class="col-lg-10 offset-lg-1">
					
						<!--:Wishlist card-->
						<div class="card hover-lift shadow flex-sm-row mb-6 align-items-center">
							
							<!-- 이미지 -->
							<div class="col-sm-5 col-lg-4 mb-4 mb-md-0">
								<a href="#" class="d-block"> 
								<img src="${vo.exhibition_image}"
									class="img-fluid card-img-top" alt="">
								</a>
							</div>
							
							<!-- 내용 -->
							<div class="col-sm-7 py-sm-5 col-12 col-lg-6 offset-lg-1 px-5">
								<a href="#" class="mb-3 d-block text-dark">
									<h4 class="text-truncate">${vo.exhibition_title}</h4>
								</a>
								<p class="lead mb-5">${vo.review_date} Write</p>								
								<div class="d-flex mb-3 align-items-center">
									<span class="text-muted me-3">Grade</span> <strong class="text-success">${vo.review_star_score}	</strong>
								</div>
								<div class="d-flex mb-3 align-items-center">
									<span class="text-muted me-3">Title</span> <strong class="text-truncate">${vo.review_title}</strong>
								</div>
								<div class="d-flex mb-5 align-items-center">
									<span class="text-muted me-3">Contents</span> <strong class="text-truncate">${vo.review_contents}</strong>
								</div>
								
								<!-- 수정, 삭제 -->
								<div class="d-grid pb-4 pb-md-0">
									<!-- 후기 수정 -->
									<a onclick="hiddenFormSubmit('${vo.exhibition_id}','${vo.review_id}')"  class="btn btn-primary" style="margin-bottom: 10px;">Update Review</a>
									<!-- 후기 삭제 -->
									<a href="#" data-bs-target="#modal-pay-bar-${vo.review_id}" data-bs-toggle="modal" class="btn btn-dark">Delete Review</a>
									
									
								</div>
							</div>
						</div>
						<!--:Wishlist card-->
						
						<!-- 삭제 물어보는 모달 -->
						<div id="modal-pay-bar-${vo.review_id}" class="modal fade" tabindex="-1" aria-labelledby="modal-pay-bar-${vo.review_id}" aria-hidden="true">
							<div class="modal-dialog modal-dialog-top modal-md" style="max-width: 450px;">
								<div class="modal-content position-relative border-0">
									<div class="position-relative px-4">
										<div class="position-absolute mt-2 end-0 width-7x top-0 d-flex align-items-center justify-content-center">
											<button type="button" class="btn-close w-auto small" data-bs-dismiss="modal" aria-label="Close">
												<i class="bx bx-x fs-4 me-2"></i>
											</button>
										</div>
										
										<h6 class="d-flex mt-4 justify-content-center">Delete Review</h6>

										<!-- 구분선 -->
										<div class="d-flex align-items-center py-3">
											<span class="flex-grow-1 border-bottom pt-1"></span>
										</div>
										
										<strong>후기를 정말 삭제하시겠습니까?<br>삭제한 후기는 복구 할 수 없습니다.</strong>
										
										<!-- 버튼 -->
										<div class="d-flex mb-4 mt-4 justify-content-end">
											<!-- 삭제버튼 -->
											<div class="me-2 text-end">
												<a onclick="deleteHiddenFormSubmit('${vo.customer_id}','${vo.review_id}')"  class="btn btn-primary form-control">Delete</a>
											</div>					
											<!-- 취소버튼 -->
											<div class="text-end">
												<button type="reset" aria-label="Close" data-bs-dismiss="modal" class="btn btn-outline-dark form-control">Close</button>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
						<!-- ./삭제 물어보는 모달 -->
					</div>
				</c:forEach>
				
				<!-- 리뷰가 없을때 -->
				<c:forEach items="${nullCheck}" var="vo">
					<!-- NullCheck forEach 추가 -->
					<div class="col-lg-10 offset-lg-1">
						<!--:Wishlist card-->
						<div class="card hover-lift shadow flex-sm-row mb-6 align-items-center">
							<!-- 이미지 -->
							<div class="col-sm-5 col-lg-4 mb-4 mb-md-0">
								<a class="d-block"> 
									<img src="/resources/img/master/masterLogo.png" class="img-fluid card-img" alt="">
								</a>
							</div>
							
							<!-- 내용 -->
							<div class="col-sm-7 py-sm-5 col-12 col-lg-6 offset-lg-1 px-5">
								<a class="mb-3 d-block text-dark">
									<h4 class="text-truncate">${nullCheck}</h4>
								</a>
								<p class="lead mb-5">Sample Writing Date</p>								
								<div class="d-flex mb-3 align-items-center">
									<span class="text-muted me-3">Grade</span> <strong class="text-success">Sample Grade</strong>
								</div>
								<div class="d-flex mb-3 align-items-center">
									<span class="text-muted me-3">Title</span> <strong class="text-truncate">Sample Title</strong>
								</div>
								<div class="d-flex mb-0 align-items-center">
									<span class="text-muted me-3">Contents</span> <strong class="text-truncate">Sample Contents</strong>
								</div>
								
							</div>
						</div>
						<!--:Wishlist card-->
					</div>
				</c:forEach>
				
			</div>
		</section>
		<!--예매내역카드 섹션 끝-->
		
	</main>
	
	
	<!-- 상세조회 submit  -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<form id="hiddenForm" name="hiddenForm" action="/exhibition/getMyReview.do" method="post">
		<input type="hidden" id="ex_id" name="exhibition_id" value="">
		<input type="hidden" id="rv_id" name="review_id" value="">
	</form>
   
    <script type="text/javascript">
    function hiddenFormSubmit(ex_id, rv_id){
       $('#ex_id').val(ex_id);
       $('#rv_id').val(rv_id); 
       document.hiddenForm.submit();
    }
    </script>
    
    
    <!-- 삭제 submit  -->
    <form id="deleteHiddenForm" name="deleteHiddenForm" action="/exhibition/deleteReview.do" method="post">
		<input type="hidden" id="cm_id" name="customer_id" value="">
		<input type="hidden" id="del_rv_id" name="review_id" value="">
	</form>
    <script type="text/javascript">
    function deleteHiddenFormSubmit(cm_id, del_rv_id){
       $('#cm_id').val(cm_id);
       $('#del_rv_id').val(del_rv_id); 
       document.deleteHiddenForm.submit();
    }
    </script>
    
	<jsp:include page="/footer.jsp" />
	
	
</body>


<!--Select scripts-->
<script src="/resources/vendor/node_modules/js/choices.min.js"></script>

</html>