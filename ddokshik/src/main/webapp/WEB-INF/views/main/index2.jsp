<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function signup(){
	var param = new Object();

	param.id = 'lmw';
	param.password = 'pwpw';
	param.name = '이민우';
    var jsonData = JSON.stringify(param);

	$.ajax({			
		type:"POST",
	    url:"/board/signup",
        dataType:"JSON",
        data : param,
        success : function(obj) {
			alert("성공");
			
        },	  
        error : function(xhr, status, error) {alert("실패");}
     });
}
</script>
</head>

<body>
   <button onclick="signup();">민우</button>
</body>

</html>
