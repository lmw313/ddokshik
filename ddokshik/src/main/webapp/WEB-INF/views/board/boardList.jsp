<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User 01 재료리스트

</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){	
		getBoardList();
	});

	function getBoardList(){
		
		$.ajax({			
			type:"GET",
		    url:"/board/getBoardList",
	        dataType:"JSON",
	        success : function(obj) {
				getBoardListCallback(obj);				
	        },	  
	        error : function(xhr, status, error) {}
	     });
	}
	
	function getBoardListCallback(obj){
		
		var list = obj;
		var listLen = obj.length;
		
		console.log(list);
		console.log(listLen);
		
		var str = "";
		
		if(listLen >  0){
			
			for(var a=0; a<listLen; a++){
				
				var foodcategory		= list[a].food_category; 
				var foodname 		= list[a].food_name; 
				var fooddetail 		= list[a].food_detail; 
				var foodgram 		= list[a].food_gram; 
				
				
				str += "<tr>";
				str += "<td>"+ foodcategory +"</td>";
				str += "<td>"+ foodname +"</td>";
				str += "<td>"+ fooddetail +"</td>";
				str += "<td>"+ foodgram +"</td>";				
				str += "</tr>";
				
			} 
			
		} else {
			
			str += "<tr colspan='4'>";
			str += "<td>등록된 글이 존재하지 않습니다.</td>";
			str += "<tr>";
		}
		
		$("#tbody").html(str);
	}
	
</script>
</head>
<body>
<table border=1 width=350>
	<thead>
		<tr>
			<td>카테고리</td>
			<td>이름</td>
			<td>상세</td>
			<td>그램</td>
		</tr>
	</thead>
	<tbody id="tbody">
	
	</tbody>
	
</table>
</body>
</html>