<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import = "java.sql.*" %>

<!doctype html>
<html lang="en">

<head>
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
    
   <style>
      table {
        width: 100%;
        border-top: 1px solid #444444;
        border-collapse: collapse;
      }
      th, td {
        border-bottom: 1px solid #444444;
        padding: 10px;
        text-align: center;
      }
    </style>
   
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
                            <h2>My Materials</h2>
                            <p>나의 냉장고 재료들을</p>
                            <p>이곳에서 확인해 보세요!</p>
                            </div>
                           </div>
                          </div>
                        </div>
                     </div>
              </section>
              
              <section class="top_place section_padding">
                 <div class="container">
                     <div class="row justify-content-center">
                         <div class="col-xl-6">
                             <div class="section_tittle text-center">
                                    <h2>My List</h2>
                                    <p> &nbsp; </p>
                                    <p> &nbsp; </p>
                                     <p> &nbsp; </p>
                                      <p> &nbsp; </p>
                        <button type="button" class="btn btn-primary" onclick = "location='insertTestForm'">추가</button>
                       					&nbsp;
                        <button type="button" class="btn btn-primary" onclick = "location='updateFormTest'">수정</button>
                        				&nbsp;
                        <button type="button" class="btn btn-danger" onclick = "location='deleteForm'">삭제</button>
                        

                    </div>
                </div>
            </div>    
            </div>              
    </section>
   
     
                            
                          
                         
   
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
    
   
</body>
<body>
      
      <table width = "550" border = "1">
      <tr>
            <td width = "100">번호</td>
            <td width = "100">이름</td>
            <td width = "100">무게</td>
            <td width = "250">유통기한</td>
            <td width = "250">칼로리</td>
      </tr>
 
<%
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
  
      try
      {
            String jdbcUrl = "jdbc:mysql://ksh0623a.cafe24.com:3306/ksh0623a?allowPublicKeyRetrieval=true&amp;useSSL=false&amp;serverTimezone=UTC";
            String dbId = "ksh0623a";
            String dbPass = "jse10090623";
   
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://ksh0623a.cafe24.com:3306/ksh0623a", "ksh0623a", "jse10090623" );
            String sql = "select * from food_list";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
             
            while(rs.next())
            {
               String list_no=rs.getString(1);
                  String list_name = rs.getString(2);
                  String food_gram= rs.getString(3);
                  String expdate = rs.getString(4);
                  String cal = rs.getString(5);
%>
      <tr>
            <td width = "100"><%= list_no %></td>
            <td width = "100"><%= list_name %></td>
            <td width = "100"><%= food_gram %></td>
            <td width = "250"><%= expdate %></td>
            <td width = "100"><%= cal %></td>
      </tr>
<%  
            }
      }catch(Exception e){
            e.printStackTrace();
      }finally{
            if(rs != null) try { rs.close(); } catch(SQLException sqle) {}
            if(pstmt != null) try { pstmt.close(); } catch(SQLException sqle) {}
            if(conn != null) try { conn.close(); } catch(SQLException sqle) {}
      }
%>
      </table>
</body>

<body>
    
</head>
<body>


</body>
</html>