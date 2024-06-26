<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
	<c:param name="content">
		<h2>新規タスク登録</h2>
		
    	<form method="post" action="${pageContext.request.contextPath}/create">
    		<label for="content">タスク内容</label><br>
    		<input type="text" name="content" value="${task.content}"><br><br>
    		<button type="submit">登録</button>
    		<input type="hidden" name="_token" value="${_token}">
    	</form>
    	<p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
	</c:param>
</c:import>