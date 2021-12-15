<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/11_login.css' />" >
</head>
<body>
    <form action="#" method="get" id="login-form">
        <h1>1982 사업자</h1>
        <input name="username" type="text" placeholder="Username" />
        <input name="password" type="password" placeholder="Password" />
        <input type="submit" value="로그인" />
        <div class="login_article">
            <a href="#">아이디 |</a>
            <a href="#">비밀번호찾기 |</a>
            <a href="#">회원가입</a>
        </div>    
    </form>


        
    <script
   src="https://kit.fontawesome.com/6478f529f2.js"
   crossorigin="anonymous"
   ></script>
</body>
</html>


