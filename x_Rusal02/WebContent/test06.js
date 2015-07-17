function addVar() {
	var addText = varTable.insertRow(); // default : 맨아래, 값 : Index
	addText.onmouseover = function() {
		varTable.clickedRowIndex = this.rowIndex
		console.log(varTable.clickedRowIndex);
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
		console.log(methodTable.clickedRowIndex);
	};
	var cell1 = addText.insertCell();
	var cell2 = addText.insertCell();
	var cell3 = addText.insertCell();

	cell1.innerHTML = "<input type='checkbox' id='staticVar' name='staticVar'>";
	cell2.innerHTML = "<input type='text' id='methods' name='methods'>";
	cell3.innerHTML = "<input type='button' value='X' onClick='delMethod()'>";
}
function delMethod() {
	methodTable.deleteRow(methodTable.clickedRowIndex);
}