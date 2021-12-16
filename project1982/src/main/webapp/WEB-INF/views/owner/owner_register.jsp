<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>owner_register.jsp</title>
    <link type="text/css" href="/project1982/resources/css/3_register.css" rel="stylesheet"/>
    <script type="text/javascript" src="/project1982/resources/js/jquery-1.7.1.js"></script>
	<script  src="/project1982/resources/js/js_userinput.js"></script>
</head>
<body>
	<form action="userInsert.do" method="get" name="userinput" id="login-form">
        <h1>1982 사업자 - 회원가입</h1>
        <div>
	        <input class="id_input" name="ownerid" type="text" placeholder="아이디를 입력하세요" />
	        <input type="submit" value="중복확인" />
        </div>
	        <input name="ownerpass" type="password" placeholder="비밀번호를 입력하세요" />
	        <input name="ownerpass" type="password" placeholder="비밀번호 확인" />
        <div>
       		<input class="ownername" name="ownername" type="text" placeholder="이름을 입력하세요" />
       		<input class="ownerbirth" name="ownerbirth" type="text" placeholder="생년월일을 입력하세요" />
	        <input class="id_input" name="ownerpn" type="text" placeholder="핸드폰 번호를 입력하세요" />
	        <input type="submit" value="인증요청" />
        </div>
	        <input name="ownerpn" type="password" placeholder="인증번호" />
	        <input name="ownermail" type="password" placeholder="이메일" />
	        <input name="storeaddr" type="text" placeholder="업체주소를 입력하세요" />
	        <input name="ownerstorenum" type="text" placeholder="사업자 등록번호를 입력해주세요" />
	        <input type="submit" value="확인" />
	        <input type="submit" value="가입" />
      </form>
</body>
</html>