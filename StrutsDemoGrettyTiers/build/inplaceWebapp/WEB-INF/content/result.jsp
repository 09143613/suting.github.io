<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<h3>查询结果：</h3>
	<table style="border:solid 1px black">
		<tr>
			<td width="100px">serialNumber</td>
			<td width="100px">price</td>
			<td width="100px">builder</td>
			<td width="100px">model</td>
			<td width="100px">type</tdr>
			<td width="100px">backwood</td>
			<td width="100px">topwood</td>
		</tr>
		<s:iterator value="#request.guitars" id="g">
			<tr>
				<td><s:property value="#g.serialNumber"></s:property></td>
				<td><s:property value="#g.price"></s:property></td>  
				<td><s:property value="#g.model"></s:property></td>
				<td><s:property value="#g.type"></s:property></td>
				<td><s:property value="#g.backwood"></s:property></td>
				<td><s:property value="#g.topwood"></s:property></td> 
			</tr>
		</s:iterator>
	</table>

</body>
</html>