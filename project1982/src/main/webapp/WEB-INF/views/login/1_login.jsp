<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link type="text/css" href="/project1982/resources/css/2_login.css" rel="stylesheet"/>
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
    	<h2>1982(구직자 로그인)</h2>
        <input name="userid" type="text" placeholder="ID" />
        <input name="userpass" type="password" placeholder="Password" />
        <input type="submit" name="Submit" id="Submit" value="로그인" />
        <ul id="">
        	<li><a href="#">아이디 |</a></li>
        	<li><a href="#">비밀번호 찾기 |</a></li>
        	<li><a href="register.do">회원가입</a></li>
        </ul>
    </form>
    
</body>
</html>


