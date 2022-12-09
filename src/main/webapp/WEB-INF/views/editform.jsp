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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
    <form:form modelAttribute="beverageVO" method="post" action="./editok" enctype="multipart/form-data">
        <form:hidden path="seq" />

        <table id>
            <p>음료수의 정보를 수정하세요~</p>
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
            <tr><td>음료 사진</td><td><form:input type="file" path="file"/></td></tr>
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
