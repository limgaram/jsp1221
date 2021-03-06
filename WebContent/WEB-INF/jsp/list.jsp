<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="board.article.ArticleDao"%>
<%@ page import="board.article.Article"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

<c:if test = >
${loginedMember.nickname}님 반갑습니다!
</c:if>
<c:if test = >
<a href="/board/article?action=showLogin">로그인</a>
</c:if>
	<h2>게시물 목록</h2>

	<table border="1">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성일</td>
			<td>조회수</td>
		</tr>
		<!--  el 표현 -->

		<c:forEach var="article" items="${myData}">
			<tr>
				<td>${article.id}</td>
				<td><a href="/board/article?action=detail&id=${article.id}">${article.title}_${article.id}</a></td>
				<td>${article.nickname}</td>
				<td>${article.regDate}</td>
				<td>${article.hit}</td>
			</tr>
		</c:forEach>


	</table>
	<a href="/board/article?action=showAdd&mid=${loginedMember.id}">글쓰기</a>


</body>
</html>