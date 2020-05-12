<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="path" value="${pageContext.request.contextPath }"/>
<jsp:include page="/WEB-INF/views/admin/common/headerAndfooter.jsp"/>

<style>
		/* 섹션(본문) */
		#titeltwo {
			padding-bottom: 30px;
			margin: 0;
			font-size: 40px;
			font-weight: bolder;
		}

		#hr {
			margin: 0;
		}

		/* 이미지부분 */
		.multiple_slider li img {
			width: 100%;
			height: 130px;
		}

		.multiple_slider li img:hover {
			border: 1px solid black;
			cursor: pointer;
		}

		.multiple_slider li {
			width: 100%;
			height: 100%;
		}

		.slideWrap {
			width: 100%;
			position: relative;
			margin-top: 30px;
		}

		.controls .bx-prev,
		.controls .bx-next {
			position: absolute;
			top: 50%;
			transform: translateY(-50%);
		}

		.controls .bx-prev {
			right: calc(100% + 10px);
		}

		.controls .bx-next {
			left: calc(100% + 10px);
		}

		/* 펀딩설명창 */
		.character {
			border-bottom: 1px solid #eee;
			margin-bottom: 20px;
		}

		.character>b {
			font-weight: bolder;
			font-size: 17px;
		}

		.character>p {
			font-size: 13px;
			color: #b2b2b2;
			margin: 0;
			padding: 5px 0 10px 10px;
		}

		.funding_tit {
			display: inline-block;
			width: 150px;
			font-size: 15px;
		}

		.funding_con {
			display: inline-block;
			width: 282px;
			color: black;
			font-size: 20px;
		}

		#button {
			text-align: right;
			margin-right: 20px;
			border-top:1px solid #eee;
			padding-top:20px;
		}

		#btn-agree {
			padding: 0 30px;
			line-height: 42px;
			font-size: 15px;
			color: #fff;
			text-align: center;
			background-color: #303030;
			border: 1px solid #303030;

		}
</style>

<div id="content" class="p-4 p-md-5 pt-5">
			<h2 id="titeltwo">Funding View</h2>
			<hr id="hr">
			<div class="container-fluid" style="margin-top: 30px;">
				<div class="row">
					<div class="col-xl-6">
						<div>
							<img class="img-reponsive img-thumbnail" src="${path }/resources/images/chair.jpg" width="99%"
								style="height:500px" ; />
						</div>
						<div class="slideWrap multipleWrap controls">
							<ul class="multiple_slider">
								<li><img src="${path }/resources/images/chair.jpg" /></li>
								<li><img src="${path }/resources/images/sidebar.jpg" /></li>
								<li><img src="${path }/resources/images/table.jpg" /></li>
								<li><img src="${path }/resources/images/table2.jpg" /></li>
								<li><img src="${path }/resources/images/chair.jpg" /></li>
								<li><img src="${path }/resources/images/sidebar.jpg" /></li>
								<li><img src="${path }/resources/images/table.jpg" /></li>
								<li><img src="${path }/resources/images/table2.jpg" /></li>
							</ul>
						</div>
					</div>
					<div class="col-xl-6" style="padding:5px 0 0 20px;">
						<div id="funding-info">
							<div class="character">
								<b>펀딩특징</b>
								<p>이 펀딩은 쏘굿에서만 특별진행하는 펀딩입니다.</p>
							</div>
							<h4 style="font-size: 20px;">
								Funding Info
								<span style="font-size: 13px; padding-left:10px;color:#b2b2b2">펀딩정보</span>
							</h4>
							<ul id="funding-all" style="padding:20px 0 0 0;">
								<li>
									<p class="funding_tit"><span> - </span> 작성자 </p>
									<p class="funding_con">
										<strong> front-fuck </strong>
									</p>
								</li>
								<li>
									<p class="funding_tit"><span> - </span> 펀딩제목 <span> / </span> 번호 </p>
									<p class="funding_con">
										<strong> chair product
											<span> / </span>
											123123
										</strong>
									</p>
								</li>
								<li>
									<p class="funding_tit"><span> - </span> 가격 <span> / </span> 목표가격</p>
									<p class="funding_con">
										<strong> 300,000원
											<span> / </span>
											10,000,000원
										</strong>
									</p>
								</li>
								<li>
									<p class="funding_tit"><span> - </span> 현재가격 </p>
									<p class="funding_con">
										<strong>
											5,700,000원
										</strong>
									</p>
								</li>
								<li>
									<p class="funding_tit"><span> - </span> 등록날짜 </p>
									<p class="funding_con">
										<strong> 2020-04-30 </strong>
									</p>
								</li>
								<li>
									<p class="funding_tit"><span> - </span> 만료날짜 </p>
									<p class="funding_con">
										<strong> 2020-05-26 </strong>
									</p>
								</li>
							</ul>
							<div id="button">
								<button type="button" id="btn-agree">승인</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<script>
		$(function () {
			$(".multiple_slider").bxSlider({
				nextText: '<i class="fas fa-chevron-right"></i>',
				prevText: '<i class="fas fa-chevron-left"></i>',
				pager: false,
				minSlides: 2,
				maxSlides: 5,
				moveSlides: 1,
				slideWidth: 150,
				slideMargin: 30
			})

		})

	</script>


</body>

</html>