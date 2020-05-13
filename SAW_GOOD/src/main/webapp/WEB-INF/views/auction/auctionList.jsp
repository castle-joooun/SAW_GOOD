<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<link rel="stylesheet"
	href="${path }/resources/css/auction/auctionPage.css" />
<link rel="stylesheet" href="css/auctionPage.css" type="text/css" />
<!-- 오늘 날짜 세팅 -->
<c:set value="<%=new java.util.Date()%>" var="now" />
<fmt:parseNumber value="${now.time / (1000*60*60*24)}"
	integerOnly="true" var="today"></fmt:parseNumber>

<section>
	<div class="parallax-window" data-parallax="scroll"
		data-image-src="${path }/resources/images/auction/funding main2.jpeg">
		<h3>AUCTION</h3>
	</div>
	<!-- 전체 컨테이너 div -->
	<div id="search-area" class="container" style="border: 0;">
		<form action="" method="post">
			<select id="category" name="category" class="selectStyle">
				<option value="0">category</option>
				<option value="1">bed</option>
				<option value="2">couch / chair</option>
				<option value="3">table / desk</option>
				<option value="4">carpet / lug</option>
				<option value="5">storage</option>
				<option value="6">others</option>
			</select> <select id="terms" name="terms" class="selectStyle">
				<option value="0">남은 기간</option>
				<option value="1">짧은 순서</option>
				<option value="2">긴 순서</option>
			</select> <select id="price" name="price" class="selectStyle">
				<option value="0">가격</option>
				<option value="1">300,000원 이하</option>
				<option value="2">500,000원 이하</option>
				<option value="3">500,000원 이상</option>
			</select>
			<button type="submit">검색하기</button>
		</form>
	</div>
	<div class="container" style="padding: 0;">
		<!-- 경매(옥션) 메인 사진 -->
		<!-- <img src="image/auction main2.jpg" style="width: 1080px; height: 550px; margin-left: 30px; margin-top: 30px;"/> -->


		<div class="container" style="padding: 0; border-top: 0;">
			<div class="row" style="margin: 30px 30px 30px 30px">
				<div class="col-md-2">
					<!-- <!— 서브네비게이션 바 —> -->
					<ul class="category">
						<li><a href="#">bed</a></li>
						<li><a href="#">couch / chair</a></li>
						<li><a href="#">light</a></li>
						<li><a href="#">table / desk</a></li>
						<li><a href="#">carpet / lug</a></li>
						<li><a href="#">storage</a></li>
						<li><a href="#">others</a></li>
					</ul>
					<!-- <!— 검색기능 —> -->
					<span class="block-span"> <input type="text" />
						<button>
							<img src="${path }/resources/images/search-icon.png" width="20px"
							height="18px" />
						</button>
					</span>
				</div>
				<div class="col-md-10">
					<c:forEach items="${list }" varStatus="status" step="3">
						<div class="row">
							<!-- 열 -->
							<c:forEach items="${list }" var="item" begin="${status.index }"
								end="${status.index+2}">
								<div class="col-md-4">
									<div class="auctionProduct">
										<div class="productPoto">
											<img src="${path }/resources/images/${item.acMainImg}.jpg"
												style="width: 100%; height: 220px;">
										</div>
										<div class="proTitle">
											<p>${item.acTitle }</p>
										</div>
										<div class="boderbottom-Red">
											<p class="pCategory">
											${item.acCategory }</p>
										</div>
										<div class="finalPriceSmall">
											<span class="nowPriceSmall">현재금액 : </span>
											<c:if test="${item.acNowPrice>0 }">
												${item.acNowPrice }원 
											</c:if>
											<c:if test="${item.acNowPrice==0 }">
												입찰금액 없음
											</c:if>
											
											<span class="rightSmall">
											<fmt:parseNumber value="${item.acEndDate.time / (1000*60*60*24)}" integerOnly="true" var="acEndDate"/>
											${acEndDate-today }일 남음
											</span>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>


</section>




<jsp:include page="/WEB-INF/views/common/footer.jsp" />