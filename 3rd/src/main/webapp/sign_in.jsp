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
            <li><h5>�α���</h5></li>
           
                <form action="LoginCon.do" method="post">
                    <li><input type="text" name="id" placeholder="ID�� �Է��ϼ���"></li>
                    <li><input type="password"name="pw" placeholder="PW�� �Է��ϼ���"></li>
                    <br>
                    <li><input type="submit" value="LogIn" class="button fit"></li>
                </form>
        </ul>
        <br>
        <ul class="actions vertical">
            <h5>ȸ������</h5>
                <form action="JoinCon.do" method="post">
                    <li><input type="text" onblur = "idCheck()" name="id" id="id1" placeholder="ID�� �Է��ϼ���"></li>
                    <li style : width="100%;"><p id ="p1"></p></li>
                    <li><input type="text" name="name" placeholder="�̸��� �Է��ϼ���"></li>
                    <li><input type="password" name="pw" placeholder="PW�� �Է��ϼ���"></li>
                    <li><input type="text" name="sns" placeholder="sns���̵� �Է��ϼ���"></li>
                    <li><input type="submit" value="JoinUs" class="button fit"></li>
                </form>

        </ul>
           
    </nav>		
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
    function idCheck(){
        //alert("�Լ�ȣ��!");
        //�ߺ�üũ��ư�� Ŭ������ �� web_member���̺� �ش�
        //�̸����� ��밡������ �Ұ������� ������ִ� ���(Ajax)
        
        //����ڰ� �Է��� �̸����� �����;���
        var id_in = $("#id1").val();
        //alert(email_in);

        $.ajax({
            type : "get", // ������������ ������ ���(get/post)
            url : "idCheckCon", // � ������������ ���� ������(action���� �Ӽ�)
            data : {id : id_in}, // ������ ������ ������ {name : data}
            dataType : "text", // ����޴� ������Ÿ��
            success : function(data) {
                // ������������ ���ῡ �������� �� �� ������ ó��
                //  $("#p1").html(data);
                // alert(data);
                if(data=='true'){
                    $("#p1").css('color','yellow');
                    $("#p1").html("���Ұ��� ���̵��Դϴ�.")
                }else{		
                    
                    $("#p1").css("color","blue");
                    $("#p1").html("��밡�� ���̵��Դϴ�.")
                }
                },
            error : function() {
                // ������������ ���ῡ �������� �� �� ������ ó��
            }
            });
    }
    
    </script>
</body>
</html>