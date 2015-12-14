<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../include/header.jsp"%>
<title>등록 화면</title>
<div class="content-wrapper" style="padding: 100px">
	<!-- <form method="post"> -->
	<div align="center">
		<label>Title</label>
		 <input type="text" name="title">
	</div>
	<div align="center">
		<label>Writer</label> 
		<input type="text" name="writer">
	</div>
	<div align="center">
		<label>Content</label> 
		<input type="text" name="content">
	</div>

	<input type="submit" value="저장">
	<!-- </form> -->

	<form action="/board/list">
		<input type="submit" value="취소">
	</form>

</div>
<%@include file="../include/footer.jsp"%>

</body>
</html>