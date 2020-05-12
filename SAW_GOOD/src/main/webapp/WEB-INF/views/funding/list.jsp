<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<link rel="stylesheet" href="${path }/resources/css/funding/list.css" />


<section id="section">
	<div class="parallax-window" data-parallax="scroll"
		data-image-src="${path }/resources/images/sample1.jpg">
		<h3>CREATE YOUR ROOM</h3>
	</div>
	<div id="search-area" class="container">
		<form action="" method="post">
			<select id="category" name="category" class="selectStyle">
				<option value="0">category</option>
				<option value="1">bed</option>
				<option value="2">couch / chair</option>
				<option value="3">table / desk</option>
				<option value="4">carpet / lug</option>
				<option value="5">storage</option>
				<option value="6">others</option>
			</select> 
			<select id="terms" name="terms" class="selectStyle">
				<option value="0">기간</option>
				<option value="1">진행중인 프로젝트</option>
				<option value="2">성사된 프로젝트</option>
			</select> 
			<select id="goals" name="goals" class="selectStyle">
				<option value="0">목표율</option>
				<option value="1">75% 이하</option>
				<option value="2">75%~100%</option>
				<option value="3">100% 이상</option>
			</select>
			<select id="parti" name="parti" class="selectStyle">
				<option value="0">참여자순</option>
				<option value="1">높은 참여</option>
				<option value="2">낮은 참여</option>
			</select>
			<select id="price" name="price" class="selectStyle">
				<option value="0">참여 가격순</option>
				<option value="1">높은 금액</option>
				<option value="2">낮은 금액</option>
			</select>
			<button type="submit">검색하기</button>
		</form>
	</div>
	<div class="container padding">
		<div class="row">
			<div class="col-md-2">
				<!-- 서브네비게이션 바 -->
				<ul class="category">
					<li><a href="#">bed</a></li>
					<li><a href="#">couch / chair</a></li>
					<li><a href="#">light</a></li>
					<li><a href="#">table / desk</a></li>
					<li><a href="#">carpet / lug</a></li>
					<li><a href="#">storage</a></li>
					<li><a href="#">others</a></li>
				</ul>
				<!-- 검색기능 -->
				<span class="block-span"> <input type="text" />
					<button>
						<img src="${path }/resources/images/search-icon.png" width="20px"
							height="18px" />
					</button>
				</span>
			</div>

			<div class="col-md-10">
				<div class="row">
					<div class="col-md-6" id="main-container">
						<div id="main" class="main product-container">
							<a href="${path }/funding/detail"> <img
								src="${path }/resources/images/signup.jpg" class="images" />
								<h1 class="text-deco text-position">Title and sub</h1>
								<p class="sub">Company or Designer</p>
								<h5 class="text-position">
									설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명</h5> <svg
									width="80%" height="3px" xmlns="http://w3.org/2000/svg"
									version="1.1" class="bar-container">
                                        <rect x="0" y="0" width="50%"
										height="3px" class="bar" />
                                    </svg>
								<div style="margin: 0 10%; height: 20px;">
									<i><img></i> <span><b>27</b>일 남음</span> <span><b>1,203,400</b>원</span>
									<span><b>200</b>%</span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-3 sub-container">
						<div class="sub-item">
							<a href=""> <img src="${path }/resources/images/signup.jpg"
								class="images" />
								<table>
									<thead>
										<th><h1 class="text-deco text-position">Title and
												sub</h1></th>
										<td>27일 남음</td>
									</thead>
									<tr>
										<th colspan="2">CATEGORY</th>
									</tr>
									<tbody>
										<th colspan="2"><svg width="100%" height="3px"
												xmlns="http://w3.org/2000/svg" version="1.1"
												class="bar-container">
			                                        <rect x="0" y="0" width="50%"
													height="3px" class="bar" />
			                                    </svg></th>
									</tbody>
									<tfoot>
										<th>1,203,400원</th>
										<td>200%</td>
									</tfoot>
								</table>
							</a>
						</div>
						<div class="sub-item">
							<a href=""> <img src="${path }/resources/images/signup.jpg"
								class="images" />
								<table>
									<thead>
										<th><h1 class="text-deco text-position">Title and
												sub</h1></th>
										<td>27일 남음</td>
									</thead>
									<tr>
										<th colspan="2">CATEGORY</th>
									</tr>
									<tbody>
										<th colspan="2"><svg width="100%" height="3px"
												xmlns="http://w3.org/2000/svg" version="1.1"
												class="bar-container">
			                                        <rect x="0" y="0" width="50%"
													height="3px" class="bar" />
			                                    </svg></th>
									</tbody>
									<tfoot>
										<th>1,203,400원</th>
										<td>200%</td>
									</tfoot>
								</table>
							</a>
						</div>
						<div class="sub-item">
							<a href=""> <img src="${path }/resources/images/signup.jpg"
								class="images" />
								<table>
									<thead>
										<th><h1 class="text-deco text-position">Title and
												sub</h1></th>
										<td>27일 남음</td>
									</thead>
									<tr>
										<th colspan="2">CATEGORY</th>
									</tr>
									<tbody>
										<th colspan="2"><svg width="100%" height="3px"
												xmlns="http://w3.org/2000/svg" version="1.1"
												class="bar-container">
			                                        <rect x="0" y="0" width="50%"
													height="3px" class="bar" />
			                                    </svg></th>
									</tbody>
									<tfoot>
										<th>1,203,400원</th>
										<td>200%</td>
									</tfoot>
								</table>
							</a>
						</div>
						<div class="sub-item">
							<a href=""> <img src="${path }/resources/images/signup.jpg"
								class="images" />
								<table>
									<thead>
										<th><h1 class="text-deco text-position">Title and
												sub</h1></th>
										<td>27일 남음</td>
									</thead>
									<tr>
										<th colspan="2">CATEGORY</th>
									</tr>
									<tbody>
										<th colspan="2"><svg width="100%" height="3px"
												xmlns="http://w3.org/2000/svg" version="1.1"
												class="bar-container">
			                                        <rect x="0" y="0" width="50%"
													height="3px" class="bar" />
			                                    </svg></th>
									</tbody>
									<tfoot>
										<th>1,203,400원</th>
										<td>200%</td>
									</tfoot>
								</table>
							</a>
						</div>

					</div>
					<div class="col-md-3 sub-container">
						<div class="sub-item">
							<a href=""> <img src="${path }/resources/images/signup.jpg"
								class="images" />
								<table>
									<thead>
										<th><h1 class="text-deco text-position">Title and
												sub</h1></th>
										<td>27일 남음</td>
									</thead>
									<tr>
										<th colspan="2">CATEGORY</th>
									</tr>
									<tbody>
										<th colspan="2"><svg width="100%" height="3px"
												xmlns="http://w3.org/2000/svg" version="1.1"
												class="bar-container">
			                                        <rect x="0" y="0" width="50%"
													height="3px" class="bar" />
			                                    </svg></th>
									</tbody>
									<tfoot>
										<th>1,203,400원</th>
										<td>200%</td>
									</tfoot>
								</table>
							</a>
						</div>
						<div class="sub-item">
							<a href=""> <img src="${path }/resources/images/signup.jpg"
								class="images" />
								<table>
									<thead>
										<th><h1 class="text-deco text-position">Title and
												sub</h1></th>
										<td>27일 남음</td>
									</thead>
									<tr>
										<th colspan="2">CATEGORY</th>
									</tr>
									<tbody>
										<th colspan="2"><svg width="100%" height="3px"
												xmlns="http://w3.org/2000/svg" version="1.1"
												class="bar-container">
			                                        <rect x="0" y="0" width="50%"
													height="3px" class="bar" />
			                                    </svg></th>
									</tbody>
									<tfoot>
										<th>1,203,400원</th>
										<td>200%</td>
									</tfoot>
								</table>
							</a>
						</div>
						<div class="sub-item">
							<a href=""> <img src="${path }/resources/images/signup.jpg"
								class="images" />
								<table>
									<thead>
										<th><h1 class="text-deco text-position">Title and
												sub</h1></th>
										<td>27일 남음</td>
									</thead>
									<tr>
										<th colspan="2">CATEGORY</th>
									</tr>
									<tbody>
										<th colspan="2"><svg width="100%" height="3px"
												xmlns="http://w3.org/2000/svg" version="1.1"
												class="bar-container">
			                                        <rect x="0" y="0" width="50%"
													height="3px" class="bar" />
			                                    </svg></th>
									</tbody>
									<tfoot>
										<th>1,203,400원</th>
										<td>200%</td>
									</tfoot>
								</table>
							</a>
						</div>
						<div class="sub-item">
							<a href=""> <img src="${path }/resources/images/signup.jpg"
								class="images" />
								<table>
									<thead>
										<th><h1 class="text-deco text-position">Title and
												sub</h1></th>
										<td>27일 남음</td>
									</thead>
									<tr>
										<th colspan="2">CATEGORY</th>
									</tr>
									<tbody>
										<th colspan="2"><svg width="100%" height="3px"
												xmlns="http://w3.org/2000/svg" version="1.1"
												class="bar-container">
			                                        <rect x="0" y="0" width="50%"
													height="3px" class="bar" />
			                                    </svg></th>
									</tbody>
									<tfoot>
										<th>1,203,400원</th>
										<td>200%</td>
									</tfoot>
								</table>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<div class="parallax" id="parallax2"></div>


<script>
	var main_offset = $("#main").offset(), parent = $("#main").parent(), position = $(
			"#main").position(), scrollTop = $("#main").scrollTop();
	$(window).scroll(function() {
		var bottom = parent.offset().top + parent.height();

		if ($(window).scrollTop() >= main_offset.top) {
			parentSize();
			$("#main").addClass("wrapper");
			$("#main").removeClass("attachBottom");
			if ($("#main").height() >= bottom - $(window).scrollTop()) {
				$("#main").removeClass("wrapper");
				$("#main").addClass("attachBottom");
			}
		} else {
			$("#main").removeClass("wrapper");
		}
	})
	function parentSize() {
		var pWidth = $("#main").parent().width();
		var pHeight = $("#main").parent().height() / 2;
		$("#main").width(pWidth);
		$("#main").height(pHeight);
	}
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />