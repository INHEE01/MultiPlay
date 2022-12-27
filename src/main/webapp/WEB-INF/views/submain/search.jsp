<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<script src="https://kit.fontawesome.com/9945425c20.js"
	crossorigin="anonymous"></script>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="멀티플레이::통합검색" name="title" />
</jsp:include>
<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/search.css">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- 검색결과 -->
<body>
	<section>
		<div class="search-searchresult">
			<div class="search-searchresult-inner">
				<p>
					<span style="color: rgb(251, 188, 4)">'${value}'</span>에 대한 검색결과
					입니다.
				</p>
				<form class="searches" action="${path}/submain/search" method="get">
					<input class="search-searchBar" type="text" name="value"
						value="${value}" />
					<button id="search-btn" type="submit">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
				</form>

			</div>
		</div>

		<!-- 추천 검색어-->
		<div style="text-align: center; margin: 0 auto;"
			class="search-container">
			<span class="search-title"> (<span
				style="color: rgb(251, 188, 4)"> # </span>) 추천 검색어 |
			</span> <input type="button" value="# 서툰 사람들"
				onclick="location.href='http://localhost/mvc/submain/search?value=서툰사람들'"
				class="search-mid1-1-button"> <input type="button"
				value="# 드라큘라"
				onclick="location.href='http://localhost/mvc/submain/search?value=드라큘라'"
				class="search-mid1-1-button"> <input type="button"
				value="# 조용필"
				onclick="location.href='http://localhost/mvc/submain/search?value=조용필'"
				class="search-mid1-1-button"> <input type="button"
				value="# 미수"
				onclick="location.href='http://localhost/mvc/submain/search?value=미수'"
				class="search-mid1-1-button"> <input type="button"
				value="# 웨이스티드"
				onclick="location.href='http://localhost/mvc/submain/search?value=웨이스티드'"
				class="search-mid1-1-button"> <input type="button"
				value="# 마룬파이브"
				onclick="location.href='http://localhost/mvc/submain/search?value=마룬파이브'"
				class="search-mid1-1-button">
		</div>
	</section>

	<!-- 통합검색탭 -->
	<section class="board">
		<div class="container">
			<ul class="tab-container">
				<li class="tab-container__item active" data-tab="tab1"><a
					style="margin: 10px 0px;" class="tab-container__item--title"
					href="#">통합검색(352)</a></li>
				<li class="tab-container__item" data-tab="tab2"><a
					style="margin: 10px 0px;" class="tab-container__item--title"
					href="#">공연</a></li>
				<li class="tab-container__item" data-tab="tab3"><a
					style="margin: 10px 0px;" class="tab-container__item--title"
					href="#">전시</a></li>
				<li class="tab-container__item" data-tab="tab4"><a
					style="margin: 10px 0px;" class="tab-container__item--title"
					href="#">게시판</a></li>
			</ul>
			<div class="content-container">

				<article id="tab1" class="content-container__content target">
					<h3>공 연 검 색</h3>
					<table id="tbl-board" class="board-table">
						<!--  
						<c:if test="${empty list}">
							<tr>
								<td colspan="6">검색결과가 없습니다.</td>
							</tr>
						</c:if> -->
						<tr>
							<td class="board-content"><a href=""> <img
									class="search-img"
									src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/">
							</a></td>
							<td class="board-content board-title">[부산] <span
								style="color: rgb(251, 188, 4);">'${value}'</span> 42번가
							</td>
							<td class="board-content">2022.12.19~2022.12.19</td>
							<td class="board-content">부산문화회관대극장</td>
						</tr>
						<tr>
							<td class="board-content"><a href=""> <img
									class="search-img"
									src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/">
							</a></td>
							<td class="board-content board-title"><뮤지컬> <span
									style="color: rgb(251, 188, 4);">' ${value} '</span> 42번가 </td>
							<td class="board-content">2022.12.19~2022.12.19</td>
							<td class="board-content">링크아트센터 빅스홀</td>
						</tr>
						<tr>
							<td class="board-content"><a href=""> <img
									class="search-img"
									src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/">
							</a></td>
							<td class="board-content board-title">2022 하즈피아노 온<span
								style="color: rgb(251, 188, 4);">' ${value} '</span>
							</td>
							<td class="board-content">2022.12.19~2022.12.19</td>
							<td class="board-content">샤롯데씨어터</td>
						</tr>
						<tr>
							<td class="board-content"><a href=""> <img
									class="search-img"
									src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/">
							</a></td>
							<td class="board-content board-title">[청주] <span
								style="color: rgb(251, 188, 4);">' ${value} '</span> 42번가
							</td>
							<td class="board-content">2022.12.19~2022.12.19</td>
							<td class="board-content">한전아트센터</td>
						</tr>
						<tr>
							<td class="board-content"><a href=""> <img
									class="search-img"
									src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/">
							</a></td>
							<td class="board-content board-title">하즈피아노 온 <span
								style="color: rgb(251, 188, 4);">' ${value} '</span>
							</td>
							<td class="board-content">2022.12.19~2022.12.19</td>
							<td class="board-content">대학로 TOM 1관</td>
						</tr>
						<tr>
							<td class="board-content"><a href=""> <img
									class="search-img"
									src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/">
							</a></td>
							<td class="board-content board-title"><뮤지컬> <span
									style="color: rgb(251, 188, 4);">' ${value} '</span> 42번가 </td>
							<td class="board-content">2022.12.19~2022.12.19</td>
							<td class="board-content">샤롯데씨어터</td>
						</tr>
					</table>

					<h3>전 시 검 색</h3>
					<table id="tbl-board" class="board-table">
						<!--  
						<c:if test="${empty list}">
							<tr>
								<td colspan="6">검색결과가 없습니다.</td>
							</tr>
						</c:if> -->
						<tr>
							<td class="board-content"><a href=""> <img
									class="search-img"
									src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/">
							</a></td>
							<td class="board-content board-title">[부산] <span
								style="color: rgb(251, 188, 4);">'${value}'</span> 42번가
							</td>
							<td class="board-content">2022.12.19~2022.12.19</td>
							<td class="board-content">부산문화회관대극장</td>
						</tr>
					</table>

					<h3>게 시 판 검 색</h3><!-- 수정 미완성 -->
					<table id="tbl-board" class="board-table">
						<!--  
						<c:if test="${empty list}">
							<tr>
								<td colspan="6">검색결과가 없습니다.</td>
							</tr>
						</c:if> -->
						<div>
							<c:forEach var="board" items="${boardList}">
								<div>
									<td class="board-content"><c:out value="${board.bno}" /></td>
									<td class="board-content board-title"><a id="board-title"
										href="${path}/board/view?no=${board.bno}"> <c:out
												value="[자유게시판]  ${board.boardTitle}" />
									</a>
								</div>
							</c:forEach>
						</div>
					</table>
				</article>

				<article id="tab2" class="content-container__content">
					<h3>공 연 검 색</h3>
					<table id="tbl-board" class="board-table">
						<!--  
						<c:if test="${empty list}">
							<tr>
								<td colspan="6">검색결과가 없습니다.</td>
							</tr>
						</c:if> -->
						<tr>
							<td class="board-content"><a href=""> <img
									class="search-img"
									src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/">
							</a></td>
							<td class="board-content board-title">[부산] <span
								style="color: rgb(251, 188, 4);">'${value}'</span> 42번가
							</td>
							<td class="board-content">2022.12.19~2022.12.19</td>
							<td class="board-content">부산문화회관대극장</td>
						</tr>
						<tr>
							<td class="board-content"><a href=""> <img
									class="search-img"
									src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/">
							</a></td>
							<td class="board-content board-title"><뮤지컬> <span
									style="color: rgb(251, 188, 4);">' ${value} '</span> 42번가 </td>
							<td class="board-content">2022.12.19~2022.12.19</td>
							<td class="board-content">링크아트센터 빅스홀</td>
						</tr>
						<tr>
							<td class="board-content"><a href=""> <img
									class="search-img"
									src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/">
							</a></td>
							<td class="board-content board-title">2022 하즈피아노 온<span
								style="color: rgb(251, 188, 4);">' ${value} '</span>
							</td>
							<td class="board-content">2022.12.19~2022.12.19</td>
							<td class="board-content">샤롯데씨어터</td>
						</tr>
						<tr>
							<td class="board-content"><a href=""> <img
									class="search-img"
									src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/">
							</a></td>
							<td class="board-content board-title">[청주] <span
								style="color: rgb(251, 188, 4);">' ${value} '</span> 42번가
							</td>
							<td class="board-content">2022.12.19~2022.12.19</td>
							<td class="board-content">한전아트센터</td>
						</tr>
						<tr>
							<td class="board-content"><a href=""> <img
									class="search-img"
									src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/">
							</a></td>
							<td class="board-content board-title">하즈피아노 온 <span
								style="color: rgb(251, 188, 4);">' ${value} '</span>
							</td>
							<td class="board-content">2022.12.19~2022.12.19</td>
							<td class="board-content">대학로 TOM 1관</td>
						</tr>
						<tr>
							<td class="board-content"><a href=""> <img
									class="search-img"
									src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/">
							</a></td>
							<td class="board-content board-title"><뮤지컬> <span
									style="color: rgb(251, 188, 4);">' ${value} '</span> 42번가 </td>
							<td class="board-content">2022.12.19~2022.12.19</td>
							<td class="board-content">샤롯데씨어터</td>
						</tr>
					</table>
				</article>

				<article id="tab3" class="content-container__content">
					<h3>전 시 검 색</h3>
					<table id="tbl-board" class="board-table">
						<!--  
						<c:if test="${empty list}">
							<tr>
								<td colspan="6">검색결과가 없습니다.</td>
							</tr>
						</c:if> -->
						<tr>
							<td class="board-content"><a href=""> <img
									class="search-img"
									src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/">
							</a></td>
							<td class="board-content board-title">[부산] <span
								style="color: rgb(251, 188, 4);">'${value}'</span> 42번가
							</td>
							<td class="board-content">2022.12.19~2022.12.19</td>
							<td class="board-content">부산문화회관대극장</td>
						</tr>
					</table>
				</article>

				<article id="tab4" class="content-container__content">
					<h3>게 시 판 검 색</h3> <!-- 수정 미완성 -->
					<table id="tbl-board" class="board-table">
						<!--  
						<c:if test="${empty list}">
							<tr>
								<td colspan="6">검색결과가 없습니다.</td>
							</tr>
						</c:if> -->
						<tr>
							<td class="board-content">
								<div>
									<c:forEach var="board" items="${boardList}">
										<div>
											<td class="board-content"><c:out value="${board.bno}" /></td>
											<td class="board-content board-title"><a
												id="board-title" href="${path}/board/view?no=${board.bno}">
													<c:out value="[자유게시판]  ${board.boardTitle}" />
											</a> <!-- 
											<a href="${path}/board/view?no=${board.bno}"> title :	${board.boardTitle} </a>
											 <td class="board-content"><c:out value="${board.userId}" /></td>
										 -->
										</div>
									</c:forEach>
								</div>
					</table>
				</article>
			</div>
		</div>
	</section>

	<!--  위로가기 버튼 -->
	<div id="goingTop" onclick="window.scrollTo(0,0);">↑</div>

	<!-- 예매취소,고객센터 이용안내-->
	<section>
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
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
<script>

/* 탭메뉴 */

const tabItem = document.querySelectorAll(".tab-container__item");
const tabContent = document.querySelectorAll(".content-container__content");

tabItem.forEach((item) => {
  item.addEventListener("click", tabHandler);
});

function tabHandler(item) {
  const tabTarget = item.currentTarget;
  const target = tabTarget.dataset.tab;
  tabItem.forEach((title) => {
    title.classList.remove("active");
  });
  tabContent.forEach((target) => {
    target.classList.remove("target");
  });
  document.querySelector("#" + target).classList.add("target");
  tabTarget.classList.add("active");
}



/* 제목바꾸기 */
function setInnerInfo() {
  const element = document.getElementById('title_name');
  element.innerHTML 
    = '<span class="title_name">공지사항<span>';
} 
function setInnerASK() {
  const element = document.getElementById('title_name');
  element.innerHTML 
    = '<span class="title_name">문의<span>';
} 
function setInnerBOARD() {
  const element = document.getElementById('title_name');
  element.innerHTML 
    = '<span class="title_name">자유게시판<span>';
}
</script>