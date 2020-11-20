<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
div.searchbox{
font-family: 'Noto Sans KR', sans-serif;

}
</style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>똑똑한 스마트 레시피 DDOKSHIK</title>
  <link rel="icon" href="./resources/img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="./resources/css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="./resources/css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="./resources/css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="./resources/css/flaticon.css">
    <!-- fontawesome CSS -->
    <link rel="stylesheet" href="./resources/fontawesome/css/all.min.css">
    <!-- magnific CSS -->
    <link rel="stylesheet" href="./resources/css/magnific-popup.css">
    <link rel="stylesheet" href="./resources/css/gijgo.min.css">
    <!-- niceselect CSS -->
    <link rel="stylesheet" href="./resources/css/nice-select.css">
    <!-- slick CSS -->
    <link rel="stylesheet" href="./resources/css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="./resources/css/style.css">
    <!-- 검색창 css  -->

    <link rel="stylesheet" href="./resources/css/search_recipe.css">
</head>

<body>
    <!--::header part start::-->
     <header class="main_menu">
        <!--div class="sub_menu">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-sm-12 col-md-6">

                    </div>
                    <div class="col-lg-6 col-sm-12 col-md-6">
                    </div>
                </div>
            </div>
        </div-->
        <div class="main_menu_iner">
            <div class="container">
                <div class="row align-items-center ">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                            <a class="navbar-brand" href="index"> <img src="./resources/img/logo.png" alt="logo"> </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSuortedContent" aria-controls="navbarSuortedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse main-menu-item justify-content-center"
                                id="navbarSuortedContent">
                                <ul class="navbar-nav">

                                    <li class="nav-item">
                                        <a class="nav-link" href="about">나의 재료</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="blog" id="navbarDropdown_1"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            레시피
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                                            <a class="dropdown-item" href="my_recipe">나의 레시피</a>
                                            <a class="dropdown-item" href="recommend_recipe">추천 레시피</a>
                                            <a class="dropdown-item" href="search_recipe">레시피 검색</a>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="shopping">온라인 쇼핑</a>
                                    </li>
                                </ul>
                            </div>

                        </nav>
                    </div>
                </div>
            </div>
        </div>
     </header>
        <!-- Header part end-->

    <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item text-center">
                            <h2>My recipe</h2>
                            <p>내가 가지고 있는 재료들로</p>
                            <p>알맞은 레시피를 제공합니다!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!-- hotel list css start-->
    <section class="top_place section_padding">
         <div class="searchbox">
      <div class="header">
        <h1>나의 레시피</h1>
        <input onkeyup="filter()" type="text" id="value" placeholder="갖고 있는 재료의 키워드를 입력하세요">
      </div>

      <div class="container1">

        <div class="item">
     
          <span class="name"><a href="https://youtu.be/pTvMsM2v1tg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;토마토</a></span>
        </div>
        
        <div class="item">
         
          <span class="name"><a href="https://youtu.be/uAShnbgCLSU">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;양파</a></span>
        </div>
        

        <div class="item">
      
          <span class="name"><a href="https://youtu.be/xdYzzezEAd8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;닭고기</a></span>
        </div>

        <div class="item">
       
          <span class="name"><a href="https://youtu.be/1vfJqpklDSI">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사과</a></span>
        </div>

      </div>
      </div>
          
    </section>
    
    <script type="text/javascript">
      function filter(){

        var value, name, item, i;

        value = document.getElementById("value").value.toUpperCase();
        item = document.getElementsByClassName("item");

        for(i=0;i<item.length;i++){
          name = item[i].getElementsByClassName("name");
          if(name[0].innerHTML.toUpperCase().indexOf(value) > -1){
            item[i].style.display = "flex";
          }else{
            item[i].style.display = "none";
          }
        }
      }
</script>
    <!-- hotel list css end -->



    <!-- jquery plugins here-->
   <script src="./resources/js/jquery-1.12.1.min.js"></script>
    <!-- poer js -->
    <script src="./resources/js/poer.min.js"></script>
    <!-- bootstrap js -->
    <script src="./resources/js/bootstrap.min.js"></script>
    <!-- magnific js -->
    <script src="./resources/js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="./resources/js/owl.carousel.min.js"></script>
    <!-- masonry js -->
    <script src="./resources/js/masonry.pkgd.js"></script>
    <!-- masonry js -->
    <script src="./resources/js/jquery.nice-select.min.js"></script>
    <script src="./resources/js/gijgo.min.js"></script>
    <!-- contact js -->
    <script src="./resources/js/jquery.ajaxchimp.min.js"></script>
    <script src="./resources/js/jquery.form.js"></script>
    <script src="./resources/js/jquery.validate.min.js"></script>
    <script src="./resources/js/mail-script.js"></script>
    <script src="./resources/js/contact.js"></script>
    <!-- custom js -->
    <script src="./resources/js/custom.js"></script>
    <script src="./resources/js/search-recipe.js"></script>
</body>

</html>

