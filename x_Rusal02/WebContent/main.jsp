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
		x=0;
		console.log("Docu>>>"+x)	 
		
		$(".addClass").on("click",function(){
			var table = "<table id='myClass"+(x+1)+"' border='1'><tr class='varTr"+(i+1)+"'><th>S</th><th>Variables</th><th><input type='button' value='+' id='addVar"+(x+1)+"'></th></tr>"
						+"<tr id='methodTr"+(x+1)+"'><th>S</th><th>Method</th><th><input type='button' value='+' class='addMethod"+(x+1)+"'></th></tr></table>";
		 	$(".myDiv").prepend(table);
		 	x++;
		 	console.log("Add>>>" + x)
		});
		console.log("out>>>" + x)
		
		$("body").on("click","#addVar"+x,function(){
			console.log("addVar Click");
			$(".varTr"+(x)).after("<tr class='varRow'><td><input type='checkbox'></td><td><input type='text' name='variables"+(x+1)+"'></td><td><input type='button' value='-' style='width:100%' class='varDel"+(x)+"'></td></tr>");			
		});
		$("body").on("click",".addMethod"+(x),function(){
			$("#methodTr"+(x)).after("<tr class='methodRow'><td><input type='checkbox'></td><td><input type='text' name='methods"+(x+1)+"'></td><td><input type='button' value='-' style='width:100%' class='methodDel"+(x)+"'></td></tr>");			
		});
		
		$("body").on("click",".varDel"+(x+1),function(){
			$(".varRow").remove(":last");
		});
		$("body").on("click",".methodDel"+(x+1),function(){
			$(".methodRow").remove(":last");
		});
		
	});
</script>

</head>
<body>


	<div class="myDiv"> 
	</div>
	
	<input type="button" class="addClass" value="추가">
</body>
</html>