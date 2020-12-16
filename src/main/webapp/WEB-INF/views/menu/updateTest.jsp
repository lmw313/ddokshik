<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>


<%
   request.setCharacterEncoding("utf-8");

   String list_no = request.getParameter("list_no");
   String list_name = request.getParameter("list_name");
   String food_gram = request.getParameter("food_gram");
   String expdate = request.getParameter("expdate");
   String cal = request.getParameter("cal");

   Connection conn = null;
   PreparedStatement pstmt2 = null;
   ResultSet rs = null;

   try {
      String jdbcUrl = "jdbc:mysql://ksh0623a.cafe24.com:3306/ksh0623a?useUnicode=yes&characterEncoding=UTF-8";
      String dbId = "ksh0623a";
      String dbPass = "jse10090623";

      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection(
            "jdbc:mysql://ksh0623a.cafe24.com:3306/ksh0623a?characterEncoding=utf8", "ksh0623a",
            "jse10090623");

      String sql = "select list_no from food_list where list_no = ?";
      pstmt2 = conn.prepareStatement(sql);
      pstmt2.setString(1, list_no);
      rs = pstmt2.executeQuery();

      if (rs.next()) {
         String rlist_no = rs.getString("list_no");

         if (list_no.equals(rlist_no)) {
            sql = "update food_list set  list_name = ?, food_gram = ?, expdate=?, cal=? where list_no = ?";

            pstmt2 = conn.prepareStatement(sql);
            pstmt2.setString(1, list_name);
            pstmt2.setString(2, food_gram);
            pstmt2.setString(3, expdate);
            pstmt2.setString(4, cal);
            pstmt2.setString(5, list_no);

            pstmt2.executeUpdate();
%>



<html>
<head>

<title>수정</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
body{
font-family: 'Noto Sans KR', sans-serif;
background-image:url('./resources/img/form_background.jpg');
background-repeat:no-repeat;
background-size:cover;
}
div#updatetest{
position : absolute;
top: 30%;
left: 55%;
border:1px solid;
padding:10px;
background-color:#FFFFFF;
margin-left:-170px;
margin-top: -90px;
}
</style>
<body>
<div id="updatetest">
재료리스트를 수정하였습니다!
<button type="button" class="btn btn-primary"
   onclick="location='updateFormTest'">수정 계속하기</button>
&nbsp;
<button type="button" class="btn btn-primary" onclick="location='about'">나의
   재료리스트로 돌아가기</button>
   </div>
</body>
</html>
<%
   } else {
            out.println("재료번호를 확인해주세요");
         }
      }

   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      if (pstmt2 != null)
         try {
            pstmt2.close();
         } catch (SQLException sqle) {
         }
      if (rs != null)
         try {
            rs.close();
         } catch (SQLException sqle) {
         }

      if (conn != null)
         try {
            conn.close();
         } catch (SQLException sqle) {
         }
   }
%>
