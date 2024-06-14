<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
	<c:param name="content">
    	<h2>id：<c:out value="${task.id}" /> の編集ページ</h2>

        <form method="post" action="${pageContext.request.contextPath}/update">
    		<label for="content">タスク内容</label><br>
    		<input name="content" value="${task.content}"><br><br>
    		<button type="submit">登録</button>
    		<input type="hidden" name="_token" value="${_token}">
    	</form>
    	<div>
    		<p><a href="#" onclick="confirmDestroy();">このメッセージを削除する</a></p>
			<p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
    	</div>
		<form method="post" action="${pageContext.request.contextPath}/destroy">
			<input type="hidden" name="_token" value="${_token}">
		</form>
		<script>
			function confirmDestroy() {
				if(confirm("本当に削除してよろしいですか？")) {
							document.forms[1].submit();
				}
			}
		</script>
	</c:param>
</c:import>