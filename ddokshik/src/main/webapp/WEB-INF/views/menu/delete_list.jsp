<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.sql.*" %>


<%
      request.setCharacterEncoding("utf-8");
 
      String list_no = request.getParameter("list_no");
  //    String passwd = request.getParameter("passwd");
 
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
 
      try
      {
         String jdbcUrl = "jdbc:mysql://jdbc:mysql://ksh0623a.cafe24.com:3306/ksh0623a?characterEncoding=utf8&amp;allowPublicKeyRetrieval=true&amp;useSSL=false&amp;serverTimezone=UTC";
         String dbId = "ksh0623a";
          String dbPass = "jse10090623";
  
          Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection("jdbc:mysql://ksh0623a.cafe24.com:3306/ksh0623a?characterEncoding=utf8", "ksh0623a", "jse10090623" );
  
            String sql = "select list_no from food_list where list_no = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, list_no);
            rs = pstmt.executeQuery();
  
            if(rs.next())
            {
                  String rlist_no = rs.getString("list_no");
            //      String rPasswd = rs.getString("passwd");
   
                  if(list_no.equals(rlist_no) )
                  {
                        sql = "delete from food_list where list_no = ?";
                        pstmt = conn.prepareStatement(sql);
                        pstmt.setString(1, list_no);
                        pstmt.executeUpdate();
%>

 

<html>
<head><title>재료 삭제</title></head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
body{
font-family: 'Noto Sans KR', sans-serif;
background-image:url('./resources/img/form_background.jpg');
background-repeat:no-repeat;
background-size:cover;
}
div#deleteform{
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
<div id="deleteform">
      재료를 삭제했습니다.
      <p>
      <button type="button" class="btn btn-primary"
   onclick="location='deleteForm'">삭제 계속하기</button>
&nbsp;
<button type="button" class="btn btn-primary" onclick="location='about'">나의
   재료리스트로 돌아가기</button>
      </div>
</body>
</html>
<%
                  }
                  else
                  {
                        out.println("재료번호를 확인해주세요");
                  }
            }
           
      }catch(Exception e){
            e.printStackTrace();
      }finally{
            if(rs != null) try { rs.close(); } catch(SQLException sqle) {}
            if(pstmt != null) try { pstmt.close(); } catch(SQLException sqle) {}
            if(conn != null ) try { conn.close(); } catch(SQLException sqle) {}
      }
%>