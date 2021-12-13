$(function(){
	// 사용자의 자료 입력여부를 검사하는 함수
	$('#confirm').click(function(){
    	if( $.trim($("#userid").val()) == '' ){
            alert("아이디를 입력해 주세요.");
            $("#userId").focus();
            return;
        }
    	
    	if($.trim($('#userpass').val())==''){
    		alert("비번입력해주세요.");
    		$('#userPass').focus();
    		return;
    	}
    	
    /*	if($.trim($('#userpass').val()) != $.trim($('#userPass2').val())){
    		alert("비밀번호가 일치하지 않습니다..");
    		$('#userPass2').focus();
    		return;
    	}*/
    	
    	if($.trim($('#usernick').val())==''){
    		alert("닉네임을 입력해주세요.");
    		$('#usernick').foucs();
    		return;
    	}    	
    	
    	if($.trim($('#username').val())==''){
    		alert("이름입력해주세요.");
    		$('#userName').foucs();
    		return;
    	}
    	
    	if($.trim($('#usercode').val())==''){
    		alert("주민등록번호를 입력해주세요.");
    		$('#usercode').foucs();
    		return;
    	}
       
    	if($.trim($('#usergender').val())==''){
    		alert("성별을 입력해주세요.");
    		$('#usergender').foucs();
    		return;
    	}
    	
    	if($.trim($('#userpn').val())==''){
    		alert("휴대전화번호를 입력해주세요.");
    		$('#userpn').foucs();
    		return;
    	}
    	
    	if($.trim($('#useraddr').val())==''){
    		alert("주소를 입력해주세요.");
    		$('#useraddr').foucs();
    		return;
    	}
    	
    /*	if($.trim($('#usermail').val())==''){
    		alert("메일을 입력해주세요.");
    		$('#usermail').foucs();
    		return;
    	}*/
    	
        // 자료를 전송합니다.
        document.userinput.submit();
	});
	
	//아이디 중복체크
	$('#userㅑd').keyup(function(){
        
		$.ajax({
			type : 'get',
			url : 'idCheck.do',
			data : {userid : $('#userid').val()},
			// 한글처리
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
			success : function(result){
				$('#idCheckResult').text(result);
			},
			error : function(err){
				alert('fail');
			}
		});
	})
})
	
	
	
	
	
	
	
	
	