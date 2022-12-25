<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="멀티플레이::통합검색" name="title" />
</jsp:include>

<link rel="stylesheet" type="text/css" href="${path}/resources/css/search.css">

<!-- 검색 부 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<section>
	<search-nav>
	<div class="search-searchresult">
		<div class="search-searchresult-inner">
			<p>
				<span style="color: rgb(251, 188, 4)"> ' ${value} ' </span>에 대한 검색결과
				입니다.
			</p>
			
			<form action="${path}/submain/search" method="get">
				<input class="search-searchBar" type="text" name="value" value="${value}"/> 
				<button type="submit" class="fa-solid fa-magnifying-glass"></button>
			</form>
			
		</div>
	</div>

	</search-nav>
	<!-- 추천 검색어-->
	<div class="container">
		<span class="h1">
				(<span style="color: rgb(251, 188, 4)"> # </span>) 추천 검색어 |
		</span>
			<button onclick="" class="search-mid1-1-button">#서툰 사람들</button>
			<button onclick="" class="search-mid1-1-button">#드라큘라</button>
			<button onclick="" class="search-mid1-1-button">#조용필</button>
			<button onclick="" class="search-mid1-1-button">#미수</button>
			<button onclick="" class="search-mid1-1-button">#웨이스티드</button>
			<button onclick="" class="search-mid1-1-button">#마룬파이브</button>
	</div>
	
	<!-- 탭 메뉴 상단 시작 -->
	<div class="container mt-3">
		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">통 합 검 색 (139)</li>
			<li class="tab-link" data-tab="tab-2"><a href="#tab-1">공 연 (52)</a></li>
			<li class="tab-link" data-tab="tab-2"><a href="#tab-2">전 시 (32)</a></li>
			<li class="tab-link" data-tab="tab-2"><a href="#tab-2">지 역 (25)</a></li>
			<li class="tab-link" data-tab="tab-2"><a href="#tab-2">게 시 판 (30)</a></li>
		</ul>
		<!-- 이미지 및 설명-->
		
		<div id="tab1" class="mt-7">
			<h3>공연 검색결과</h3>
		
			<div class="search-box0">
				<div class="search-box1">
					<a href=""><img
						src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/"></a>
				</div>
				<div class="search-box2">
					[부산] <span style="color: rgb(251, 188, 4);">브로드웨이</span> 42번가
				</div>
				<div class="search-box3">2022.12.16~2022.12.17</div>
				<div class="search-box4">부산문화회관 대극장</div>
			</div>

			<div class="search-box0">
				<div class="search-box1">
					<a href=""><img
						src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/"></a>
				</div>
				<div class="search-box2">
					<뮤지컬> <span style="color: rgb(251, 188, 4);">브로드웨이</span>
					42번가 
				</div>
				<div class="search-box3">2022.12.19~2022.12.19</div>
				<div class="search-box4">링크아트센터 빅스홀</div>
			</div>
			<div class="search-box0">
				<div class="search-box1">
					<a href=""><img
						src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/"></a>
				</div>
				<div class="search-box2">
					2022 하즈피아노 온<span style="color: rgb(251, 188, 4);">브로드웨이</span>
				</div>
				<div class="search-box3">2022.12.01~2023.03.05</div>
				<div class="search-box4">샤롯데씨어터</div>
			</div>
			<div class="search-box0">
				<div class="search-box1">
					<a href=""><img
						src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/"></a>
				</div>
				<div class="search-box2">
					[청주] <span style="color: rgb(251, 188, 4);">브로드웨이</span> 42번가
				</div>
				<div class="search-box3">2022.12.01~2023.03.05</div>
				<div class="search-box4">한전아트센터</div>
			</div>
			
			<div class="search-box0">
				<div class="search-box1">
					<a href=""><img
						src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/"></a>
				</div>
				<div class="search-box2">
					하즈피아노 온 <span style="color: rgb(251, 188, 4);">브로드웨이</span>
				</div>
				<div class="search-box3">2022.12.01~2023.03.05</div>
				<div class="search-box4">대학로 TOM 1관</div>
			</div>
			
			<div class="search-box0">
				<div class="search-box1">
					<a href=""><img
						src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/"></a>
				</div>
				<div class="search-box2">
					<뮤지컬> <span style="color: rgb(251, 188, 4);">브로드웨이</span>
					42번가 
				</div>
				<div class="search-box3">2022.12.01~2023.03.05</div>
				<div class="search-box4">샤롯데씨어터</div>
			</div>
		</div>
		
		<div id="tab-2" class="mt-7">
			<h3>전시 검색결과</h3>
			<!--  반복문 --> 
			<div class="search-box0">
				<div class="search-box1">
					<a href=""><img
						src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/"></a>
				</div>
				<div class="search-box2">
					[부산] <span style="color: rgb(251, 188, 4);">브로드웨이</span> 42번가
				</div>
				<div class="search-box3">2022.12.16~2022.12.17</div>
				<div class="search-box4">부산문화회관 대극장</div>
			</div>
			
			
		</div>
		
		<div id="tab-3" class="mt-7">
			<h3>지역 검색결과</h3>
			<div class="search-box0">
				<div class="search-box1">
					<a href=""><img
						src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/"></a>
				</div>
				<div class="search-box2">
					[부산] <span style="color: rgb(251, 188, 4);">브로드웨이</span> 42번가
				</div>
				<div class="search-box3">2022.12.16~2022.12.17</div>
				<div class="search-box4">부산문화회관 대극장</div>
			</div>
			
		</div>
		
		<div id="tab-4" class="mt-7">
			<h3>게시판 검색결과</h3>
			<div class="search-box0">
				<div class="search-box1">
					<a href=""><img
						src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/"></a>
				</div>
				<div class="search-box2">
					[부산] <span style="color: rgb(251, 188, 4);">브로드웨이</span> 42번가
				</div>
				<div class="search-box3">2022.12.16~2022.12.17</div>
				<div class="search-box4">부산문화회관 대극장</div>
			</div>
			
		</div>
		<!-- 탭 메뉴 내용 끝 -->
	</div>

</section>
<!-- 예매취소,고객센터 이용안내-->

<section class="container mt-6">
	<div class="bnr-bottom-wrap">
		<div class="bnr-bottom">
			<div class="bnr-bottom-01">
				<div class="icon-container">
					<i class="fa-solid fa-pen-to-square"></i>
				</div>
				<div class="info-container">
					<p class="bottom-title">예매 / 취소</p>
					<span class="bottom-sub">궁금한 사항은 공지사항 및 문의를 이용해주세요.</span>
				</div>
			</div>
			<div class="bnr-bottom-02">
				<div class="icon-container">
					<i class="fa-solid fa-phone-volume"></i>
				</div>
				<div class="info-container">
					<p class="bottom-title">고객센터 이용 안내</p>
					<span class="bottom-sub">전화(1544-1234) 또는 일대일 문의를 이용해주세요.</span>
				</div>
			</div>
		</div>
	</div>
</section>