<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../include/header.jsp"%>

<title>수정 화면</title>
<div class="content-wrapper" style="padding: 100px">
	<form method="post">
		<input type="hidden" name="bno" value="${board.bno}">
		<div align="center">
			<label>Title</label> 
			<input type="text" name="title" value="${board.title}"> 
			<label>Writer</label> 
			<input type="text" name="writer" value="${board.writer}"> 
			<label>Title</label>
			<input type="text" name="content" value="${board.content}">
		</div>
		<input type="submit" value="수정">
	</form>

	<form action="/board/view">
		<input type="hidden" name="bno" value="${board.bno}"> <input
			type="submit" value="취소">
	</form>

</div>
<%@include file="../include/footer.jsp"%>
</body>
</html>