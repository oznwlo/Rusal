<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function addVar(e){
		var addVar;
		if(e =="1"){
			addVar =varTable.insertRow();
		}else if(e=="2"){
			addVar =varTable.insertRow();
		}
		
		var varStatic = addVar.insertCell();
		var varCell1 = addVar.insertCell();
		var varCell2 = addVar.insertCell();
		
		varStatic.innerHTML = "<input type='checkbox' id='staticCheck'>";
		varCell1.innerHTML = "<input typxe='text' name='variables'>"
		varCell2.innerHTML = "<input type='button' value='X'>";
	}

</script>
</head>
<body>


	<table id="varTable" border="1">
		<tr>
			<th><input type="checkbox" onclick="checkAll()"></th>
			<th>Variables</th>
			<th><input type="button" onclick="addText(1)" value='+'></th>
		</tr>
	</table>
	
	<table id="methodTable" border="1">
		<tr>
			<th><input type="checkbox" onclick="checkAll()"></th>
			<th>Methods</th>
			<th><input type="button" onclick="addText(2)" value='+'></th>
		</tr>
	
	
	</table>
</body>
</html>