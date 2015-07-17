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
	function addVar() {
		var addText = varTable.insertRow();
		addText.onmouseover = function() {
			varTable.clickedRowIndex = this.rowIndex
		};
		var cell1 = addText.insertCell();
		var cell2 = addText.insertCell();
		var cell3 = addText.insertCell();

		cell1.innerHTML = "<input type='checkbox' id='staticVar' name='staticVar'>";
		cell2.innerHTML = "<input type='text' id='variables' name='variables'>";
		cell3.innerHTML = "<input type='button' value='X' onClick='delVar()'>";
	}
	function delVar() {
		varTable.deleteRow(varTable.clickedRowIndex);
	}
	function addMethod() {
		var addText = methodTable.insertRow();
		addText.onmouseover = function() {
			methodTable.clickedRowIndex = this.rowIndex
		};
		var cell1 = addText.insertCell();
		var cell2 = addText.insertCell();
		var cell3 = addText.insertCell();

		cell1.innerHTML = "<input type='checkbox' id='staticVar' id='staticVar'>";
		cell2.innerHTML = "<input type='text' id='methods' id='methods'>";
		cell3.innerHTML = "<input type='button' value='X' onClick='delMethod()'>";
	}
	function delMethod() {
		methodTable.deleteRow(methodTable.clickedRowIndex);
	}
	
	$(document).ready(function(){
		classTable = $("#classTable");
		
		$(".addClass").on("click",function(){
			console.log(classTable);
			console.log("aa");
			$("#classTable").after(classTable);
		});
	});
</script>
</head>

<body>

	<div id="classTable">
		<table id="varTable" border="1">
			<tr>
				<th><input type="checkbox" onclick="checkAll()"></th>
				<th>Variables</th>
				<th><input type="button" onclick="addVar()" value='+'></th>
			</tr>
		</table>

		<table id="methodTable" border="1">
			<tr>
				<th><input type="checkbox" onclick="checkAll()"></th>
				<th>Methods</th>
				<th><input type="button" onclick="addMethod()" value='+'></th>
			</tr>
		</table>

	</div>
	
	
	<input type="button" class="addClass" value="추가">
	

</body>
</html>