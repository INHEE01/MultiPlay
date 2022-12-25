<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="멀티플레이::전시" name="title" />
</jsp:include>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta Tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Webestica.com">
<meta name="description"
	content="Bootstrap based News, Magazine and Blog Theme">

<!-- Favicon -->
<link rel="shortcut icon"
	href="${path}/resources/images/ours/ours/favicon.ico">

<!-- Google Font -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;700&family=Rubik:wght@400;500;700&display=swap"
	rel="stylesheet">

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/vendor/tiny-slider/tiny-slider.css">

<!-- Theme CSS -->
<link id="style-switch" rel="stylesheet" type="text/css"
	href="${path}/resources/css/style.css">
<link id="style-switch" rel="stylesheet" type="text/css"
	href="${path}/resources/css/display.css">
<link rel="stylesheet" href="${path}/resources/css/theme.min.css">
<link id="style-switch" rel="stylesheet" type="text/css"
	href="${path}/resources/css/mymain.css">

<!-- Bootstrap JS -->
<script
	src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="${path}/resources/vendor/tiny-slider/tiny-slider.js"></script>
<script src="${path}/resources/vendor/sticky-js/sticky.min.js"></script>
<script src="${path}/resources/vendor/plyr/plyr.js"></script>

<!-- Template Functions -->
<script src="${path}/resources/js/functions.js"></script>
<link id="style-switch" rel="stylesheet" type="text/css"
	href="${path}/resources/css/main.css">
</head>

<body>
<div style="background-color: #fff7ed">
	<section  class="pt-5 pb-12 card-grid second">
		<div class=" center frist">
			<h3>상세 검색</h3>
			<form id="" name="displaySearch" action="#" method="post">
				<table class="table">
					<tr>
						<th noWrap><input class="searchSize" type="search"
							class="center" placeholder="지역을 입력해주세요"></th>
						<th noWrap></th>
						<th noWrap><input type="date" class="calender"
							name="trip-start" value="2022-12-25" min="2000-01-01"
							max="2030-12-31"></th>
						<th><input type="submit" class="btn_color" value="검색" /></th>
					</tr>
				</table>

			</form>
		</div>
		<div>
			<div class="row ">
				<div class="col-12">
					<div
						class="tiny-slider arrow-hover arrow-blur arrow-white arrow-round rounded-3 overflow-hidden">
						<div class="tiny-slider-inner" data-autoplay="true"
							data-hoverpause="true" data-gutter="1" data-arrow="true"
							data-dots="false" data-items="1">

							<!-- Slide 1 -->
							<div
								class="card bg-dark-overlay-3 h-400 h-sm-500 h-md-600 rounded-0"
								style="background-image: url(${path}/resources/images/ours/display_img.jpg); background-position: center left; background-size: cover;">
								<!-- Card Image overlay -->
								<div
									class="card-img-overlay d-flex align-items-center p-3 p-sm-5">
									<div class="w-100 my-auto">
										<div class="col-md-10 col-lg-7 mx-auto text-center">
											<!-- Card category -->
											<!-- Card title -->
											<h2 class="text-white display-5">
												<a href="post-single-2.html"
													class="btn-link text-reset fw-normal"></a>
											</h2>


										</div>
									</div>
								</div>
							</div>
							<!-- Slide 2 -->
							<div
								class="card bg-dark-overlay-3 h-400 h-sm-500 h-md-600 rounded-0"
								style="background-image: url(${path}/resources/images/ours/display_img.jpg); background-position: center left; background-size: cover;">
								<!-- Card Image overlay -->
								<div
									class="card-img-overlay d-flex align-items-center p-3 p-sm-5">
									<div class="w-100 my-auto">
										<div class="col-md-10 col-lg-7 mx-auto text-center"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
	<section  style="background-color: #fff7ed" id="content" class=" card-grid">
		<div class="container">
			<div class="row g-4">
				<!-- Left big card -->
				<div class="col-lg-6">
					<div class="card card-overlay-bottom card-grid-lg card-bg-scale pb-0" 
						style="background-image: url(http://tkfile.yes24.com/Upload2/Display/202210/20221024/gmain_top_43842.jpg/dims/quality/70/); background-position: center left; background-size: cover;">
						<!-- Card featured -->
						<span class="card-featured" title="Featured post"><i
							class="fas fa-star"></i></span>
						<!-- Card Image overlay -->
						<div class="card-img-overlay d-flex align-items-center p-3 p-sm-4">
							<div class="w-100 mt-auto">
								<!-- Card category -->
								<a href="#" class="badge text-bg-danger mb-2"><i
									class="fas fa-circle me-2 small fw-bold"></i>HOT</a>
								<!-- Card title -->
								<h2 class="text-white h1">
									<a href="#" class="btn-link stretched-link text-reset">함부르크
										걸작들</a>
								</h2>
								<p class="text-white">2022.12 ~2023.02</p>
							</div>
						</div>
					</div>
				</div>
				<!-- Right small cards -->
				<div class="col-lg-6">
					<div class="row g-4">
						<!-- Card item START -->
						<div class="col-12">
							<div class="card card-overlay-bottom card-grid-sm card-bg-scale"
								style="background-image: url(http://tkfile.yes24.com/Upload2/Display/202211/20221121/gmain_top_43955.jpg/dims/quality/70/); background-position: center left; background-size: cover;">
								<!-- Card Image -->
								<!-- Card Image overlay -->
								<div
									class="card-img-overlay d-flex align-items-center p-3 p-sm-4">
									<div class="w-100 mt-auto">
										<!-- Card category -->
										<a href="#" class="badge text-bg-warning mb-2"><i
											class="fas fa-circle me-2 small fw-bold"></i>LIVE</a>
										<!-- Card title -->
										<h4 class="text-white">
											<a href="post-single-4.html"
												class="btn-link stretched-link text-reset">외규장각 전시회</a>
										</h4>
										<p class="text-white">2022.12 ~ 2022.12.25</p>

									</div>
								</div>
							</div>
						</div>
						<!-- Card item END -->
						<!-- Card item START -->
						<div class="col-md-6">
							<div class="card card-overlay-bottom card-grid-sm card-bg-scale"
								style="background-image: url(http://tkfile.yes24.com/Upload2/Display/202209/20220919/gmain_top_haribo.jpg/dims/quality/70/); background-position: center left; background-size: cover;">
								<!-- Card Image overlay -->
								<div
									class="card-img-overlay d-flex align-items-center p-3 p-sm-4">
									<div class="w-100 mt-auto">
										<!-- Card category -->
										<a href="#" class="badge text-bg-success mb-2"><i
											class="fas fa-circle me-2 small fw-bold"></i>Busan</a>
										<!-- Card title -->
										<h4 class="text-white">
											<a href="post-single-4.html"
												class="btn-link stretched-link text-reset">곰돌이 생일</a>
										</h4>
										<!-- Card info -->
										<p class="text-white">2022.12 ~ 2023.01.20</p>

									</div>
								</div>
							</div>
						</div>
						<!-- Card item END -->
						<!-- Card item START -->
						<div class="col-md-6">
							<div class="card card-overlay-bottom card-grid-sm card-bg-scale"
								style="background-image: url(http://tkfile.yes24.com/Upload2/Display/202209/20220901/gmain_top_43301.jpg/dims/quality/70/); background-position: center left; background-size: cover;">
								<!-- Card Image overlay -->
								<div
									class="card-img-overlay d-flex align-items-center p-3 p-sm-4">
									<div class="w-100 mt-auto">
										<!-- Card category -->
										<a href="#" class="badge text-bg-info mb-2"><i
											class="fas fa-circle me-2 small fw-bold"></i>Seoul</a>
										<!-- Card title -->
										<h4 class="text-white">
											<a href="post-single-4.html"
												class="btn-link stretched-link text-reset">뒤뷔페</a>
										</h4>
										<p class="text-white">2023.01.01 ~ 2023.01.20 서울</p>

									</div>
								</div>
							</div>
						</div>
						<!-- Card item END -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
Main hero END -->


	<!-- Back to top -->
	<div class="back-top">
		<i class="bi bi-arrow-up-short"></i>
	</div>


	<!-- ===================================================== -->
	<!-- Page Content -->
	<!-- Content -->
	<div id="content" class="pt-lg-12 pb-lg-3 pt-8 pb-6 ">
		<div class="container">
			<div class="row mb-4">
				<div class="col">
					<h2 class="mb-0">추천 전시</h2>
				</div>
			</div>
			<div class="position-relative">
				<ul class="controls " id="sliderFirstControls">
					<li class="prev"><i class="fe fe-chevron-left"></i></li>
					<li class="next"><i class="fe fe-chevron-right"></i></li>
				</ul>
				<div class="sliderFirst">
					<div class="item">
						<!-- Card -->
						<div class="card  mb-4 card-hover">
							<a href="pages/course-single.html" class="card-img-top"><img
								src="http://tkfile.yes24.com/upload2/perfblog/202210/20221028/20221028-42880.jpg/dims/quality/70/"
								alt="" class="rounded-top-md card-img-top"></a>
							<!-- Card Body -->
							<div class="card-body">
								<h5 class="mb-2 text-truncate-line-2 ">
									<a href="pages/course-single.html" class="text-inherit">다이노스
										제주</a>
								</h5>
								<!-- List -->

								<div class="lh-1">
									<span> <i class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning"></i>
									</span> <span class="text-warning">4.5</span> <span
										class="fs-6 text-muted">(7,700)</span>
								</div>
								<!-- Price -->
								<div class="lh-1 mt-3">
									<span class="text-dark fw-bold">$600</span>
									<del class="fs-6 text-muted">$750</del>
								</div>
							</div>
							<!-- Card Footer -->
							<div class="card-footer">
								<div class="row align-items-center g-0">
									<div class="col-auto">
										<img src="resources/images/ours/avatar/avatar-1.jpg"
											class="rounded-circle avatar-xs" alt="">
									</div>
									<div class="col ms-2">
										<span>Morris Mccoy</span>
									</div>
									<div class="col-auto">
										<a href="#" class="text-muted bookmark"> <i
											class="fe fe-bookmark  "></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="item">
						<!-- Card -->
						<div class="card  mb-4 card-hover">
							<a href="pages/course-single.html" class="card-img-top"><img
								src="http://tkfile.yes24.com/upload2/perfblog/202209/20220922/20220922-43614.jpg/dims/quality/70/"
								alt="" class="card-img-top rounded-top-md"></a>
							<!-- Card Body -->
							<div class="card-body">
								<h5 class="mb-2 text-truncate-line-2 ">
									<a href="pages/course-single.html" class="text-inherit">프랑코
										폰타나</a>
								</h5>
								<!-- List -->

								<div class="lh-1">
									<span> <i class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning"></i>
									</span> <span class="text-warning">4.5</span> <span
										class="fs-6 text-muted">(8,890)</span>
								</div>
							</div>
							<!-- Card Footer -->
							<div class="card-footer">
								<div class="row align-items-center g-0">
									<div class="col-auto">
										<img src="resources/images/ours/avatar/avatar-3.jpg"
											class="rounded-circle avatar-xs" alt="">
									</div>
									<div class="col ms-2">
										<span>Juanita Bell</span>
									</div>
									<div class="col-auto">
										<a href="#" class="text-muted bookmark"> <i
											class="fe fe-bookmark  "></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<!-- Card -->
						<div class="card  mb-4 card-hover">
							<a href="pages/course-single.html" class="card-img-top"><img
								src="http://tkfile.yes24.com/upload2/perfblog/202211/20221128/20221128-40444.jpg/dims/quality/70/"
								alt="" class="card-img-top rounded-top-md"></a>
							<!-- Card Body -->
							<div class="card-body">
								<h5 class="mb-2 text-truncate-line-2 ">
									<a href="pages/course-single.html" class="text-inherit">강원
										세계 젬버린</a>
								</h5>
								<!-- List -->

								<div class="lh-1">
									<span> <i class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning"></i>
									</span> <span class="text-warning">4.5</span> <span
										class="fs-6 text-muted">(13,245)</span>
								</div>
							</div>
							<!-- Card Footer -->
							<div class="card-footer">
								<div class="row align-items-center g-0">
									<div class="col-auto">
										<img src="resources/images/ours/avatar/avatar-4.jpg"
											class="rounded-circle avatar-xs" alt="">
									</div>
									<div class="col ms-2">
										<span>Claire Robertson</span>
									</div>
									<div class="col-auto">
										<a href="#" class="text-muted bookmark"> <i
											class="fe fe-bookmark  "></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<!-- Card -->
						<div class="card  mb-4 card-hover">
							<a href="pages/course-single.html" class="card-img-top"><img
								src="http://tkfile.yes24.com/upload2/perfblog/202210/20221028/20221028-42880.jpg/dims/quality/70/"
								alt="" class="rounded-top-md card-img-top"></a>
							<!-- Card Body -->
							<div class="card-body">
								<h5 class="mb-2 text-truncate-line-2 ">
									<a href="pages/course-single.html" class="text-inherit">다이노스
										제주</a>
								</h5>
								<!-- List -->
								<ul class="mb-3 list-inline">
								</ul>
								<div class="lh-1">
									<span> <i class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning"></i>
									</span> <span class="text-warning">4.5</span> <span
										class="fs-6 text-muted">(9,300)</span>
								</div>
							</div>
							<!-- Card Footer -->
							<div class="card-footer">
								<div class="row align-items-center g-0">
									<div class="col-auto">
										<img src="resources/images/ours/avatar/avatar-2.jpg"
											class="rounded-circle avatar-xs" alt="">
									</div>
									<div class="col ms-2">
										<span>Ted Hawkins</span>
									</div>
									<div class="col-auto">
										<a href="#" class="text-muted bookmark"> <i
											class="fe fe-bookmark  "></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<!-- Card -->
						<div class="card  mb-4 card-hover">
							<a href="pages/course-single.html" class="card-img-top"><img
								src="http://tkfile.yes24.com/upload2/perfblog/202209/20220922/20220922-43614.jpg/dims/quality/70/"
								alt="" class="card-img-top rounded-top-md"></a>
							<!-- Card Body -->
							<div class="card-body">
								<h5 class="mb-2 text-truncate-line-2 ">
									<a href="pages/course-single.html" class="text-inherit">프랑코
										폰타나</a>
								</h5>
								<!-- List -->

								<div class="lh-1">
									<span> <i class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning"></i>
									</span> <span class="text-warning">4.5</span> <span
										class="fs-6 text-muted">(8,890)</span>
								</div>
							</div>
							<!-- Card Footer -->
							<div class="card-footer">
								<div class="row align-items-center g-0">

									<div class="col-auto">
										<a href="#" class="text-muted bookmark"> <i
											class="fe fe-bookmark  "></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<!-- Card -->
						<div class="card  mb-4 card-hover">
							<a href="pages/course-single.html" class="card-img-top"><img
								src="http://tkfile.yes24.com/upload2/perfblog/202211/20221128/20221128-40444.jpg/dims/quality/70/"
								alt="" class="card-img-top rounded-top-md"></a>
							<!-- Card Body -->
							<div class="card-body">
								<h5 class="mb-2 text-truncate-line-2 ">
									<a href="pages/course-single.html" class="text-inherit">강원
										세계 젬버린</a>
								</h5>
								<!-- List -->

								<div class="lh-1">
									<span> <i class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning me-n1"></i> <i
										class="mdi mdi-star text-warning"></i>
									</span> <span class="text-warning">4.5</span> <span
										class="fs-6 text-muted">(13,245)</span>
								</div>
							</div>
							<!-- Card Footer -->
							<div class="card-footer">
								<div class="row align-items-center g-0">
									<div class="col-auto">
										<img src="resources/images/ours/avatar/avatar-4.jpg"
											class="rounded-circle avatar-xs" alt="">
									</div>
									<div class="col ms-2">
										<span>Claire Robertson</span>
									</div>
									<div class="col-auto">
										<a href="#" class="text-muted bookmark"> <i
											class="fe fe-bookmark  "></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Scripts -->
	<!-- Libs JS -->
	<script src="${path}/resources/libs/jquery/dist/jquery.min.js"></script>
	<script
		src="${path}/resources/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${path}/resources/libs/odometer/odometer.min.js"></script>
	<script
		src="${path}/resources/libs/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
	<script
		src="${path}/resources/libs/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script src="${path}/resources/libs/flatpickr/dist/flatpickr.min.js"></script>
	<script src="${path}/resources/libs/inputmask/dist/jquery.inputmask.min.js"></script>
	<script src="${path}/resources/libs/apexcharts/dist/apexcharts.min.js"></script>
	<script src="${path}/resources/libs/quill/dist/quill.min.js"></script>
	<script
		src="${path}/resources/libs/file-upload-with-preview/dist/file-upload-with-preview.iife.js"></script>
	<script src="${path}/resources/libs/dragula/dist/dragula.min.js"></script>
	<script src="${path}/resources/libs/bs-stepper/dist/js/bs-stepper.min.js"></script>
	<script src="${path}/resources/libs/dropzone/dist/min/dropzone.min.js"></script>
	<script src="${path}/resources/libs/jQuery.print/jQuery.print.js"></script>
	<script src="${path}/resources/libs/prismjs/prism.js"></script>
	<script src="${path}/resources/libs/prismjs/components/prism-scss.min.js"></script>
	<script src="${path}/resources/libs/@yaireo/tagify/dist/tagify.min.js"></script>
	<script src="${path}/resources/libs/tiny-slider/dist/min/tiny-slider.js"></script>
	<script src="${path}/resources/libs/@popperjs/core/dist/umd/popper.min.js"></script>
	<script src="${path}/resources/libs/tippy.js/dist/tippy-bundle.umd.min.js"></script>
	<script src="${path}/resources/libs/typed.js/lib/typed.min.js"></script>
	<script src="${path}/resources/libs/jsvectormap/dist/js/jsvectormap.min.js"></script>
	<script src="${path}/resources/libs/jsvectormap/dist/maps/world.js"></script>
	<script
		src="${path}/resources/libs/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="${path}/resources/libs/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
	<script
		src="${path}/resources/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="${path}/resources/libs/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js"></script>
	<script
		src="${path}/resources/libs/prismjs/plugins/toolbar/prism-toolbar.min.js"></script>
	<script
		src="${path}/resources/libs/prismjs/plugins/copy-to-clipboard/prism-copy-to-clipboard.min.js"></script>
	<script src="${path}/resources/libs/fullcalendar/main.min.js"></script>
	<script
		src="${path}/resources/libs/@lottiefiles/lottie-player/dist/lottie-player.js"></script>
	<script src="${path}/resources/libs/simplebar/dist/simplebar.min.js"></script>
	<script src="${path}/resources/libs/nouislider/dist/nouislider.min.js"></script>
	<script src="${path}/resources/libs/wnumb/wNumb.min.js"></script>
	<script src="${path}/resources/libs/glightbox/dist/js/glightbox.min.js"></script>



	<!-- CDN File for moment -->
	<script
		src='https://cdn.jsdelivr.net/npm/moment@2.29.1/min/moment.min.js'></script>




	<!-- Theme JS -->
	<script src="${path}/resources/js/theme.min.js"></script>

</body>

<!-- Back to top -->
<div class="back-top">
	<i class="bi bi-arrow-up-short"></i>
</div>

<!-- =======================
JS libraries, plugins and custom scripts -->

<!-- Bootstrap JS -->
<script
	src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="${path}/resources/vendor/tiny-slider/tiny-slider.js"></script>
<script src="${path}/resources/vendor/jarallax/jarallax.min.js"></script>
<script src="${path}/resources/vendor/jarallax/jarallax-video.min.js"></script>

<!-- Template Functions -->
<script src="${path}/resources/js/functions.js"></script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>