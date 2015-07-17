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
	$(document).ready(function() {
		var i = 1;
		$("#new").on("click", function() {

			var b = "<button id='xxx"+i+"'>new</button>";
			$("#result").append(b);

			$("body").on("click", "#xxx" + i, function() {

				alert("new 버튼" + $(this).attr("id"));
			});
			i++;
		});

	});
</script>
</head>
<body>
	<button id="new">추가</button>
	<div id="result"></div>
</body>
</html>