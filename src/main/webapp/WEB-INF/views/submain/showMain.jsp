<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="멀티플레이::공연" name="title" />
</jsp:include>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link id="style-switch" rel="stylesheet" type="text/css" href="${path}/resources/css/show.css">

<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Bootstrap based News, Magazine and Blog Theme">

	<!-- Favicon -->
	<link rel="shortcut icon" href="${path}/resources/images/favicon.ico">

	<!-- Google Font -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;700&family=Rubik:wght@400;500;700&display=swap" rel="stylesheet">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="${path}/resources/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/vendor/bootstrap-icons/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/vendor/tiny-slider/tiny-slider.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/vendor/plyr/plyr.css">

	<!-- Theme CSS -->
	<link id="style-switch" rel="stylesheet" type="text/css" href="${path}/resources/css/style.css">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Geeks is a fully responsive and yet modern premium bootstrap 5 template & snippets. Geek is feature-rich components and beautifully designed pages that help you create the best possible website and web application projects. Bootstrap Snippet " />
<meta name="keywords" content="Geeks UI, bootstrap, bootstrap 5, Course, Sass, landing, Marketing, admin themes, bootstrap admin, bootstrap dashboard, ui kit, web app, dash ui, admin dashboard, HTML5, multipurpose" />



<!-- Favicon icon-->
<link rel="shortcut icon" type="image/x-icon" href="${path}/resources/images/favicon/favicon.ico">


<!-- Libs CSS -->
<link href="${path}/resources/fonts/feather/feather.css" rel="stylesheet">
<link href="${path}/resources/libs/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet" />
<link href="${path}/resources/libs/dragula/dist/dragula.min.css" rel="stylesheet" />
<link href="${path}/resources/libs/@mdi/font/css/materialdesignicons.min.css" rel="stylesheet" />
<link href="${path}/resources/libs/dropzone/dist/dropzone.css" rel="stylesheet" />
<link href="${path}/resources/libs/magnific-popup/dist/magnific-popup.css" rel="stylesheet" />
<link href="${path}/resources/libs/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">
<link href="${path}/resources/libs/@yaireo/tagify/dist/tagify.css" rel="stylesheet">
<link href="${path}/resources/libs/tiny-slider/dist/tiny-slider.css" rel="stylesheet">
<link href="${path}/resources/libs/tippy.js/dist/tippy.css" rel="stylesheet">
<link href="${path}/resources/libs/datatables.net-bs5/css/dataTables.bootstrap5.min.css" rel="stylesheet">
<link href="${path}/resources/libs/prismjs/themes/prism-okaidia.min.css" rel="stylesheet">
<link href="${path}/resources/libs/simplebar/dist/simplebar.min.css" rel="stylesheet">
<link href="${path}/resources/libs/nouislider/dist/nouislider.min.css" rel="stylesheet">
<link href="${path}/resources/libs/glightbox/dist/css/glightbox.min.css" rel="stylesheet">



<!-- Theme CSS -->
<link rel="stylesheet" href="${path}/resources/css/theme.min.css">
<link id="style-switch" rel="stylesheet" type="text/css"
	href="${path}/resources/css/mymain.css">
</head>
<body>

<section class="container content">
	
<form action="/display/displayMain" method="post">
<input type="search" class="center" placeholder="검색어를 입력해주세요">
<input type="submit" class="btn_color" value="검색"/>
<table class="table" border="1" >
  <tr >
    <th rowspan="2"><h3>장르</h3></th>
    <th noWrap><label><input type="checkbox" name="color"value=""> 연극</label></th>
    <th noWrap><label><input type="checkbox" name="color"value=""> 뮤지컬</label></th>
    <th noWrap><label><input type="checkbox" name="color"value=""> 무용</label></th>
    <th noWrap><label><input type="checkbox" name="color"value=""> 클래식</label></th>
    <th noWrap><label><input type="checkbox" name="color"value=""> 오페라</label></th>
  </tr>
  <tr>
    <th><label><input type="checkbox" name="color"value=""> 국악</label></th>
    <th><label><input type="checkbox" name="color"value=""> 복합 </label></th>
    <th></th>
    <th></th>
    <th></th>
  </tr>
  <tr>
    <th rowspan="2"><h3>지역</h3></th>
    <th noWrap><label><input type="checkbox" name="color"value=""> 서울</label></th>
    <th noWrap><label><input type="checkbox" name="color"value=""> 경기/인천</label></th>
    <th><label><input type="checkbox" name="color"value=""> 강원/충청도/대전</label></th>
    <th noWrap><label><input type="checkbox" name="color"value=""> 부산/울산/대구/경상</label></th>
   	   	
  </tr>
  <tr>
    <th noWrap><label><input type="checkbox" name="color"value=""> 광주/전라</label></th>
    <th noWrap><label><input type="checkbox" name="color"value=""> 제주</label></th>
    <th noWrap><label><input type="checkbox" name="color"value=""> 전체</label></th>
   	<th></th>
    <th></th>
  </tr>
  
  <tr>
  <th><h3>전시일</h3></th>
  <th>전시일 선택</th>
  <th><input type="date" class="calender" name="trip-start"
       value="2022-12-25"
       min="2000-01-01" max="2030-12-31"></th>
  </tr>
</table>

</form>

	</section>


<!-- **************** MAIN CONTENT START **************** -->
<section class="pt-4 pb-0 card-grid">
	<div class="container">
		<div class="row g-4">
			<!-- Left big card -->
			<div class="col-lg-6">
				<div class="card card-overlay-bottom card-grid-lg card-bg-scale" style="background-image:url(http://tkfile.yes24.com/upload2/perfblog/202211/20221116/20221116-44158.jpg/dims/quality/70/);background-position: center left; background-size: cover; ">
					<!-- Card featured -->
					<span class="card-featured" title="Featured post"><i class="fas fa-star"></i></span>
					<!-- Card Image overlay -->
					<div class="card-img-overlay d-flex align-items-center p-3 p-sm-4"> 
						<div class="w-100 mt-auto">
							<!-- Card category -->
							<a href="#" class="badge text-bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>HOT</a>
							<!-- Card title -->
							<h2 class="text-white h1"><a href="#" class="btn-link stretched-link text-reset">멜로망스 콘서트</a></h2>
							<p class="text-white">2022.12 ~2023.02 전국투어</p>
						</div>
					</div>
				</div>
			</div>
			<!-- Right small cards -->
			<div class="col-lg-6">
				<div class="row g-4">
					<!-- Card item START -->
					<div class="col-12">
						<div class="card card-overlay-bottom card-grid-sm card-bg-scale" style="background-image:url(http://tkfile.yes24.com/Upload2/Display/202212/20221201/gmain_top_44262.jpg/dims/quality/70/); background-position: center left; background-size: cover;">
							<!-- Card Image -->
							<!-- Card Image overlay -->
							<div class="card-img-overlay d-flex align-items-center p-3 p-sm-4"> 
								<div class="w-100 mt-auto">
									<!-- Card category -->
									<a href="#" class="badge text-bg-warning mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>LIVE</a>
									<!-- Card title -->
									<h4 class="text-white"><a href="post-single-4.html" class="btn-link stretched-link text-reset">카운트 판타지</a></h4>
									<p class="text-white">2022.12 ~ 2022.12.25 올림픽공원</p>
									
								</div>
							</div>
						</div>
					</div>
					<!-- Card item END -->
					<!-- Card item START -->
					<div class="col-md-6">
						<div class="card card-overlay-bottom card-grid-sm card-bg-scale" style="background-image:url(http://tkfile.yes24.com/upload2/PerfBlog/202212/20221215/20221215-43925.jpg); background-position: center left; background-size: cover;">
							<!-- Card Image overlay -->
							<div class="card-img-overlay d-flex align-items-center p-3 p-sm-4"> 
								<div class="w-100 mt-auto">
									<!-- Card category -->
									<a href="#" class="badge text-bg-success mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Busan</a>
									<!-- Card title -->
									<h4 class="text-white"><a href="post-single-4.html" class="btn-link stretched-link text-reset">적재 콘서트</a></h4>
									<!-- Card info -->
								<p class="text-white">2022.12 ~ 2023.01.20 부산</p>
									
								</div>
							</div>
						</div>
					</div>
					<!-- Card item END -->
					<!-- Card item START -->
					<div class="col-md-6">
						<div class="card card-overlay-bottom card-grid-sm card-bg-scale" style="background-image:url(http://tkfile.yes24.com/upload2/PerfBlog/202211/20221114/20221114-44108.jpg); background-position: center left; background-size: cover;">
							<!-- Card Image overlay -->
							<div class="card-img-overlay d-flex align-items-center p-3 p-sm-4"> 
								<div class="w-100 mt-auto">
									<!-- Card category -->
									<a href="#" class="badge text-bg-info mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Seoul</a>
									<!-- Card title -->
									<h4 class="text-white"><a href="post-single-4.html" class="btn-link stretched-link text-reset">O Holy Night</a></h4>
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
<div class="back-top"><i class="bi bi-arrow-up-short"></i></div>

<!-- =======================
JS libraries, plugins and custom scripts -->

<!-- Bootstrap JS -->
<script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="${path}/resources/vendor/tiny-slider/tiny-slider.js"></script>
<script src="${path}/resources/vendor/sticky-js/sticky.min.js"></script>
<script src="${path}/resources/vendor/plyr/plyr.js"></script>

<!-- Template Functions -->
<script src="${path}/resources/js/functions.js"></script>

<!-- ===================================================== -->
 <!-- Page Content -->
 <!-- Content -->
    <div class="pt-lg-12 pb-lg-3 pt-8 pb-6">
        <div class="container">
            <div class="row mb-4">
                <div class="col">
                    <h2 class="mb-0">추천 공연</h2>
                </div>
            </div>
            <div class="position-relative">
                <ul class="controls " id="sliderFirstControls">
                    <li class="prev">
                        <i class="fe fe-chevron-left"></i>
                    </li>
                    <li class="next">
                        <i class="fe fe-chevron-right"></i>
                    </li>
                </ul>
                <div class="sliderFirst">
                    <div class="item">
                        <!-- Card -->
                        <div class="card  mb-4 card-hover">
                            <a href="pages/course-single.html" class="card-img-top"><img src="http://tkfile.yes24.com/upload2/perfblog/202210/20221006/20221006-43740.jpg/dims/quality/70/" alt="" class="rounded-top-md card-img-top"></a>
                            <!-- Card Body -->
                            <div class="card-body">
                                <h5 class="mb-2 text-truncate-line-2 "><a href="pages/course-single.html" class="text-inherit">백지영 전국투어 콘서트</a></h5>
                                <!-- List -->
                                
                                <div class="lh-1">
                                    <span>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning"></i>
                  </span>
                                    <span class="text-warning">4.5</span>
                                    <span class="fs-6 text-muted">(7,700)</span>
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
                                        <img src="resources/images/avatar/avatar-1.jpg" class="rounded-circle avatar-xs" alt="">
                                    </div>
                                    <div class="col ms-2">
                                        <span>Morris Mccoy</span>
                                    </div>
                                    <div class="col-auto">
                                        <a href="#" class="text-muted bookmark">
                                            <i class="fe fe-bookmark  "></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <!-- Card -->
                        <div class="card  mb-4 card-hover">
                            <a href="pages/course-single.html" class="card-img-top"><img src="http://tkfile.yes24.com/upload2/PerfBlog/202212/20221215/20221215-43925.jpg" alt="" class="rounded-top-md card-img-top"></a>
                            <!-- Card Body -->
                            <div class="card-body">
                                <h5 class="mb-2 text-truncate-line-2 "><a href="pages/course-single.html" class="text-inherit">적재 전국투어 콘서트</a></h5>
                                <!-- List -->
                                
                                <div class="lh-1">
                                    <span>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning"></i>
                  </span>
                                    <span class="text-warning">4.5</span>
                                    <span class="fs-6 text-muted">(9,300)</span>
                                </div>
                            </div>
                            <!-- Card Footer -->
                            <div class="card-footer">
                                <div class="row align-items-center g-0">
                                    <div class="col-auto">
                                        <img src="resources/images/avatar/avatar-2.jpg" class="rounded-circle avatar-xs" alt="">
                                    </div>
                                    <div class="col ms-2">
                                        <span>Ted Hawkins</span>
                                    </div>
                                    <div class="col-auto">
                                        <a href="#" class="text-muted bookmark">
                                            <i class="fe fe-bookmark  "></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <!-- Card -->
                        <div class="card  mb-4 card-hover">
                            <a href="pages/course-single.html" class="card-img-top"><img src="http://tkfile.yes24.com/upload2/perfblog/202212/20221215/20221215-44375_1.jpg/dims/quality/70/" alt="" class="card-img-top rounded-top-md"></a>
                            <!-- Card Body -->
                            <div class="card-body">
                                <h5 class="mb-2 text-truncate-line-2 "><a href="pages/course-single.html" class="text-inherit">예스 24 콘서트</a></h5>
                                <!-- List -->
                                
                                <div class="lh-1">
                                    <span>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning"></i>
                  </span>
                                    <span class="text-warning">4.5</span>
                                    <span class="fs-6 text-muted">(8,890)</span>
                                </div>
                            </div>
                            <!-- Card Footer -->
                            <div class="card-footer">
                                <div class="row align-items-center g-0">
                                    <div class="col-auto">
                                        <img src="resources/images/avatar/avatar-3.jpg" class="rounded-circle avatar-xs" alt="">
                                    </div>
                                    <div class="col ms-2">
                                        <span>Juanita Bell</span>
                                    </div>
                                    <div class="col-auto">
                                        <a href="#" class="text-muted bookmark">
                                            <i class="fe fe-bookmark  "></i>
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
								src="http://tkfile.yes24.com/upload2/perfblog/202212/20221201/20221201-44255.jpg/dims/quality/70/"
								alt="" class="rounded-bottom-md rounded-top-md card-img-top"></a>
                            <div class="card-body">
                                <h5 class="mb-2 text-truncate-line-2 "><a href="pages/course-single.html" class="text-inherit">N flying 전국투어 콘서트</a></h5>
                                <!-- List -->
                                
                                <div class="lh-1">
                                    <span>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning"></i>
                  </span>
                                    <span class="text-warning">4.5</span>
                                    <span class="fs-6 text-muted">(13,245)</span>
                                </div>
                            </div>
                            <!-- Card Footer -->
                            <div class="card-footer">
                                <div class="row align-items-center g-0">
                                    <div class="col-auto">
                                        <img src="resources/images/avatar/avatar-4.jpg" class="rounded-circle avatar-xs" alt="">
                                    </div>
                                    <div class="col ms-2">
                                        <span>Claire Robertson</span>
                                    </div>
                                    <div class="col-auto">
                                        <a href="#" class="text-muted bookmark">
                                            <i class="fe fe-bookmark  "></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <!-- Card -->
                        <div class="card  mb-4 card-hover">
                            <a href="pages/course-single.html" class="card-img-top"><img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221128/20221128-44300.jpg/dims/quality/70/" alt="" class="rounded-top-md card-img-top"></a>
                            <!-- Card Body -->
                            <div class="card-body">
                                <h5 class="mb-2 text-truncate-line-2 "><a href="pages/course-single.html" class="text-inherit">오로라 내한 공연</a></h5>
                                <!-- List -->
                                <ul class="mb-3 list-inline">
                                    <li class="list-inline-item"><i class="mdi mdi-clock-time-four-outline text-muted me-1"></i>공연 시간 2h 46m</li>
                                </ul>
                                <div class="lh-1">
                                    <span>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning"></i>
                  </span>
                                    <span class="text-warning">4.5</span>
                                    <span class="fs-6 text-muted">(9,300)</span>
                                </div>
                            </div>
                            <!-- Card Footer -->
                            <div class="card-footer">
                                <div class="row align-items-center g-0">
                                    <div class="col-auto">
                                        <img src="resources/images/avatar/avatar-2.jpg" class="rounded-circle avatar-xs" alt="">
                                    </div>
                                    <div class="col ms-2">
                                        <span>Ted Hawkins</span>
                                    </div>
                                    <div class="col-auto">
                                        <a href="#" class="text-muted bookmark">
                                            <i class="fe fe-bookmark  "></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <!-- Card -->
                        <div class="card  mb-4 card-hover">
                            <a href="pages/course-single.html" class="card-img-top"><img src="http://tkfile.yes24.com/upload2/perfblog/202212/20221219/20221219-44456.jpg/dims/quality/70/" alt="" class="card-img-top rounded-top-md"></a>
                            <!-- Card Body -->
                            <div class="card-body">
                                <h5 class="mb-2 text-truncate-line-2 "><a href="pages/course-single.html" class="text-inherit">검정치마 연말 콘서트</a></h5>
                                <!-- List -->
                                
                                <div class="lh-1">
                                    <span>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning"></i>
                  </span>
                                    <span class="text-warning">4.5</span>
                                    <span class="fs-6 text-muted">(8,890)</span>
                                </div>
                            </div>
                            <!-- Card Footer -->
                            <div class="card-footer">
                                <div class="row align-items-center g-0">
                                    <div class="col-auto">
                                        <img src="resources/images/avatar/avatar-3.jpg" class="rounded-circle avatar-xs" alt="">
                                    </div>
                                    <div class="col ms-2">
                                        <span>Juanita Bell</span>
                                    </div>
                                    <div class="col-auto">
                                        <a href="#" class="text-muted bookmark">
                                            <i class="fe fe-bookmark  "></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <!-- Card -->
                        <div class="card  mb-4 card-hover">
                            <a href="pages/course-single.html" class="card-img-top"><img src="http://tkfile.yes24.com/upload2/perfblog/202212/20221215/20221215-44424.jpg/dims/quality/70/" alt="" class="card-img-top rounded-top-md"></a>
                            <!-- Card Body -->
                            <div class="card-body">
                                <h5 class="mb-2 text-truncate-line-2 "><a href="pages/course-single.html" class="text-inherit">아담스 내한공연</a></h5>
                                <!-- List -->
                                <ul class="mb-3 list-inline">
                                    <li class="list-inline-item"><i class="mdi mdi-clock-time-four-outline text-muted me-1"></i>2h 30m</li>
                                    <li class="list-inline-item">
                                        <svg class="me-1 mt-n1" width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <rect x="3" y="8" width="2" height="6" rx="1" fill="#754FFE" />
                      <rect x="7" y="5" width="2" height="9" rx="1" fill="#754FFE" />
                      <rect x="11" y="2" width="2" height="12" rx="1" fill="#DBD8E9" />
                    </svg> Intermediate
                                    </li>
                                </ul>
                                <div class="lh-1">
                                    <span>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning me-n1"></i>
                    <i class="mdi mdi-star text-warning"></i>
                  </span>
                                    <span class="text-warning">4.5</span>
                                    <span class="fs-6 text-muted">(13,245)</span>
                                </div>
                            </div>
                            <!-- Card Footer -->
                            <div class="card-footer">
                                <div class="row align-items-center g-0">
                                    <div class="col-auto">
                                        <img src="resources/images/avatar/avatar-4.jpg" class="rounded-circle avatar-xs" alt="">
                                    </div>
                                    <div class="col ms-2">
                                        <span>Claire Robertson</span>
                                    </div>
                                    <div class="col-auto">
                                        <a href="#" class="text-muted bookmark">
                                            <i class="fe fe-bookmark  "></i>
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
<script src="${path}/resources/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="${path}/resources/libs/odometer/odometer.min.js"></script>
<script src="${path}/resources/libs/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
<script src="${path}/resources/libs/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
<script src="${path}/resources/libs/flatpickr/dist/flatpickr.min.js"></script>
<script src="${path}/resources/libs/inputmask/dist/jquery.inputmask.min.js"></script>
<script src="${path}/resources/libs/apexcharts/dist/apexcharts.min.js"></script>
<script src="${path}/resources/libs/quill/dist/quill.min.js"></script>
<script src="${path}/resources/libs/file-upload-with-preview/dist/file-upload-with-preview.iife.js"></script>
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
<script src="${path}/resources/libs/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="${path}/resources/libs/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
<script src="${path}/resources/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="${path}/resources/libs/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js"></script>
<script src="${path}/resources/libs/prismjs/plugins/toolbar/prism-toolbar.min.js"></script>
<script src="${path}/resources/libs/prismjs/plugins/copy-to-clipboard/prism-copy-to-clipboard.min.js"></script>
<script src="${path}/resources/libs/fullcalendar/main.min.js"></script>
<script src="${path}/resources/libs/@lottiefiles/lottie-player/dist/lottie-player.js"></script>
<script src="${path}/resources/libs/simplebar/dist/simplebar.min.js"></script>
<script src="${path}/resources/libs/nouislider/dist/nouislider.min.js"></script>
<script src="${path}/resources/libs/wnumb/wNumb.min.js"></script>
<script src="${path}/resources/libs/glightbox/dist/js/glightbox.min.js"></script>



<!-- CDN File for moment -->
<script src='https://cdn.jsdelivr.net/npm/moment@2.29.1/min/moment.min.js'></script>




<!-- Theme JS -->
<script src="${path}/resources/js/theme.min.js"></script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>