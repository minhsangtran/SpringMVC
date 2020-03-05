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

				<div class="input-group">

					<input type="text" class="form-control" placeholder="Tìm kiếm ..."
						aria-label="Input group example" aria-describedby="btnGroupAddon2" />
					<div class="input-group-prepend">
						<div class="input-group-text" id="btnGroupAddon2"
							style="background-color: #0085A0; color: white;">OK</div>
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

				<div class="textCenterUppercase" id="marginBottomTopRight10">
					<span style="font-size: 24px">XEM THÔNG TIN DĂNG KÝ LỊCH</span>
				</div>


				<table class="table table-striped table-bordered" style="text-align: center;">
  <thead>
    <tr >
      <th scope="col" rowspan="2" >STT</th>
      <th scope="col" rowspan="2" >Họ Tên</th>
      <th scope="col" colspan="2" >Thứ 2</th>
      <th scope="col" colspan="2">Thứ 3</th>
      <th scope="col" colspan="2">Thứ 4</th>
      <th scope="col" colspan="2">Thứ 5</th>
      <th scope="col" colspan="2">Thứ 6</th>
      <th scope="col" colspan="2">Thứ 7</th>
      <th scope="col" colspan="2">chủ nhật</th>
    </tr>
    <tr >
      
      <th scope="col">S</th>
      <th scope="col">C</th>
      <th scope="col">S</th>
      <th scope="col">C</th>
      <th scope="col">S</th>
      <th scope="col">C</th>
      <th scope="col">S</th>
      <th scope="col">C</th>
      <th scope="col">S</th>
      <th scope="col">C</th>
      <th scope="col">S</th>
      <th scope="col">C</th>
      <th scope="col">S</th>
      <th scope="col">C</th>
      
      
      
    </tr>
    
  </thead>
  <tbody>
  <c:forEach var="registration" items="${registrations}">
    <tr>
      <th scope="row">1</th>
      <td>${registration.getUsers().getUsername()}</td>
		<td> <c:if test="${registration.getMorning2()==true}"> x </c:if> </td>
		<td> <c:if test="${registration.getAfternoon2()==true}"> x </c:if> </td>
		<td> <c:if test="${registration.getMorning3()==true}"> x </c:if> </td>
		<td> <c:if test="${registration.getAfternoon3()==true}"> x </c:if> </td>
		<td> <c:if test="${registration.getMorning4()==true}"> x </c:if> </td>
		<td> <c:if test="${registration.getAfternoon4()==true}"> x </c:if> </td>
		<td> <c:if test="${registration.getMorning5()==true}"> x </c:if> </td>
		<td> <c:if test="${registration.getAfternoon5()==true}"> x </c:if> </td>
		<td> <c:if test="${registration.getMorning6()==true}"> x </c:if> </td>
		<td> <c:if test="${registration.getAfternoon6()==true}"> x </c:if> </td>
		<td> <c:if test="${registration.getMorning7()==true}"> x </c:if> </td>
		<td> <c:if test="${registration.getAfternoon7()==true}"> x </c:if> </td>
		<td> <c:if test="${registration.getMorning8()==true}"> x </c:if> </td>
		<td> <c:if test="${registration.getAfternoon8()==true}"> x </c:if> </td>
      
     
    </tr>
    </c:forEach>
  </tbody>
</table>




			</div>

		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>