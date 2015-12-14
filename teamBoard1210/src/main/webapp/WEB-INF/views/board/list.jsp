<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../include/header.jsp"%>

<title>리스트 화면</title>
<div class="content-wrapper" style="padding: 100px">
<style>
table.list {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	margin: 20px 10px;
}

table.list th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
}

table.list td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
}

th, td {
	padding: 6px;
	text-align: center;
}
</style>


	<table class="list" align="center">
		<tr>
			<th scope="row">번호</th>
			<th scope="row">제목</th>
			<th scope="row">작성자</th>
			<th scope="row">작성일</th>
			<th scope="row">추천수</th>
			<th scope="row">조회수</th>
		</tr>

		<c:forEach items="${list}" var="list">
			<tr>
				<td>${list.bno}</td>
				<td><a href="/board/view?bno=${list.bno}">${list.title}</a></td>
				<td>${list.writer}</td>
				<td>${list.regdate}</td>
				<td>${list.lcnt}</td>
				<td>${list.vcnt}</td>
			</tr>
		</c:forEach>
	</table>

	<div>
		<form action="/board/create">
			<input type="submit" value="등록">
		</form>
	</div>

</div>

<%@include file="../include/footer.jsp"%>
</body>
</html>