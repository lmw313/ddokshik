<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<html>
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
left: 45%;
border:1px solid;
padding:10px;
background-color:#FFFFFF;
margin-left:-170px;
margin-top: -90px;


}
</style>
<body>
      <form method = "post" action = "delete_list">
      <div id= "deleteform">
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
            String jdbcUrl = "jdbc:mysql://ksh0623a.cafe24.com:3306/ksh0623a?useUnicode=yes&characterEncoding=utf8";
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
      
      <h3>나의 재료 삭제</h3>
     삭제할 재료 번호 : <input type = "text" name = "list_no"><p>
  
      <input type = "submit" value = "삭제">

      </div>
      </form>
</body>
</html>