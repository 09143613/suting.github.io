<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>查看商品</title>

	
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/easyui/themes/icon.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/easyui/themes/default/easyui.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-2.2.3.min.js"></script> 
    <script type="text/javascript" src="<%=request.getContextPath()%>/easyui/jquery.easyui.min.js"></script>

     
	<script>
		$(function(){
			//alert("ok");
			$('#dg').datagrid({
				align:'center',
				halign:'center',
				url:'good/getAllGoods.action',
				fit: true,   //自适应大小
				title:'商品展示',
				rownumbers:true,
				columns:[[
					{field:'id',title:'商品id',width:200},   
					{field:'name',title:'商品名称',width:200},   
					{field:'price',title:'商品单价',width:200,},
					{field:'photo',title:'商品图片',width:200,formatter:function(value){
						  return '<img style="width:80px;height:100px;"  src="'+value+'"/>';
					}},
					{field:'sales',title:'销售量',width:100,},
					{field:'stock',title:'库存',width:100,},
					{field:'opt',title:'状态',width:100,},
		     	]]		
			});
			
		});
	</script>
</head>
<body>
<table id="dg" class="easyui-datagrid">
</table>

	
</body>
</html>