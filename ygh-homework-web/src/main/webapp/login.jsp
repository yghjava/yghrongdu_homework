<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="js/base64.js"></script>
<script type="text/javascript" src="js/jquery/jquery.js"></script>
<script type="text/javascript" src="js/md5.js"></script>
<script type="text/javascript" src="js/sha1.js"></script>
<script type="text/javascript">
	
	function loginFunction(){
		var username = document.getElementById("username").value
		var password = document.getElementById("password").value
		//使用base64加密
		/* var b = new Base64();  
        password = b.encode(password);  */ 
        
        //使用MD5进行加密
        /* password = hex_md5(password); */
        
        password = hex_sha1(password);
        
        alert(password);
        
        
        
        $.ajax({
            type: "post",
            data: {"username":username,"password":password},
            cache: false,
            async : false,
            dataType: "json",
            url:"/member/login.html",
            success: function (data) {
            	alert("success");
            }
        });
	}
</script>
<body>
	用户名:<input id="username" type="text" name="username"/><br/>
	密    码:<input id="password" type="password" name="password"/><br/>
	<input type="button" value="登录" onclick="loginFunction()"/>
</body>
</html>