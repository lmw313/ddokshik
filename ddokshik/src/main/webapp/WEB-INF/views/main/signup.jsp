<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>회원가입</title>

    <!-- Bootstrap -->
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="./resources/css/font-awesome.min.members.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="./resources/css/style.members.css" media="screen" title="no title" charset="utf-8">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
		function signup(){
			var param = new Object();

			param.id = document.getElementById('Id').value;
			param.password = document.getElementById('Password').value;
			param.name = document.getElementById('Name').value;
    		//var jsonData = JSON.stringify(param);

			$.ajax({			
				type:"POST",
	   		 	url:"/signup",
        		dataType:"JSON",
        		data : param,
        		success : function(obj) {
					alert("성공");				
        		},	  
       			 error : function(xhr, status, error) {
       				 alert("성공 로그인하세요");
       			}
     		});
		}
	</script>
  </head>
  <body>
<div class="main_menu_iner">
            <div class="container">
                <div class="row align-items-center ">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                            <a class="navbar-brand" href="index"> <img src="./resources/img/logo.png" alt="logo"> </a>
                            
                            </nav>
                            </div>
                            </div>
                            </div>
                            </div>
                      

      <article class="container">
        <div class="page-header">
          <h1> <small>회원가입</small></h1>
        </div>
        <div class="col-md-6 col-md-offset-3">
            <div class="form-group">
              <label for="InputId">아이디</label>
              <input type="text" class="form-control" id="Id" placeholder="아이디">
            </div>

            <div class="form-group">
              <label for="InputPassword1">비밀번호</label>
              <input type="password" class="form-control" id="Password" placeholder="비밀번호">
            </div>

            <div class="form-group">
              <label for="InputPassword2">비밀번호 확인</label>
              <input type="password" class="form-control" id="Password2" placeholder="비밀번호 확인">
              <p class="help-block">비밀번호 확인을 위해 다시 한번 입력해 주세요 :)</p>
            </div>
            <div class="form-group">
              <label for="username">이름</label>
              <input type="text" class="form-control" id="Name" placeholder="이름을 입력해 주세요">
            </div>


            <div class="form-group text-center">
              <button type="submit" class="btn btn-info" onclick="signup();">회원가입<i class="fa fa-check spaceLeft"></i></button>
              <button type="submit" class="btn btn-warning"  onclick="location='index'">가입취소<i class="fa fa-times spaceLeft"></i></button>
            </div>
        </div>

      </article>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="./resources/js/bootstrap.min.members.js"></script>
  </body>
</html>
