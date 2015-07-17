<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		i=0;
		console.log("Docu>>>"+i)	 
		
		$(".addClass").on("click",function(){
			var table = "<table id='myClass"+(i+1)+"' border='1'>"
						+"<tr><th>C</th><td><input type='text' id='className"+(i+1)+"' colspan='2'></td></tr>"
						+"<tr id='varTr"+(i+1)+"'><th>S</th><th>Variables</th><th><input type='button' value='+' id='addVar"+(i+1)+"'></th></tr>"
						+"<tr id='methodTr"+(i+1)+"'><th>S</th><th>Method</th><th><input type='button' value='+' id='addMethod"+(i+1)+"'></th></tr></table><br>";
		 	$("#myDiv").prepend(table);
		 	i++;
			console.log("Add>>>" + i)
		
			$("body").on("click","#addVar"+(i),function(){
				console.log("addVar Click");
				$("#varTr"+(i)).after("<tr class='varRow"+i+"'><td><input type='checkbox'></td><td><input type='text' id='variables"+(i)+"' name='variables'></td><td><input type='button' value='-' style='width:100%' id='varDel"+(i)+"'></td></tr>");			
			});
			$("body").on("click","#addMethod"+(i),function(){
				$("#methodTr"+(i)).after("<tr class='methodRow"+i+"'><td><input type='checkbox'></td><td><input type='text' id='methods"+(i)+"' name='methods'></td><td><input type='button' value='-' style='width:100%' id='methodDel"+(i)+"'></td></tr>");			
			});
			
			$("body").on("click","#varDel"+(i),function(){
				$(".varRow"+i).remove(":last");
			});
			$("body").on("click","#methodDel"+(i),function(){
				$(".methodRow"+i).remove(":last");
			});
		
		});
		
		$("#delClass").on("click",function(){
			$("#myDiv").remove(":last");
			
		});
		console.log("out>>>" + i);
		/* i == Count  */
	});
</script>

</head>
<body>


	<div id="myDiv"> 
	</div>
	
	<input type="button" class="addClass" value="추가" >
	<input type="button" class="delClass" value="제거">
</body>
</html>