<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
    request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>공지사항 게시판</title>
</head>
<body>
    <h1 align="center">공지사항</h1>

    <table align="center" border="1" width="80%" style="margin-top:20px">

        <tr height="10" align="center" bgcolor="lightgreen">
            <td>번호</td>
            <td>구분</td>
            <td>제목</td>
            <td>등록일</td>
        </tr>

        <c:choose>

            <c:when test="${not empty notices}">
                <c:forEach var="notice" items="${notices}" varStatus="status">
                    <tr align="center">
                        <td>${notice.n_idx}</td>
                        <td>${notice.n_category}</td>
                        <td align="left">${notice.n_title}</td>
                        <td>
                            <fmt:formatDate value="${notice.n_regdate}" pattern="yyyy.MM.dd" />
                        </td>
                    </tr>
                </c:forEach>
            </c:when>

            <c:otherwise>
                <tr>
                    <td colspan="4" align="center">등록된 공지사항이 없습니다.</td>
                </tr>
            </c:otherwise>

        </c:choose>

    </table>
</body>
</html>
