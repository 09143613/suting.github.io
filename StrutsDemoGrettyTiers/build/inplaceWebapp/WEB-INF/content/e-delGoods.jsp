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
	<script type="text/javascript">
		$(function(){
			//商品展示
			$('#dg').datagrid({
				align:'center',
				halign:'center',
				url:'good/getAllGoods.action',
				fit: true,   //自适应大小
				striped : true, 
				title:'商品展示',
				rownumbers:true,
			    fitcolumns:true, 
			    singleselect:true,
				columns:[[
		          {field:'id',title:'商品id',width:100,align:'center',},   
		          {field:'name',title:'商品名称',width:250,align:'center',},   
		          {field:'price',title:'商品单价',width:100,align:'center',},
		          {field:'photo',title:'商品图片',width:200,align:'center',formatter:function(value, rec){//使用formatter格式化刷子
		        	  return '<img style="width:80px;height:100px;"  src="'+value+'"/>';
		          }},
		          {field:'sales',title:'销售量',width:100,align:'center',},
				  {field:'stock',title:'库存',width:100,align:'center',},
				  {field:'opt',title:'是否删除',width:100,align:'center',    
                          formatter:function(value,rec,index){ 
                        	  var d = '<a href="#" mce_href="#" onclick="del(\''+ index +'\')">删除</a> ';   //\''+ index +'\'  
                             return d;    
                  }},
		     	]]		
			});
		})	
		function del(index){  
	            $.messager.confirm('确认','确认删除?',function(row){  
	                if(row){  
	                    var selectedRow = $('#dg').datagrid('getSelected');  
	                    var id;
	                    $.ajax({ 
	                    	//id:selectedRow.id,
	                    	url:'good/delGoods.action?id='+selectedRow.id,    
							success:function(){
								$('#dg').datagrid('reload'); 
							}  
	                    });  
	                }  
	            })  
	          }
		
	</script>
    
</head>
<body>

<!-- 工具条 
<div id="toolbar">
	<a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-cancel" onclick="" id="del" plain="true">删除商品</a> 
</div>   toolbar="#toolbar"   -->  

<table id="dg" class="easyui-datagrid" ></table>	

</body>
</html>