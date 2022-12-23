<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="멀티플레이" name="title" />
</jsp:include>

<link rel="stylesheet" type="text/css" href="${path}/resources/css/home.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/css/home.hot.css">

<%-- 배너 시작 --%>
<section class="home-banner">
	<div class="home-banner-outer">
		<div class="home-banner-inner-list">
			<div class="home-banner-inner">
				<img class="home-bannerImg"
					src="${path}/resources/images/ours/home_banner01.jpeg">
			</div>
			<div class="home-banner-inner">
				<img class="home-bannerImg"
					src="${path}/resources/images/ours/home_banner02.jpeg">
			</div>
			<div class="home-banner-inner">
				<img class="home-bannerImg"
					src="${path}/resources/images/ours/home_banner03.jpeg">
			</div>
		</div>
	</div>
	<div class="button-list">
		<button class="button-left">
			<i class="fa-solid fa-angle-left fa-3x"></i>
		</button>
		<button class="button-right">
			<i class="fa-solid fa-angle-right fa-3x"></i>
		</button>
	</div>
</section>
<%-- 배너 끝 --%>

<%-- content 시작 --%>
<section id="content">
	<div class="home-content">
		<%-- 인기작품 시작 --%>
		<div class="home-hot">
			<div class="col">
				<h2 class="mb-0 ls-lg">인기작품</h2>
				<hr class="home-hr">
			</div>

			<div class="whot-area">
				<ul id="ulWhatshot">
					<li>
						<div class="big-one">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202212/20221212/20221212-43981.jpg/dims/quality/70/">
							<div class="big-one-txt">
									<p class="big-tit">연극 빛나는 버러지</p>
									<p class="big-detail">
										2022. 11. 29. ~ 2023. 01. 08. 대학로 드림아트센터 4관 /
										<span>청소년할인 50%</span>
									</p>
								</div>
								<p class="big-circle">50%</p></a>
						</div>
					</li>
					<li>
						<div class="whot-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202209/20220922/20220922-43616.jpg/dims/quality/70/" alt="" class="lazyload">
								<div class="whot-list-txt">
									<div>
										<p class="whot-tit">뮤지컬 브로드웨이 42번가</p>
										<p class="whot-detail">
											2022. 11. 05. ~ 2023. 01. 15. <br>예술의전당 CJ 토월극장
										</p>
										<p class="whot-event">청소년 할인 30%</p>
									</div>
								</div>
								<p class="whot-list-circle">
									<span>30%</span>
								</p>
							</a>
						</div>
					</li>
					<li>
						<div class="whot-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221114/20221114-44090.jpg/dims/quality/70/" alt="" class="lazyload">
								<div class="whot-list-txt">
									<div>
										<p class="whot-tit">뮤지컬 루드윅: 베토벤 더 피아노</p>
										<p class="whot-detail">
											2022. 12. 20. ~ 2023. 03. 12.<br>예스24스테이지 1관
										</p>
										<p class="whot-event">프리뷰 할인 40%</p>
									</div>
								</div>
								<p class="whot-list-circle">
									<span>40%</span>
								</p>
							</a>
						</div>
					</li>
					<li>
						<div class="whot-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202212/20221212/20221212-43815.jpg/dims/quality/70/" alt="" class="lazyload">
								<div class="whot-list-txt">
									<div>
										<p class="whot-tit">뮤지컬 드라큘라</p>
										<p class="whot-detail">
											2022. 11. 15. ~ 2023. 01. 15.<br>올림픽공원 내 우리금융아트홀
										</p>
										<p class="whot-event">커플 할인 20%</p>
									</div>
								</div>
								<p class="whot-list-circle">
									<span>20%</span>
								</p>
							</a>
						</div>
					</li>
					<li>
						<div class="whot-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202212/20221212/20221212-43518.jpg/dims/quality/70/" alt="" class="lazyload">
								<div class="whot-list-txt">
									<div>
										<p class="whot-tit">연극 사나이 와타나베</p>
										<p class="whot-detail">
											2022. 10. 25. ~ 2023. 01. 15.<br>플러스씨어터
										</p>
										<p class="whot-event">조기예매 할인 30%</p>
									</div>
								</div>
								<p class="whot-list-circle">
									<span>30%</span>
								</p>
							</a>
						</div>
					</li>
					<li>
						<div class="whot-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221121/20221121-43929.jpg/dims/quality/70/" alt="" class="lazyload">
								<div class="whot-list-txt">
									<div>	
										<p class="whot-tit">연극 서툰 사람들</p>
										<p class="whot-detail">
											2022. 11. 26. ~ 2023. 02. 19.<br>예스24스테이지 3관
										</p>
										<p class="whot-event">화이팅 할인 40%</p>
									</div>
								</div>
								<p class="whot-list-circle">
									<span>40%</span>
								</p>
							</a>
						</div>
					</li>
					<li>
						<div class="whot-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221128/20221128-43451.jpg/dims/quality/70/" alt="" class="lazyload">
								<div class="whot-list-txt">
									<div>	
										<p class="whot-tit">뮤지컬 지저스 크라이스트 수퍼스타</p>
										<p class="whot-detail">
											2022. 11. 10. ~ 2023. 01. 15.<br>광림아트센터 BBCH홀
										</p>
										<p class="whot-event">화이팅 할인 40%</p>
									</div>
								</div>
								<p class="whot-list-circle">
									<span>40%</span>
								</p>
							</a>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<%-- 인기작품 끝 --%>
		
		
		<%-- 탑5 시작 --%>
		<div class="home-top5">
			<h2 class="mb-0 ls-lg home-diplay-ib">TOP 5</h2>
			<%-- 라디오 버튼 --%>
			<input id="home-tab1" type="radio" name="tab" checked="checked"/>
			<input id="home-tab2" type="radio" name="tab" />
			<input id="home-tab3" type="radio" name="tab" />
			<%-- 라벨 : 화면에 표시되는 탭 제목 --%>
			<label for="home-tab1">전체</label>
			<label for="home-tab2">공연</label>
			<label for="home-tab3">전시</label>
			<hr class="home-hr">
			<%-- 탭1 시작 --%>
			<div class="home-top5-area home-tab1-content">
				<ul>
					<li>
						<div class="home-top5-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221128/20221128-43451.jpg/dims/quality/70/" alt="" class="home-top5-img">
								<div class="top5-list-txt">
									<div>
										<p class="home-top5-title">뮤지컬 지저스 크라이스트 수퍼스타</p>
										<p class="home-top5-detail">
											2022. 11. 10. ~ 2023. 01. 15.<br>광림아트센터 BBCH홀
										</p>
									</div>
								</div>
							</a>
						</div>					
					</li>
					<li>
						<div class="home-top5-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221128/20221128-43451.jpg/dims/quality/70/" alt="" class="home-top5-img">
								<div class="top5-list-txt">
									<div>
										<p class="home-top5-title">뮤지컬 지저스 크라이스트 수퍼스타</p>
										<p class="home-top5-detail">
											2022. 11. 10. ~ 2023. 01. 15.<br>광림아트센터 BBCH홀
										</p>
									</div>
								</div>
							</a>
						</div>					
					</li>
					<li>
						<div class="home-top5-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221128/20221128-43451.jpg/dims/quality/70/" alt="" class="home-top5-img">
								<div class="top5-list-txt">
									<div>
										<p class="home-top5-title">뮤지컬 지저스 크라이스트 수퍼스타</p>
										<p class="home-top5-detail">
											2022. 11. 10. ~ 2023. 01. 15.<br>광림아트센터 BBCH홀
										</p>
									</div>
								</div>
							</a>
						</div>					
					</li>
					<li>
						<div class="home-top5-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221128/20221128-43451.jpg/dims/quality/70/" alt="" class="home-top5-img">
								<div class="top5-list-txt">
									<div>
										<p class="home-top5-title">뮤지컬 지저스 크라이스트 수퍼스타</p>
										<p class="home-top5-detail">
											2022. 11. 10. ~ 2023. 01. 15.<br>광림아트센터 BBCH홀
										</p>
									</div>
								</div>
							</a>
						</div>					
					</li>
					<li>
						<div class="home-top5-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221128/20221128-43451.jpg/dims/quality/70/" alt="" class="home-top5-img">
								<div class="top5-list-txt">
									<div>
										<p class="home-top5-title">뮤지컬 지저스 크라이스트 수퍼스타</p>
										<p class="home-top5-detail">
											2022. 11. 10. ~ 2023. 01. 15.<br>광림아트센터 BBCH홀
										</p>
									</div>
								</div>
							</a>
						</div>					
					</li>
				</ul>
			</div>
			<%-- 탭2 시작 --%>
			<div class="home-top5-area home-tab1-content">
				<ul>
					<li>
						<div class="home-top5-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221121/20221121-43929.jpg/dims/quality/70/" alt="" class="home-top5-img">
								<div class="top5-list-txt">
									<div>
										<p class="home-top5-title">연극 서툰 사람들</p>
										<p class="home-top5-detail">
											2022. 11. 26. ~ 2023. 02. 19.<br>예스24스테이지 3관
										</p>
									</div>
								</div>
							</a>
						</div>					
					</li>
					<li>
						<div class="home-top5-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221121/20221121-43929.jpg/dims/quality/70/" alt="" class="home-top5-img">
								<div class="top5-list-txt">
									<div>
										<p class="home-top5-title">연극 서툰 사람들</p>
										<p class="home-top5-detail">
											2022. 11. 26. ~ 2023. 02. 19.<br>예스24스테이지 3관
										</p>
									</div>
								</div>
							</a>
						</div>					
					</li>
					<li>
						<div class="home-top5-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221121/20221121-43929.jpg/dims/quality/70/" alt="" class="home-top5-img">
								<div class="top5-list-txt">
									<div>
										<p class="home-top5-title">연극 서툰 사람들</p>
										<p class="home-top5-detail">
											2022. 11. 26. ~ 2023. 02. 19.<br>예스24스테이지 3관
										</p>
									</div>
								</div>
							</a>
						</div>			
					</li>
					<li>
						<div class="home-top5-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221121/20221121-43929.jpg/dims/quality/70/" alt="" class="home-top5-img">
								<div class="top5-list-txt">
									<div>
										<p class="home-top5-title">연극 서툰 사람들</p>
										<p class="home-top5-detail">
											2022. 11. 26. ~ 2023. 02. 19.<br>예스24스테이지 3관
										</p>
									</div>
								</div>
							</a>
						</div>				
					</li>
					<li>
						<div class="home-top5-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202211/20221121/20221121-43929.jpg/dims/quality/70/" alt="" class="home-top5-img">
								<div class="top5-list-txt">
									<div>
										<p class="home-top5-title">연극 서툰 사람들</p>
										<p class="home-top5-detail">
											2022. 11. 26. ~ 2023. 02. 19.<br>예스24스테이지 3관
										</p>
									</div>
								</div>
							</a>
						</div>			
					</li>
				</ul>
			</div>
			<%-- 탭3 시작 --%>
			<div class="home-top5-area home-tab3-content">
				<ul>
					<li>
						<div class="home-top5-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202212/20221212/20221212-43518.jpg/dims/quality/70/" alt="" class="home-top5-img">
								<div class="top5-list-txt">
									<div>
										<p class="home-top5-title">연극 사나이 와타나베</p>
										<p class="home-top5-detail">
											2022. 10. 25. ~ 2023. 01. 15.<br>플러스씨어터
										</p>
									</div>
								</div>
							</a>
						</div>					
					</li>
					<li>
						<div class="home-top5-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202212/20221212/20221212-43518.jpg/dims/quality/70/" alt="" class="home-top5-img">
								<div class="top5-list-txt">
									<div>
										<p class="home-top5-title">연극 사나이 와타나베</p>
										<p class="home-top5-detail">
											2022. 10. 25. ~ 2023. 01. 15.<br>플러스씨어터
										</p>
									</div>
								</div>
							</a>
						</div>						
					</li>
					<li>
						<div class="home-top5-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202212/20221212/20221212-43518.jpg/dims/quality/70/" alt="" class="home-top5-img">
								<div class="top5-list-txt">
									<div>
										<p class="home-top5-title">연극 사나이 와타나베</p>
										<p class="home-top5-detail">
											2022. 10. 25. ~ 2023. 01. 15.<br>플러스씨어터
										</p>
									</div>
								</div>
							</a>
						</div>					
					</li>
					<li>
						<div class="home-top5-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202212/20221212/20221212-43518.jpg/dims/quality/70/" alt="" class="home-top5-img">
								<div class="top5-list-txt">
									<div>
										<p class="home-top5-title">연극 사나이 와타나베</p>
										<p class="home-top5-detail">
											2022. 10. 25. ~ 2023. 01. 15.<br>플러스씨어터
										</p>
									</div>
								</div>
							</a>
						</div>						
					</li>
					<li>
						<div class="home-top5-list">
							<a href="#">
								<img src="http://tkfile.yes24.com/upload2/perfblog/202212/20221212/20221212-43518.jpg/dims/quality/70/" alt="" class="home-top5-img">
								<div class="top5-list-txt">
									<div>
										<p class="home-top5-title">연극 사나이 와타나베</p>
										<p class="home-top5-detail">
											2022. 10. 25. ~ 2023. 01. 15.<br>플러스씨어터
										</p>
									</div>
								</div>
							</a>
						</div>					
					</li>
				</ul>
			</div>
		</div>
		<%-- 탑5 끝 --%>

		<%-- 섹션 4 : 공연후기 + 공지사항 --%>
		<div class="home-sec04 row">
			<%-- 공연후기 : 자유게시판 말머리 [후기]  시작 --%>
			<div class="home-review col-md-7">
					<h2 class="mb-0 ls-lg home-diplay-ib">공연후기</h2>
					<div class="home-review-radio home-diplay-ib">
						<button class="cardBtnL">&lt;</button>
						<label id="cardLabel1" class="home-cardIndex active">●</label>
						<label id="cardLabel2" class="home-cardIndex">●</label>
						<label id="cardLabel3" class="home-cardIndex">●</label>
						<label id="cardLabel4" class="home-cardIndex">●</label>
						<button class="cardBtnR">&gt;</button>
					</div>
					<hr class="home-hr">
					<div class="home-card-list">
						<div class="home-card-item target" id="cardItem1">
							<a href="#">
								<img src="http://tkfile.yes24.com/Upload2/Display/202212/20221213/와타나베.jpg/dims/quality/70/" alt="" class="home-card-item-img">
								<div class="rni-box">
									<p class="rni-txt">연극 &lt;사나이 와타나베&gt; - 사나이 중 사나이, 그 이름 와타나베</p>
								</div>
							</a>
						</div>
						<div class="home-card-item" id="cardItem2">
							<a href="#">
								<img src="http://tkfile.yes24.com/Upload2/Display/202212/20221214/셰익스피어인러브 copy.jpg/dims/quality/70/" alt="" class="home-card-item-img">
								<div class="rni-box">
									<p class="rni-txt">연극 &lt;셰익스피어 인 러브&gt; 한국 초연</p>
								</div>
							</a>
						</div>
						<div class="home-card-item" id="cardItem3">
							<a href="#">
								<img src="http://tkfile.yes24.com/Upload2/Display/202212/20221220/미수 copy.jpg/dims/quality/70/" alt="" class="home-card-item-img">
								<div class="rni-box">
									<p class="rni-txt">뮤지컬 &lt;미수&gt; - 사극으로 만나는 따뜻한 두 우정 이야기</p>
								</div>
							</a>
						</div>
						<div class="home-card-item" id="cardItem4">
							<a href="#">
								<img src="http://tkfile.yes24.com/Upload2/Display/202212/20221213/와타나베.jpg/dims/quality/70/" alt="" class="home-card-item-img">
								<div class="rni-box">
									<p class="rni-txt">연극 &lt;사나이 와타나베&gt; - 사나이 중 사나이, 그 이름 와타나베</p>
								</div>
							</a>
						</div>
					</div>
								
			</div>
			<%-- 공연후기 : 자유게시판 말머리 [후기]  끝 --%>
			
			<%-- 공지사항 시작 --%>
			<div class="home-notice col-md-5">
				<h2 class="mb-0 ls-lg home-diplay-ib">공지사항</h2>
				<a href="#" class="home-notice-more">+ 더보기</a>
				<hr class="home-hr">
				<div class="home-notice-board" id="mncb01" style="display: block;">
					<ul class="home-notice-list">
						<li>
							<a href="#">
								<p style="font-weight:bold">
								◆◆ [국비지원]2023 SW개발 채용예정자 교육생 모집 ◆◆</p>
								<span>2022-12-19</span>
							</a>
						</li>
						<li>
							<a href="#">
								<p style="font-weight:bold">
								★★2022학년도 글로벌 언어 집중 강좌(GLIP) 세션6 수강생 모집★★</p>
								<span>2022-12-15</span>
							</a>
						</li>
						<li>
							<a href="#">
								<p style="font-weight:bold">
								용당캠퍼스 상주업체 주차등록 안내 및 무료주차권 구입 신청서 첨부</p>
								<span>2022-05-12</span>
							</a>
						</li>
						<li>
							<a href="#">
								<p>
								개인정보 유출사고 위험진단 안내</p>
								<span>2022-12-21</span>
							</a>
						</li>
						<li>
							<a href="#">
								<p>
								[장애학생지원센터]2022년 학내구성원 대상 장애인식개선교육 안내</p>
								<span>2022-12-20</span>
							</a>
						</li>
						<li>
							<a href="#">
								<p>
								2023학년도 1학기 글로벌수산대학원 재입학 시행 계획 알림</p>
								<span>2022-12-20</span>
							</a>
						</li>
					</ul><!-- home-notice-list -->
				</div>
			</div>
			<%-- 공지사항 끝 --%>
		</div>
	</div>
</section>
<%-- content 끝 --%>

<%-- preFooter 시작 --%>
<section id="home-preFooter">
	<div class="home-preFooter row align-items-center">
		<div class="home-preFooter-left col-md-6">
			<p class="home-preFooter-tell">1588-1234</p>
			<dl class="ps-20">
				<dt>평일</dt>
				<dd>09:00~18:00</dd>
				<dt>토요일</dt>
				<dd>
					09:00~17:00<span>(일요일 및 공휴일 휴무)</span>
				</dd>
			</dl>
		</div>
		<div class="home-preFooter-right col-md-6">
			<div class="home-icon col-md-3">
				<i class="fa-regular fa-clipboard fa-4x"></i>
				<p>공지사항</p>
			</div>
			<div class="home-icon col-md-3">
				<i class="fa-regular fa-comment fa-4x"></i>
				<p>1:1문의</p>
			</div>
			<div class="home-icon col-md-3">
				<i class="fa-regular fa-envelope fa-4x"></i>
				<p>제휴문의</p>
			</div>
			<div class="home-icon col-md-3">
				<i class="fa-regular fa-pen-to-square fa-4x"></i>
				<p>게시판</p>
			</div>
		</div>
	</div>
</section>

<script src="${path}/resources/js/home.js"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>


