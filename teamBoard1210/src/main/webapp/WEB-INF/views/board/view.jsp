<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../include/header.jsp"%>
<title>조회 화면</title>
<div class="content-wrapper" style="padding:100px">

<table>
<tr>
<th>Title</th>
<th>Writer</th>
<th>Content</th>
</tr>

<tr>
<td>${view.title}</td>
<td>${view.writer}</td>
<td>${view.content}</td>
</tr>
</table>

</div>
<%@include file="../include/footer.jsp"%>
</body>
</html>