<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
		<nav class="navbar navbar-expand-lg navbar-light bg-light myNavbar">
			<a class="navbar-brand" href="#">JWAT</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
				</ul>
				<form class="form-inline my-2 my-lg-0">

					<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
							href="/jwat/themthongbao">Admin <span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="/jwat/">Thông báo <span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Lịch </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="/jwat/dangkylichhoc">Đăng ký lịch train</a>

								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="/jwat/xemthoikhoabieu">Xem thời
									khóa biểu</a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">Trang</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="/jwat/taikhoan">Tài khoản</a>

								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="/jwat/dangnhap">Đăng xuất</a>
							</div></li>

						<li class="nav-item"><a class="nav-link disabled" href="#"
							tabindex="-1" aria-disabled="true" id="avatar">T </a></li>
					</ul>
				</form>
			</div>
			<div></div>
		</nav>
	</div>
	<div class="container-fluid">

		<div class="row">
			<div class="col-md-7"></div>
			<div class="col-md-5" id="marginBottomTopRight10">
				<div class="row">
					<div class="col-md-4">

						
					</div>

					<div class="col-md-8">
						
					</div>
				</div>

			</div>
		</div>



		<div class="row">

			<div class="col-md-2">
				<ul class="list-group">
					<li
						class="list-group-item d-flex justify-content-between align-items-center list-group-item-action">
						<div>
							<a href="/jwat/themthongbao" style="color: black;">THÔNG BÁO</a>
						</div>
					</li>
					<li
						class="list-group-item d-flex justify-content-between align-items-center list-group-item-action">
						<div>
							<a href="/jwat/danhsachtaikhoan" style="color: black;">DANH SÁCH THÀNH VIÊN</a>
						</div>
					</li>
					<li
						class="list-group-item d-flex justify-content-between align-items-center list-group-item-action">
						<div>
							<a href="/jwat/soanlich" style="color: black;">SOẠN THỜI KHOÁ BIỂU</a>
						</div>
					</li>
					<li
						class="list-group-item d-flex justify-content-between align-items-center list-group-item-action">
						<div>
							<a href="/jwat/xemthongtindangkylich" style="color: black;">XEM
								THÔNG TIN ĐĂNG KÝ LỊCH</a>
						</div>
					</li>
					<li
						class="list-group-item d-flex justify-content-between align-items-center list-group-item-action">
						<div>
							<a href="/jwat/taikhoanchoduyet" style="color: black;">TÀI
								KHOẢN CHỜ DUYỆT</a>
						</div>
					</li>
					<li
						class="list-group-item d-flex justify-content-between align-items-center list-group-item-action">
						<div>
							<a href="/jwat/diemdanh" style="color: black;">ĐIỂM DANH</a>
						</div>
					</li>
					<li
						class="list-group-item d-flex justify-content-between align-items-center list-group-item-action">
						<div>
							<a href="/jwat/thongke" style="color: black;">THỐNG KÊ</a>
						</div>
					</li>
				</ul>

			</div>



			<div class="col-md-10">
				<div class="row">


					<div class="col-md-12">

						<div id="marginBottomTopRight10" style="text-align: left:;">
							<span style="font-size: 24px; color: #115D9D;">Thông báo</span>
						</div>
						<div id="marginBottomTopRight10" style="text-align: left:;">
							<span style="font-size: 14px; color: #969696;">04/1/2019</span>
						</div>
						<div id="marginBottomTopRight10" style="text-align: left:;">
							<span style="font-size: 20px; color: rgba(17, 93, 157, 0.8);">${chitietthongbao.getTitle() }</span>
						</div>
						<div id="marginBottomTopRight10" style="text-align: left:;">
							<span style="font-size: 20px; color: rgba(43, 43, 43, 0.8);">${chitietthongbao.getContent() }
							</span>
						</div>
						<div id="marginBottomTopRight10"
							style="text-align: left; text-transform: uppercase;">
							<span
								style="font-size: 20px; color: rgba(43, 43, 43, 0.8); font-weight: bold; font-style: italic;">
								THỜI HẠN: </span>
						</div>
						<div id="marginBottomTopRight10"
							style="text-align: left; text-transform: uppercase;">

							<span
								style="font-size: 20px; color: rgba(43, 43, 43, 0.8); ">
								${chitietthongbao.getDeadline() } </span>
						</div>
						<div id="marginBottomTopRight10"
							style="text-align: left; text-transform: uppercase;">
							<span
								style="font-size: 20px; color: rgba(43, 43, 43, 0.8); font-weight: bold;font-style: italic;">
								LƯU Ý: </span>
						</div>
						<div id="marginBottomTopRight10" style="text-align: left:;">
							<span style="font-size: 20px; color: rgba(43, 43, 43, 0.8);">
								${chitietthongbao.getNote() } </span>
						</div>
						<div id="marginBottomTopRight10"
							style="text-align: left; text-transform: uppercase;">
							<span
								style="font-size: 20px; color: rgba(43, 43, 43, 0.8);font-style: italic;">
								TRÂN TRỌNG. </span>
						</div>
					</div>

				</div>
			</div>




		</div>




	</div>






























	<jsp:include page="footer.jsp" />
</body>
</html>