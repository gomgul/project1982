<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link type="text/css" href="/project1982/resources/css/1_login.css" rel="stylesheet"/>
</head>
<script>
	window.onload = function(){
		document.getElementById('Submit').onclick = check;	
	}
	
	function check(){
		if(document.loginform.userid.value==""){
			alert("ID를 입력하세요.")
			document.loginform.userid.focus();
			return false;
		}
		
		if(document.loginform.userpass.value==""){
			alert("패스워드를 입력하세요.")
			document.loginform.userpass.focus();
			return false;
		}
		
		document.loginform.submit();//전송
	}
</script>
<body>

    <form action="login.do" method="get" id="login-form" name="loginform">
    	<h1>사업자 로그인</h1>
        <input name="userid" type="text" placeholder="ID" />
        <input name="userpass" type="password" placeholder="Password" />
        <input type="submit" name="Submit" id="Submit" value="로그인" />
        <a href="2_register.do">회원가입</a>
        <a href="../main.do">1982</a>
    </form>
    
</body>
</html>


