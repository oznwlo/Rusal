<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>동적 테이블 추가/삭제 및 폼 전송 예제</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<script language="javascript">
function addRow() {
  var oRow = dyntbl1.insertRow();
  oRow.onmouseover=function(){dyntbl1.clickedRowIndex=this.rowIndex};
  var oCell1 = oRow.insertCell();
  var oCell2 = oRow.insertCell();
  var oCell3 = oRow.insertCell();
  var oCell4 = oRow.insertCell();
  oCell1.innerHTML = "<input type=text name=itemcode>";
  oCell2.innerHTML = "<input type=text name=itemname>";
  oCell3.innerHTML = "<input type=file name=itemnum>";
  oCell4.innerHTML = "<input type=button value=\" X \" onClick=\"delRow()\">";
}
function delRow() {
 dyntbl1.deleteRow(dyntbl1.clickedRowIndex);
}
// n수 많큼 행 추가
function addRowCnt(){
 //var ln = document.getElementById("dyntbl1").rows.length;
 var ln = 2; //n
 for(i=0; i < ln; i++){
  addRow();
 }
}
// 모든 행 삭제
function delRowAll(){
 var ln = document.getElementById("dyntbl1").rows.length;
 for(i=0; i < ln; i++){
  delRow();
 }
}

</script>
</head>
<body>
<form action="#">
<input type=button  value="add" onclick="addRowCnt();"><input type=button  value="del" onclick="delRowAll();">
<table id="dyntbl1" border=1>
 <tr>
   <th>품목코드</th>
   <th>품목명</th>
   <th>갯수</th>
   <th><input type=button value=" + " onClick="addRow()"></th>
 </tr>
 <tr onMouseOver="dyntbl1.clickedRowIndex=this.rowIndex">
   <td><input type=text name=itemcode></td>
   <td><input type=text name=itemname></td>
   <td><input type=file name=itemnum></td>
   <td><input type=button name=dyntbl1_delRow value=" X " onClick="delRow()"></td>
 </tr>
</table>
</form>
</body>
</html>