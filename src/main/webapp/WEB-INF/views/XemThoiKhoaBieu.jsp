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
							aria-expanded="false"> Trang </a>
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


			<div class="col-md-12">
				<form action="/jwat/xemlichuser" method="post">
						<div class="input-group-prepend"
							style="margin-bottom: 2px; margin-top: 4px;">
							<input id="idinputWeek"  type="week" name="weekSoanLich"
								style="width: 200px; height: 28px; border-radius: 4px; border: 1px solid #999;" 
								value="${week}"/>
							<button  type="submit" class="btn btn-primary btnweekOk"
								style="font-size: 10px; margin-left: 2px; margin-bottom: 4px;">Xem</button>
						</div>
					</form>

				<div class="textCenterUppercase" id="marginBottomTopRight10">
					<span style="font-size: 24px">THỜI KHÓA BIỂU</span>
				</div>


				<table class="table table-striped table-bordered"
					style="text-align: center;">
					<thead>
						<tr>
							<th scope="col">Tuần</th>

							<th scope="col">Thứ 2</th>
							<th scope="col">Thứ 3</th>
							<th scope="col">Thứ 4</th>
							<th scope="col">Thứ 5</th>
							<th scope="col">Thứ 6</th>
							<th scope="col">Thứ 7</th>
							<th scope="col">chủ nhật</th>
						</tr>


					</thead>
					<tbody>
						<tr>
							<th scope="col">Sáng</th>
							<th scope="col">${schedule.get("s2").getNoiDung() } <br />
								${schedule.get("s2").getSoLuong() } <br />${schedule.get("s2").getPhong()}</th>
							<th scope="col">${schedule.get("s3").getNoiDung() } <br />
								${schedule.get("s3").getSoLuong() } <br />${schedule.get("s3").getPhong()}
							</th>
							<th scope="col">${schedule.get("s4").getNoiDung() } <br />
								${schedule.get("s4").getSoLuong() } <br />${schedule.get("s4").getPhong()}
							</th>
							<th scope="col">${schedule.get("s5").getNoiDung() } <br />
								${schedule.get("s5").getSoLuong() } <br />${schedule.get("s5").getPhong()}
							</th>
							<th scope="col">${schedule.get("s6").getNoiDung() } <br />
								${schedule.get("s6").getSoLuong() } <br />${schedule.get("s6").getPhong()}
							</th>
							<th scope="col">${schedule.get("s7").getNoiDung() } <br />
								${schedule.get("s7").getSoLuong() } <br />${schedule.get("s7").getPhong()}</th>
							<th scope="col">${schedule.get("s8").getNoiDung() } <br />
								${schedule.get("s8").getSoLuong() } <br />${schedule.get("s8").getPhong()}</th>

						</tr>
						<tr>
							<th colspan="8"></th>
						</tr>
						<tr>
							<th scope="col">Chiều</th>
							<th scope="col">${schedule.get("c2").getNoiDung() } <br />
								${schedule.get("c2").getSoLuong() } <br />${schedule.get("c2").getPhong()}
							</th>
							<th scope="col">${schedule.get("c3").getNoiDung() } <br />
								${schedule.get("c3").getSoLuong() } <br />${schedule.get("c3").getPhong()}
							</th>
							<th scope="col">${schedule.get("c4").getNoiDung() } <br />
								${schedule.get("c4").getSoLuong() } <br />${schedule.get("c4").getPhong()}</th>
							<th scope="col">${schedule.get("c5").getNoiDung() } <br />
								${schedule.get("c5").getSoLuong() } <br />${schedule.get("c5").getPhong()}</th>
							<th scope="col">${schedule.get("c6").getNoiDung() } <br />
								${schedule.get("c6").getSoLuong() } <br />${schedule.get("c6").getPhong()}
							</th>
							<th scope="col">${schedule.get("c7").getNoiDung() } <br />
								${schedule.get("c7").getSoLuong() } <br />${schedule.get("c7").getPhong()}</th>
							<th scope="col">${schedule.get("c8").getNoiDung() } <br />
								${schedule.get("c8").getSoLuong() } <br />${schedule.get("c8").getPhong()}</th>
						</tr>


					</tbody>
				</table>
				<div>
					<h4 style="color: red;">Ghi chú:</h4>
					<li>Các bạn nhớ đi trước 8h30 nhé!</li>
				</div>
				<div style="text-align: right;">
					<button type="button" class="btn btn-primary">Xuất File</button>
				</div>



			</div>

		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>