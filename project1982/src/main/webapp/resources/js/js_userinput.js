$(function(){
	// 사용자의 자료 입력여부를 검사하는 함수
	$('#confirm').click(function(){
    	if( $.trim($("#userid").val()) == '' ){
            alert("아이디를 입력해 주세요.");
            $("#userid").focus();
            return;
        }
    	
    	if($.trim($('#userpass').val())==''){
    		alert("비번입력해주세요.");
    		$('#userpass').focus();
    		return;
    	}
    	
    	if($.trim($('#userpass').val()) != $.trim($('#userpass2').val())){
    		alert("비밀번호가 일치하지 않습니다..");
    		$('#userpass2').focus();
    		return;
    	}
    		
    	if($.trim($('#username').val())==''){
    		alert("이름입력해주세요.");
    		$('#username').foucs();
    		return;
    	}
       
        // 자료를 전송합니다.
        document.userinput.submit();
	});
	
	//아이디 중복체크
	$('#userid').keyup(function(){
        $.ajax({
        type: 'get',
        url: 'idCheck.do',
        data:{userid : $('#userid').val()},
        //한글 처리하는 부분
        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
        success : function(result){
        	$('#idCheckResult').text(result);
        },
        error : function(err){
        	alert('fail');
        }
        })    
	})
})