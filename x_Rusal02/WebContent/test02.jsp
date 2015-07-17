<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
/* tr = document.createElement('tr');
tbd.appendChild(tr);
td = document.createElement('td'); */
	var tr = document.createElement('tr');
	var td = document.createElement('td');
	var varText = document.createElement('varText');
	var methodText = document.createElement('methodText');
	function addVar(){
		varText.appendChild(tr);
		varText.appendChild(td);
	}
</script>
</head>
<body>
	<table id="myClass" border="1">
	<var id="varText">
	<tr><th>Var	<button onclick="addVar()">추가</button><button>삭제</button>	</th></tr>
	</var>
	<method id="methodText">
	<tr><th>Method <button>추가</button><button>삭제</button></th></tr>
	</method>
	</table>
</body>
</html>