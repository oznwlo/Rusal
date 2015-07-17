<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function addVar() {
		var table = document.getElementById("myClass");
		var footer = table.createTFoot(); // ????
		var tr = footer.insertRow(0); // empty <tr>
		var td = tr.insertCell(0); // empty <td>
		td.innerHTML = "<input type='text' name='variables'>";
	
	}
</script>
</head>
<body>
	
	<table id="myClass" border="1">
		<tr>
			<td><th>Variables</th></td>
			<td><input type="button" onclick="addVar()" value='+'></td>
		</tr>
	</table>
	<table id="myClass" border="1">
		<tr>
			<th>Methods</th>
		</tr>
	</table>
	<button onclick="addVar()">추가</button>
	<button onclick="delVar()">삭제</button>
</body>
</html>