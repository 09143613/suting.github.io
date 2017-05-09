<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查询页面</title>
</head>
<body>

	<form method="post" action="s.action" class="form01" id="searchForm01">
		<!-- <label>名称：</label>
		<input type="text" name="name" class="text-name" /> -->
		<br/>
		<label>序列号：</label>	
		<input type="text" name="serialNumber" class="serialNumber" />
		<br/>
		<button type="submit">查询</button>
	</form>

</body>
</html>