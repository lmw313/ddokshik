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
	var listLen = 100; 
	
	console.log(list);
	console.log(listLen);

	
	var str = "";
	
	if(listLen >  0){
		
		for(var a=0; a<listLen; a++){
			
			var ingredient_no	= list[a].ingredient_no; 
			var ingredient_category = list[a].ingredient_category; 
			var ingredient_name 		= list[a].ingredient_name; 
			var ingredient_detail 		= list[a].ingredient_detail; 
			var cal 		= list[a].cal; 
			
			
			str += "<tr>";
			str += "<td>"+ ingredient_no +"</td>";
			str += "<td>"+ ingredient_category +"</td>";
			str += "<td>"+ ingredient_name +"</td>";
			str += "<td>"+ ingredient_detail +"</td>";				
			str += "<td>"+ cal +"</td>";		
			str += "</tr>";
			
		} 
		
	} else {
		
		str += "<tr colspan='5'>";
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
			<td>칼로리</td>
		</tr>
	</thead>
	<tbody id="tbody">
	
	</tbody>
	
</table>
</body>
</html>