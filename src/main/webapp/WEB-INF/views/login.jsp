<%--
  Created by IntelliJ IDEA.
  User: song-yeji
  Date: 2022/12/07
  Time: 7:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Bootstrap demo</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>

  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/login.css"/>">
  <meta charset="UTF-8">
  <title>Login</title>

  <style>
  /*img, label { display:inline-block;}*/
  /*label{ width:130px}*/
  /*button{ background-color:blue; color:white;font-size:15px}*/
  </style>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
</head>
<body>
<div style='width:100%;text-align:center;padding-top:100px'>

<%--  <img src='../img/vending.png' class="login-img">--%>
  <form method="post" action="loginOk">

  <div class ="container">
    <div class="login-form">
      <div class="login-title">
        Admin Login
      </div>
      <div class="login-input">
        <div class="input-group mb-3">
          <span class="input-group-text" id="basic-addon1"><span class="material-symbols-outlined">
person
</span></span>
          <input type="text" class="form-control" name='userid' placeholder="username" aria-label="Username" aria-describedby="basic-addon1">
        </div>
      </div>
      <div class="login-input">
        <div class="input-group mb-3">
          <span class="input-group-text" id="basic-addon1"><span class="material-symbols-outlined">
lock
</span></span>
          <input type="password" name='password' class="form-control" placeholder="password" aria-label="Username" aria-describedby="basic-addon1">
        </div>
      </div>

        <button class="login-submit" type='submit'>login</button>

    </div>
  </div>
  </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>
