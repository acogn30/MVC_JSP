<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MySQL DB 查詢範例</title>

<!-- 引入 Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript">
debugger;
	let errMsg = '${errMsg}';
	if (errMsg != '') {
		alert(errMsg);
	}
</script>

</head>
<body class="container mt-4">

	<h1 class="mb-4">MySQL DB 查詢範例</h1>

	<!-- 表單 -->
	<form action="doQueryCity" method="post" class="mb-4">
		<div class="mb-3">
			<label for="countryCode" class="form-label">
				<span class="text-danger">*</span> Country Code
			</label>
			<input type="text" id="countryCode" name="countryCode" class="form-control" value="${countryCode }">
		</div>
		<div class="mb-3">
			<label for="district" class="form-label">District</label>
			<input type="text" id="district" name="district" class="form-control" value="${district }">
		</div>
		<button type="submit" class="btn btn-primary">送出</button>
	</form>

	<hr/>

	<!-- 表格 -->
	<table class="table table-bordered table-striped">
		<thead class="table-dark">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>CountryCode</th>
				<th>District</th>
				<th>Population</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${not empty cityRst }">
				<c:forEach items="${cityRst}" var="item" varStatus="status">
					<tr>
						<td>${item.ID }</td>
						<td>${item.Name }</td>
						<td>${item.CountryCode }</td>
						<td>${item.District }</td>
						<td>${item.Population }</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${empty cityRst}">
				<tr>
					<td colspan="5" class="text-center">No Data Available</td>
				</tr>
			</c:if>
		</tbody>
	</table>

</body>
</html>
