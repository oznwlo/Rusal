<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function addText(e) {
		var addText;
		var temp;
		(e == 1 ? addText = varTable.insertRow(): addText = methodTable.insertRow());
		addText.onmouseover = function() {
			if(e==1){
				varTable.clickedRowIndex = this.rowIndex
			}else if(e==2){
				methodTable.clickedRowIndex = this.rowIndex
			}
		};
		var varCell1 = addText.insertCell();
		var varCell2 = addText.insertCell();
		var varCell3 = addText.insertCell();

		varCell1.innerHTML = "<input type='checkbox' id='staticCheck'>";
		(e == 1 ? varCell2.innerHTML = "<input type='text' name='variables'>"
				: varCell2.innerHTML = "<input type='text' name='methods'>");
		varCell3.innerHTML = "<input type='button' value='X' onClick='delRow()'>";
	}
	function delRow() {
		temp.deleteRow(temp.clickedRowIndex);
	}
	

</script>
</head>
<body>
<table id="myClass">
<tr><td>
	<table id="varTable" border="1">
		<tr>
			<th><input type="checkbox" onclick="checkAll()"></th>
			<th>Variables</th>
			<th><input type="button" onclick="addText(1)" value='+'></th>
		</tr>
	</table>
</td></tr>
<tr><td>
	<table id="methodTable" border="1">
		<tr>
			<th><input type="checkbox" onclick="checkAll()"></th>
			<th>Methods</th>
			<th><input type="button" onclick="addText(2)" value='+'></th>
		</tr>
	</table>
</td></tr>
</table>
</body>
</html>