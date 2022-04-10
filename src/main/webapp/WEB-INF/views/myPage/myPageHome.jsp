<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>마이페이지 | 머신킹덤</title>

<%@ include file="../include/myPageInclude/myPageCSS.jsp"%>

</head>
<body class="hold-transition sidebar-mini">


	<div class="wrapper">

		<!-- Navbar -->
		<%@ include file="../include/myPageInclude/myPageNavbar.jsp"%>

		<!-- Sidebar -->
		<%@ include file="../include/myPageInclude/myPageSidebar.jsp"%>
		<!-- body title -->
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>마이페이지</h1>
						</div>
						<div class="col-sm-6">
							<!-- <ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">페이지이동</a></li>
								<li class="breadcrumb-item active">서브 페이지이동->새로고침</li>
							</ol> -->
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /body title -->

			<section>
				<div class="col-md-12" id='profileparent'>
					<!-- Widget: user widget style 1 -->
					<div class="card card-widget widget-user" id='userprofile'>
						<!-- Add the bg color to the header using any of the bg-* classes -->
						<div class="widget-user-header" id='bg-info-color'>
							<h3 class="widget-user-username" id='bg-write-color'>내 정보</h3>
						</div>
						<div class="widget-user-image">
							<c:set var="ProfileImg"
								value="${account.account_realProfileImg }" />
							<c:choose>
								<c:when test="${account.account_realProfileImg eq '0'}">
									<img class="img-circle elevation-2"
										src="../resources/upload/default.jpg" alt="User Avatar">
								</c:when>
								<c:when test="${account.account_realProfileImg eq ProfileImg}">
									<img class="img-circle elevation-2"
										src="../resources/upload/${account.account_realProfileImg }"
										alt="User Avatar">
								</c:when>
							</c:choose>
						</div>
						<div class="card-footer">
							<div class="row">
								<div class="col-sm-4 border-right">
									<div class="description-block">
										<h5 class="description-header">회원이름</h5>
										<span class="description-text">${account.account_Name }</span>
									</div>
									<!-- /.description-block -->
								</div>
								<!-- /.col -->
								<div class="col-sm-4 border-right">
									<div class="description-block">

										<h5 class="description-header">이메일 주소</h5>
										<span class="description-text">${account.account_Email  }</span>

									</div>
									<!-- /.description-block -->
								</div>
								<!-- /.col -->
								<div class="col-sm-4">
									<div class="description-block">
										<h5 class="description-header">가입날짜</h5>
										<span class="description-text">${account.account_Date }</span>

									</div>
									<!-- /.description-block -->
								</div>
								<!-- /.col -->
							</div>
							<!-- /.row -->
						</div>
					</div>
					<!-- /.widget-user -->
					
				</div>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<!-- Default box -->
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">프로필</h3>

									<div class="card-tools">
										<button type="button" class="btn btn-tool"
											data-card-widget="collapse" title="Collapse">
											<i class="fas fa-minus"></i>
										</button>
										<!--  <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                  </button> -->
									</div>
								</div>
								<%-- <form action="myPageUpdate.do?account_Id=${account.account_Id}"
									method="post"> --%>
								<input name="account_Id" type="hidden"
									value="${sessionScope.logname }" />
								<div class="card-body">
									<!-- <input type="text"> -->

									<div class="form-group">
										<label for="exampleInputEmail1">이름</label> <input type="text"
											class="form-control" id="exampleInputEmail1" placeholder="이름"
											name="account_Name" value='${account.account_Name }' readonly>
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">아이디</label> <input
											type="text" class="form-control" id="exampleInputPassword1"
											placeholder="아이디" value='${sessionScope.logname }' readonly>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">전화번호</label> <input type="tel"
											class="form-control" id="exampleInputEmail1"
											name="account_Tel" value='${account.account_Tel }'
											placeholder="전화번호" readonly>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">주소</label> <input type="text"
											class="form-control" id="exampleInputEmail1"
											value='${account.account_Addr1 }' name="addr1" readonly>
									</div>
									<div class="form-group">

										<input type="text" class="form-control"
											id="exampleInputEmail2" value='${account.account_Addr2 }'
											name="addr2" readonly>
									</div>
									<div class="form-group">

										<input type="text" class="form-control"
											id="exampleInputEmail3" value='${account.account_Addr3 }'
											name="addr3" readonly>
									</div>
									<!-- 테이블1 끝 -->

									<a href="myPageUpdate.do?account_Id=${account.account_Id}">
										<button class='btn btn-primary' id='myPagebtn'
											style="float: right;">회원정보수정</button>
									</a>


								</div>

								<!-- </form> -->
								<!-- /.card-body -->

								<!-- /.card-footer-->
							</div>
							<!-- /.card -->
						</div>
						<!-- 프로필 테이블 -->

						<!-- 테이블2 시작 -->
						<!-- <div class="row"> -->
						<div class="col-md-6">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">주문내역</h3>

									<div class="card-tools">
										<div class="input-group input-group-sm" style="width: 150px;">
											<input type="text" name="table_search"
												class="form-control float-right" placeholder="검색">

											<div class="input-group-append">
												<button type="submit" class="btn btn-default">
													<i class="fas fa-search"></i>
												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- /.card-header -->
								<div class="card-body table-responsive p-0"
									style="height: 530px;">
									<table class="table table-hover text-nowrap">
										<thead>
											<tr>
												<th>주문번호</th>
												<th>상품명</th>
												<th>주문날짜</th>
												<th>주문상태</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${account_orderList }" var="board">
											<tr>
												<td>${board.orderdata_seq}</td>
												<td>${board.product_Name}</td>
												<td>${board.order_date}</td>
												<td>${board.state}</td>
											</tr>
												</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- /.card-body -->
								<!-- </div> -->
								<!-- /.card -->
							</div>
						</div>
						<!-- 테이블2 끝 -->
					</div>
					<!-- /.container-fluid -->
				</div>
				<!-- row의 끝 -->
			</section>
			<!-- /.content -->

		</div>
		<!-- /.content-wrapper -->

		<!-- Main Footer -->
		<%@ include file="../include/myPageInclude/myPageFooter.jsp"%>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->
	<%@ include
		file="../include/myPageInclude/myPageScript/myPageScript.jsp"%>
	<%@ include file="../include/myPageInclude/myPageScript/myPageList.jsp"%>
	
</body>
</html>
