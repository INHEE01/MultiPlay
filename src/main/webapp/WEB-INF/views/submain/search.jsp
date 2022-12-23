<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

    <!--header -->
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="멀티플레이" name="title" />
</jsp:include>

<link rel="stylesheet" type="text/css" href="${path}/resources/css/search.css">
    
<section id="content">
    <!-- 검색 부 -->
    <div class="search-searchresult">
    	<div class="search-searchresult-inner">
	        <p><span style= "color:orange"> ' 브로드웨이 ' </span>에 대한 검색결과 입니다.</p>
	        <input class="search-searchBar" type="text" >
	        <a href="">
	            <i class="fa-solid fa-magnifying-glass"></i> <%-- font awesome에서 가져온 아이콘 쓰기 --%>
	        </a>
    	</div>
    </div>
    
    <!-- 추천 검색어-->
    <div class="search-recommendbar">
        <h2>(<span style="color:orange"># </span>) 추천 검색어 </h2>
        <a href="" class="search-recommendbar-1">#서툰사람들</a>
        <a href="" class="search-recommendbar-1">#드라큘라</a>
        <a href="" class="search-recommendbar-1">#조용필</a>
        <a href="" class="search-recommendbar-1">#미수</a>
        <a href="" class="search-recommendbar-1">#웨이스티드</a>
        <a href="" class="search-recommendbar-1">#마룬파이브</a>
    </div>
    
    <br><br>
    <!-- 중간바-->
    <section>
        <div class="search-midbar">
            <a href="" class="search-midbar-1">통 합 검 색</a>
            <a href="" class="search-midbar-1">공 연</a>
            <a href="" class="search-midbar-1">전 시</a>
            <a href="" class="search-midbar-1">지 역</a>
            <a href="" class="search-midbar-1">게 시 판</a>
        </div>
        <br>
    </section>
    <!-- 이미지 및 설명-->
    <section>
        <div class="search-rankingbar">
            <hr>
            <a href=""><img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/" ></a>[부산]브로드웨이 42번가 2022.12.16~2022.12.17 부산문화회관 대극장<br><br>
            <hr>
            <a href=""><img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/"></a><뮤지컬>브로드웨이 42번가 2022.12.19~2022.12.19 링크아트센터 빅스홀<br><br>
            <hr>
            <a href=""><img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/"></a>2022 하즈피아노 온 브로드웨이 2022.12.01~2023.03.05 샤롯데씨어터<br><br>
            <hr>
            <a href=""><img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/"></a>[청주]브로드웨이 42번가2022.12.01~2023.03.05 한전아트센터<br><br>
            <hr>
            <a href=""><img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/"></a><청주>하즈피아노 온 브로드웨이2022.12.01~2023.03.05 대학로 TOM 1관<br><br>
            <hr>
            <a href=""><img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/"></a><뮤지컬>브로드웨이 42번가2022.12.01~2023.03.05 샤롯데씨어터<br><br>
            <hr><br>
        </div>
    </section>
    <!-- 더보기 -->
    <section>
        <div class="search-more">
            <a href="" class="search-more-1">더 보 기 +</a>
        </div>
        <br><br>
    </section>
</section>


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
					<span class="bottom-sub">전화(1544-1234) 또는
						일대일 문의를 이용해주세요.</span>
				</div>
			</div>
		</div>
	</div>
</section>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>