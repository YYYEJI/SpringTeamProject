<%--
  Created by IntelliJ IDEA.
  User: song-yeji
  Date: 2022/12/01
  Time: 6:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddPost</title>
</head>
<body>
    <form action="addok" method="get">
        <table id = "edit">
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
            <tr><td>음료 이름</td><td><input type="text" name="name"/></td></tr>
<%--            <tr><td>음료 사진</td><td><input type="photo" name="photo"/></td></tr>--%>
            <tr><td>음료 가격</td><td><input type="text" name="price"/></td></tr>
            <tr><td>새로 들어온 음료 개수</td><td><input type="text" name="newDrinkNum"/></td></tr>
            <tr><td>유통기한</td><td><input type="Date" name="expiration"/></td></tr>
            <tr><td>판매기업</td><td><input type="text" name="company"/></td></tr>
        </table>
        <button type="button" onclick="location.href='list'">목록보기</button>
        <button type="submit">등록하기</button>
    </form>
</body>
</html>
