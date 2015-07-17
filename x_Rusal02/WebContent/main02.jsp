<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<% int i=0; %>
<script type="text/javascript">
$(document).ready(function(){
	i=0;	
	
	$("#addClass").on("click",function(){
		console.log("before>> " + i)
		i++;
		
		var table = "<table id='myClass"+(i)+"' border='1'><tr class='varTr"+(i)+"'><th>S</th><th>Variables</th><th><button id='addVar"+(i)+"'>+</button></th></tr>"
					+"<tr id='methodTr"+(i)+"'><th>S</th><th>Method</th><th><button id='addMethod"+(i)+"'>+</button></th></tr></table><br>";
		
		$("#result").append(table);

		console.log("after Click>> " + i)
		
		$("body").on("click","#addVar"+(i),function(){
			console.log("addVar Click");
			$(".varTr"+(i)).after("<tr class='varRow'><td><input type='checkbox'></td><td><input type='text' name='variables"+(i)+"'></td><td><input type='button' value='-' style='width:100%' class='varDel"+(i)+"'></td></tr>");
			console.log("after Click + >> " + i)
		});
		
		
		
		});
		

});
</script>
</head>
<body>
	<div id="result"></div>
	<button id="addClass">추가</button>
	

</body>
</html>