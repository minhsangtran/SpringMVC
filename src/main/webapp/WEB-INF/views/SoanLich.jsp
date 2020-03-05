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



				<div class="textCenterUppercase" id="marginBottomTopRight10">
					<span style="font-size: 24px">SOẠN THỜI KHÓA BIỂU</span>
				</div>
				
				
				
				
				<div>
					<form action="/jwat/xemlich" method="post">
						<div class="input-group-prepend"
							style="margin-bottom: 2px; margin-top: 4px;">
							<input id="idinputWeek"  type="week" name="weekSoanLich"
								style="width: 200px; height: 28px; border-radius: 4px; border: 1px solid #999;" />
							<button  type="submit" class="btn btn-primary btnweekOk"
								style="font-size: 10px; margin-left: 2px; margin-bottom: 4px;">OK</button>
	
						</div>
					</form>
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
							<th scope="col" data-toggle="modal" class="thSoanLich" buoi="s2"
								data-target="#exampleModalCenter">${schedule.get("s2").getNoiDung() } <br />
								${schedule.get("s2").getSoLuong() } <br />${schedule.get("s2").getPhong()}</th>
							<th scope="col" data-toggle="modal" class="thSoanLich" buoi="s3"
								data-target="#exampleModalCenter" >${schedule.get("s3").getNoiDung() } <br />
								${schedule.get("s3").getSoLuong() } <br />${schedule.get("s3").getPhong()}
							</th>
							<th scope="col" data-toggle="modal" class="thSoanLich" buoi="s4"
								data-target="#exampleModalCenter">${schedule.get("s4").getNoiDung() } <br />
								${schedule.get("s4").getSoLuong() } <br />${schedule.get("s4").getPhong()}
							</th>
							<th scope="col" data-toggle="modal" class="thSoanLich" buoi="s5"
								data-target="#exampleModalCenter">${schedule.get("s5").getNoiDung() } <br />
								${schedule.get("s5").getSoLuong() } <br />${schedule.get("s5").getPhong()}
							</th>
							<th scope="col" data-toggle="modal" class="thSoanLich" buoi="s6"
								data-target="#exampleModalCenter">${schedule.get("s6").getNoiDung() } <br />
								${schedule.get("s6").getSoLuong() } <br />${schedule.get("s6").getPhong()}
							</th>
							<th scope="col" data-toggle="modal" class="thSoanLich" buoi="s7"
								data-target="#exampleModalCenter">${schedule.get("s7").getNoiDung() } <br />
								${schedule.get("s7").getSoLuong() } <br />${schedule.get("s7").getPhong()}
								
								</th>
							<th scope="col" data-toggle="modal" class="thSoanLich" buoi="s8"
								data-target="#exampleModalCenter">${schedule.get("s8").getNoiDung() } <br />
								${schedule.get("s8").getSoLuong() } <br />${schedule.get("s8").getPhong()}
								
								</th>

						</tr>
						<tr>
							<th colspan="8"></th>
						</tr>
						<tr>
							<th scope="col">Chiều</th>
							<th scope="col" data-toggle="modal" class="thSoanLich" buoi="c2"
								data-target="#exampleModalCenter">${schedule.get("c2").getNoiDung() } <br />
								${schedule.get("c2").getSoLuong() } <br />${schedule.get("c2").getPhong()}
							</th>
							<th scope="col" data-toggle="modal" class="thSoanLich" buoi="c3"
								data-target="#exampleModalCenter">${schedule.get("c3").getNoiDung() } <br />
								${schedule.get("c3").getSoLuong() } <br />${schedule.get("c3").getPhong()}
							</th>
							<th scope="col" data-toggle="modal" class="thSoanLich" buoi="c4"
								data-target="#exampleModalCenter">${schedule.get("c4").getNoiDung() } <br />
								${schedule.get("c4").getSoLuong() } <br />${schedule.get("c4").getPhong()}
								</th>
							<th scope="col" data-toggle="modal" class="thSoanLich" buoi="c5"
								data-target="#exampleModalCenter">${schedule.get("c5").getNoiDung() } <br />
								${schedule.get("c5").getSoLuong() } <br />${schedule.get("c5").getPhong()}
								</th>
							<th scope="col" data-toggle="modal" class="thSoanLich" buoi="c6"
								data-target="#exampleModalCenter">${schedule.get("c6").getNoiDung() } <br />
								${schedule.get("c6").getSoLuong() } <br />${schedule.get("c6").getPhong()}
							</th>
							<th scope="col" data-toggle="modal" class="thSoanLich" buoi="c7"
								data-target="#exampleModalCenter">${schedule.get("c7").getNoiDung() } <br />
								${schedule.get("c7").getSoLuong() } <br />${schedule.get("c7").getPhong()}
								</th>
							<th scope="col" data-toggle="modal" class="thSoanLich" buoi="c8"
								data-target="#exampleModalCenter">${schedule.get("c8").getNoiDung() } <br />
								${schedule.get("c8").getSoLuong() } <br />${schedule.get("c8").getPhong()}
								</th>
						</tr>


					</tbody>
				</table>
				<div>
					<h4 style="color: red;">Ghi chú:</h4>
					<li><textarea name="noiDung" class="form-control" rows="5"
										style="width: 50%"></textarea></li>
										
					<button type="button" class="btn btn-primary" style="margin-top: 10px">Lưu Ghi chú</button>
				
				</div>
				


			</div>

		</div>
	</div>












	<!-- Button trigger modal -->


	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
		
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Nội Dung</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				
				<form action="/jwat/themlich" method="post">
				<div class="modal-body">


					<div class="card">

						<div class="card-body">
							
								<label class="mr-sm-2">Nội dung: </label> 
								<input name="noiDung" type="text" class="form-control mb-2 mr-sm-2"  style="width: 400px"> 
								<label class="mr-sm-2">Số lượng: </label> 
								<input name="soLuong" type="number" class="form-control mb-2 mr-sm-2" >
								<label class="mr-sm-2">Phòng: </label> 
								<input name="phong" type="text" class="form-control mb-2 mr-sm-2" >
								<label class="mr-sm-2">Ghi chú: </label> 
								<input name="ghiChu" type="text" class="form-control mb-2 mr-sm-2" >
								<input id="idTuan" name="idTuan" type="text" style="display: none;"
									 />
								<input id="idBuoi" name="idBuoi" type="text" style="display: none;"
									 />
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Lưu</button>
				</div>
				</form>
			</div>
			
		</div>
	</div>











	<jsp:include page="footer.jsp" />
</body>
</html>