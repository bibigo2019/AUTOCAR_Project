<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib tagdir="/WEB-INF/tags/util" prefix="iot"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<!-- begin page-header -->
<h1 class="page-header" style="color: white;">
	불법 주정차 이력조회 <small>불법 주정차 관리 리스트 </small>
</h1>
<!-- end page-header -->

<script>
	console.log('${detailList}');
</script>

<div class="container">
	<!-- begin #content -->
	<div id="content" class="content">

		<div class="row">
			<!-- begin col-12 -->
			<div class="col-md-12">
				<!-- begin panel -->
				<div class="panel panel-inverse">
					<div class="panel-heading">
						<h4 class="panel-title">Data Table</h4>
					</div>
					<div class="panel-body">
						<table id="data-table" class="table table-striped table-bordered">

							<thead>
								<tr role="row">
									<th>ID</th>
									<th>District</th>
									<th>Car Id</th>
									<th>ParkDate</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach var="detailVO" items="${pi.list}">
									<tr>
										<td>${detailVO.id}</td>
										<td>${detailVO.district}</td>
										<td>${detailVO.carId}</td>
										<td><fmt:formatDate value="${detailVO.parkDate}"
												pattern="yyyy년  MM월  dd일  mm분  ss초" /></td>
										<%-- <td>${detailVO.img}</td> --%>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<nav align="center">
							<ul class="pagination">
								<iot:pagination pageInfo="${pi}" />
							</ul>
						</nav>
					</div>
				</div>
				<!-- end panel -->
			</div>
			<!-- end col-12 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end #content -->









	<%-- <table class="table table-dark">
		<thead align="center">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">District</th>
				<th scope="col">CarId</th>
				<th scope="col">ParkDate</th>
				<th scope="col">img</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="detailVO" items="${pi.list}">
				<tr>
					<td>${detailVO.id}</td>
					<td>${detailVO.district}</td>
					<td>${detailVO.carId}</td>
					<td><fmt:formatDate value="${detailVO.parkDate}"
							pattern="yyyy년  MM월  dd일  mm분  ss초" /></td>
					<td>${detailVO.img}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


	<nav aria-label="Page navigation example" align="center">
		<ul class="pagination">
			<iot:pagination pageInfo="${pi}" />
		</ul>
	</nav> --%>

</div>