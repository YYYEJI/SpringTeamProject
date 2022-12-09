<%--
  Created by IntelliJ IDEA.
  User: song-yeji
  Date: 2022/12/01
  Time: 7:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <link rel="stylesheet" type="text/css" href=<c:url value="/resources/css/list.css"/>
   <meta charset="utf-8">
    <title>List</title>

</head>
<script>
    function delete_ok(id) {
        var a = confirm("정말로 삭제하겠습니까?");
        if(a) location.href='./deleteok/' + id;
    }
</script>
<body>
    <p class="list-title">Welecome to Admin page ~</p>
    <table border="1">

        <tr style="background-color: lavenderblush">
            <th>ID</th>
            <th>Catagory</th>
            <th>Name</th>
            <th>Photo</th>
            <th>Price</th>
            <th>Number of Drink</th>
            <th>Expiration</th>
            <th>Company</th>
            <th>Date</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.category}</td>
            <td>${u.name}</td>
            <td><img src="${pageContext.request.contextPath}/resources/img/${u.getPhoto()}" width="150px" height="100px"></td>
            <td>${u.price}</td>
            <td>${u.newDrinkNum}</td>
            <td>${u.expiration}</td>
            <td>${u.company}</td>
            <td>${u.regdate}</td>
            <td><a href="./editform?id=${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
        </tr>
    </c:forEach>
    </table>
    <br/><button type="button" onclick="location.href='./add'">Add drink</button>
    <br/><button type="button" onclick ="location.href='../login/logout'">Logout</button>

<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>--%>
</body>
</body>
</html>
