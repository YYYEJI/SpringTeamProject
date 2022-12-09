<%--
  Created by IntelliJ IDEA.
  User: song-yeji
  Date: 2022/12/01
  Time: 6:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit</title>
</head>
<body>
    <form:form modelAttribute="beverageVO" method="get" action="./editok">
        <form:hidden path="seq" />

<%--        <input type="text" name="id" value="${param.id}"/>--%>
        <table id>
            <tr>
                <td>
                    <label for="category">음료 종류:</label>
                </td>
                <td>
                    <select name="category" id="category">
                        <option value="">—Please choose an option—</option>
                        <option value="soda">탄산</option>
                        <option value="ion">이온</option>
                        <option value="fruit">과일주스</option>
                        <option value="tea">차</option>
                        <option value="coffee">커피</option>
                        <option value="milk">우유</option>
                    </select>
                </td>
            </tr>
            <tr><td>음료 이름:</td><td><form:input path="name"/></td></tr>
<%--            <tr><td>음료 사진</td><td><input ="photo" name="photo"/></td></tr>--%>
            <tr><td>음료 가격:</td><td><form:input path="price"/></td></tr>
            <tr><td>새로 들어온 음료 개수:</td><td><form:input path="newDrinkNum"/></td></tr>
            <tr><td>유통기한:</td><td><form:input path="expiration"/></td></tr>
            <tr><td>판매기업:</td><td><form:input path="company"/></td></tr>
        </table>
        <button type="submit">수정하기</button>
        <button type="button" onclick="history.back()">취소하기</button>
    </form:form>

</body>
</html>
