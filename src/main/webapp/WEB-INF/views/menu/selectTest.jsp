<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<html>
<head><title>테이블의 레코드를 화면에 표시하는 예제</title></head>
<body>
      <h3>members 테이블의 레코드를 화면에 표시하는 예제</h3>
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
</body>
</html>