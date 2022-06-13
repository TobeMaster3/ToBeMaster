<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="col-md-10 offset-md-1 col-lg-3 offset-lg-0">
		<div class="sidebar">
		
			<!-- 검색 Part -->
			<div class="widget search p-0">
				<div class="input-group">
					<input type="text" class="form-control" id="expire" placeholder="Search...">
					<span class="input-group-addon"><i class="fa fa-search"></i></span>
				</div>
			</div>

			<!-- 카테고리 메뉴도 Part -->
			<div class="widget category">
				<!-- Widget Header -->
				<h5 class="widget-header">카테고리</h5>
				<ul class="category-list">
					<li><a href="/community/camplog.do">캠핑로그 <span class="float-right"></span></a></li>
					<li><a href="/community/camptip.do">캠핑꿀팁 <span class="float-right"></span></a></li>
					<li><a href="/community/campgo.do">캠핑가자 <span class="float-right"></span></a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>