<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/js/jquery-1.8.2.min.js"></script>
<link href="/css/css.css" rel="stylesheet">
<title>Commit Test</title>
</head>
<body>
	
	<form action="getData.do" method="post" id="form">
		<textarea rows="10" cols="50" id="str" name="str">
		</textarea>
		<input type="button" value="提交" onclick="commit()">
	</form>
</body>

<script type="text/javascript">

	function commit() {
		$.post(
			"check.do",
			{str:$("#str").val()},
			function(res) {
				if (!res) {
					alert("不能提交空值");
					return;
				} else {
					alert("提交成功");
					$("#form").submit();
				}
			},"json"
		);
		
	}
	
</script>
	
</html>