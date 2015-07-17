<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function addText(key){
		if(key == 1){
			var origin = document.getElementById("varTable");
			origin.innerHTML +="<tr><td><input type='text' name='Variables'></td></tr>";
		}else if(key==2){
			var origin = document.getElementById("methodTable");
			origin.innerHTML +="<tr><td><input type='text' name='Variables'></td></tr>";
		}
	}
	
	
	function delText(key){
		if(varTable.rows.length>1){
			varTable.deleteRow(varTable.rows.length);	
		}
	}
	
</script>
</head>
<body>
	<!-- <form action="textToClass.do" method="post"> -->
	<div id="class">
		<table border="1" id="varTable">
			<tr id="varText">
				<th>Variables 
					<input type="button" value="addVar"					onclick="addText(1)"> <input type="button" value="delVar"
					onclick="delText(2)">
				</th>
			</tr>
		<table border="1" id="methodTable">
			<tr>
				<th>Methods 
					<input type="button" value="addMethod" onclick="addText(2)"> 
					<input type="button" value="delMethod" onclick="delText(2)">
				</th>
			<tr>
		</table>
	</div>
	<button onclick="add()">추가</button>
	<button onclick="delete()">삭제</button>
</body>
</html>