<%@page import="com.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <title>Sign_in</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <!-- <link rel="stylesheet" href="assets/css/main.css" /> -->
    <link rel="stylesheet" href="assets/css/style2.css" />
    
</head>

<body>
<% memberVO vo = (memberVO)session.getAttribute("vo"); %>
<!-- Menu -->

    <nav id="menu">	
        <ul class="links">
            <li><h5>로그인</h5></li>
           
                <form action="LoginCon.do" method="post">
                    <li><input type="text" name="id" placeholder="ID을 입력하세요"></li>
                    <li><input type="password"name="pw" placeholder="PW를 입력하세요"></li>
                    <br>
                    <li><input type="submit" value="LogIn" class="button fit"></li>
                </form>
        </ul>
        <br>
        <ul class="actions vertical">
            <h5>회원가입</h5>
                <form action="JoinCon.do" method="post">
                    <li><input type="text" onblur = "idCheck()" name="id" id="id1" placeholder="ID을 입력하세요"></li>
                    <li style : width="100%;"><p id ="p1"></p></li>
                    <li><input type="text" name="name" placeholder="이름를 입력하세요"></li>
                    <li><input type="password" name="pw" placeholder="PW를 입력하세요"></li>
                    <li><input type="text" name="sns" placeholder="sns아이디를 입력하세요"></li>
                    <li><input type="submit" value="JoinUs" class="button fit"></li>
                </form>

        </ul>
           
    </nav>		
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
    function idCheck(){
        //alert("함수호출!");
        //중복체크버튼을 클릭했을 때 web_member테이블에 해당
        //이메일이 사용가능한지 불가능한지 출력해주는 기능(Ajax)
        
        //사용자가 입력한 이메일을 가져와야함
        var id_in = $("#id1").val();
        //alert(email_in);

        $.ajax({
            type : "get", // 서버페이지로 보내는 방식(get/post)
            url : "idCheckCon", // 어떤 서버페이지로 보낼 것인지(action같은 속성)
            data : {id : id_in}, // 서버로 보내는 데이터 {name : data}
            dataType : "text", // 응답받는 데이터타입
            success : function(data) {
                // 서버페이지와 연결에 성공했을 때 그 다음을 처리
                //  $("#p1").html(data);
                // alert(data);
                if(data=='true'){
                    $("#p1").css('color','yellow');
                    $("#p1").html("사용불가능 아이디입니다.")
                }else{		
                    
                    $("#p1").css("color","blue");
                    $("#p1").html("사용가능 아이디입니다.")
                }
                },
            error : function() {
                // 서버페이지와 연결에 실패했을 때 그 다음을 처리
            }
            });
    }
    
    </script>
</body>
</html>