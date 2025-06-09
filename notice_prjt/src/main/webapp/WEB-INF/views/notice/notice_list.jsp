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

        <%-- if -->
        <c:choose>

            <%-- (값): 공지사항 리스트가 비어있지 않은 경우 -->
            <c:when test="${not empty noticesList}">

                <%-- noticesList의 각 항목을 var값"notices"라는 이름으로 반복 출력 -->
                <c:forEach var="notices" items="${noticesList}" varStatus="status">
                    <tr align="center">
                        <td>${notices.n_idx}</td>
                        <td>${notices.n_category}</td>
                        <td align="left">${notices.n_title}</td>
                        <td>${notices.n_regdate}</td>
                    </tr>
                </c:forEach>
            </c:when>

            <c:otherwise>
            <%-- 공지사항이 없을 경우 -->
                <tr>
                    <td colspan="4" align="center">등록된 공지사항이 없습니다.</td>
                </tr>
            </c:otherwise>

        </c:choose>

    </table>
</body>
</html>
