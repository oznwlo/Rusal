<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	i =0;
	$("#addVar").on("click",function(){
		$("#variables").after("<tr class='varRow'><td><input type='checkbox'></td><td><input type='text' name='variables"+i+"'></td><td><input type='button' name='variables' value='-' style='width:100%' class='varDel'></td></tr>");
	});
	$("#addMethod").on("click",function(){
		$("#methods").after("<tr class='methodRow'><td><input type='checkbox'></td><td><input type='text' name='methods"+i+"'></td><td><input type='button' name='methods' value='-' style='width:100%' class='methodDel'></td></tr>");
	});
	
	$("body").on("click",".methodDel",function(){
		$(".methodRow").remove(":last");
	});
	$("body").on("click",".varDel",function(){
		console.log("aa");
		$(".varRow").remove("<br>"+":last");
	});
	
	console.log($(".myDiv").html());
	
	$(".addClass").on("click",function(){
		i++;
		$(".myDiv").after("<br>"+$(".myDiv").html());		
	});
	
});


</script>
<title>Insert title here</title>
</head>
<body>
<form action="textToClass.do" method="post">
	<div class="myDiv">
		<table border="1" class="myClass">
			<tr id="variables">
				<th><input type="checkbox"></th>
				<th>Variables</th>
				<th><input type="button" id="addVar" value="+"></th>
			</tr>
			<tr id="methods">
				<th><input type="checkbox"></th>
				<th>Methods</th>
				<th><input type="button" id="addMethod" value="+"></th>
			</tr>
		</table>
	</div>
	
	<input type="button" value="추가" class="addClass">
	<input type="submit" value="변환">
</form>
</body>
</html>