<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

 

<%
      request.setCharacterEncoding("utf-8");
       String list_no=request.getParameter("list_no");
      String list_name = request.getParameter("list_name");
      String food_gram = request.getParameter("food_gram");
      String expdate = request.getParameter("expdate");
      String cal = request.getParameter("cal");
 
      Connection conn = null;
      PreparedStatement pstmt = null;
    //   Connection/PreparedStatement/ResultSet ==> interface
 
      try
      {
            String jdbcUrl = "jdbc:mysql://jdbc:mysql://ksh0623a.cafe24.com:3306/ksh0623a?characterEncoding=utf8&amp;allowPublicKeyRetrieval=true&amp;useSSL=false&amp;serverTimezone=UTC";
            String dbId = "ksh0623a";
            String dbPass = "jse10090623";
  
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://ksh0623a.cafe24.com:3306/ksh0623a?characterEncoding=utf8", "ksh0623a", "jse10090623" );
  
            String sql = "insert into food_list values(?, ?, ?, ?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, list_no);
            pstmt.setString(2, list_name);
            pstmt.setString(3, food_gram);
            pstmt.setString(4, expdate);
            pstmt.setString(5, cal);
            pstmt.executeUpdate();
      }catch(Exception e){
            e.printStackTrace();
      }finally{
            if(pstmt != null) try { pstmt.close(); } catch(SQLException sqle) {}
            if(conn != null) try { conn.close(); } catch(SQLException sqle) {}
      }
%>

 

<html>
<head></head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
body{
font-family: 'Noto Sans KR', sans-serif;
background-image:url('./resources/img/form_background.jpg');
background-repeat:no-repeat;
background-size:cover;
}
div#inserttest{
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
<div id="inserttest">
    재료를 추가하였습니다!
    <p>
    <button type="button" class="btn btn-primary"
   onclick="location='insertTestForm'">재료 추가</button>
&nbsp;
<button type="button" class="btn btn-primary" onclick="location='about'">나의
   재료리스트로 돌아가기</button>
   </div>
</body>
</html>