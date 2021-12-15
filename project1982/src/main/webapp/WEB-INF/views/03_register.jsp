<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value= '/resources/css/3_register.css' />" >
</head>
<body>
    <form action="friends.html" method="get" id="login-form">
        <input name="userid" type="text" placeholder="아이디를 입력해주세요" />
        <input type="submit" value="중복확인" />
        <input name="password" type="password" placeholder="비밀번호를 입력하세요" />
        <input name="password" type="password" placeholder="비밀번호 확인" />
        <input name="phone" type="password" placeholder="핸드폰 번호를 입력하세요" />
        <input type="submit" value="인증요청" />
        <input name="phoneid" type="password" placeholder="인증번호" />
        <input name="email" type="password" placeholder="이메일" />

        <input type="submit" value="가입" />
        <input type="submit" value="취소" />
        <a href="#">1982</a>
      </form>
</body>
</html>