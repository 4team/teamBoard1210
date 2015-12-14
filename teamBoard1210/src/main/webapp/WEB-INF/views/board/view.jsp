<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../include/header.jsp"%>
<title>조회 화면</title>
<div class="content-wrapper" style="padding: 100px">
<style>
table.type05 {
    border-collapse: separate;
    border-spacing: 1px;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    margin: 20px 10px;
}
table.type05 th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #efefef;
}
table.type05 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
</style>


<table class="type04">
    <tr>
        <th scope="row">Title</th>
        <td>${view.title}</td>
    </tr>
    <tr>
        <th scope="row">Writer</th>
        <td>${view.writer}</td>
    </tr>
    <tr>
        <th scope="row">Content</th>
        <td>${view.content}</td>
    </tr>
</table>


	<div>
		<form action="/board/list">
			<input type="submit" value="목록">
		</form>
	</div>


	<div>
		<form action="/board/modify">
			<input type="hidden" name="bno" value="${view.bno}"> 
			<input type="submit" value="수정">
		</form>
	</div>


	<div>
		<form action="/board/delete">
			<input type="hidden" name="bno" value="${view.bno}"> 
			<input type="submit" value="삭제">
		</form>
	</div>



</div>
<%@include file="../include/footer.jsp"%>
</body>
</html>