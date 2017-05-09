<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>修改商品</title>
<!--  	<link rel="stylesheet" type="text/css" href="libs/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="libs/easyui/themes/icon.css">
	<script type="text/javascript" src="libs/easyui/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="libs/easyui/js/jquery.easyui.min.js"></script>-->
	
	
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/easyui/themes/icon.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/easyui/themes/default/easyui.css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-2.2.3.min.js"></script> 
    <script type="text/javascript" src="<%=request.getContextPath()%>/easyui/jquery.easyui.min.js"></script>
	<script >
		$(function(){
			//商品展示
			$('#dg').datagrid({
				align:'center',
				halign:'center',
				url:'good/getAllGoods.action',
				fit: true,   //自适应大小
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
				  {field:'opt',title:'状态',width:100,align:'center',}
		     	]]		
			});
			//打开修改商品窗口
			function openW() {
	            $('#w').window({
	                title: '修改商品',
	                width: 500,
	                modal: true,
	                shadow: true,
	                closed: true,
	                height: 400,
	                resizable:false
	            });
        	};
        	//关闭修改商品窗口
        	function closeW() {
            	$('#w').window('close');
        	};
        	//变量
        	var url;
    		var row;
    		
    		$(function() {
				openW();
				//点击打开窗口
                $('#del').click(function() {
                    $('#w').window('open');
                });
				//取消按钮
				$('#btnCancel').click(function(){
					closeW();
				});
			})
			
		});
		 //修改商品所有信息
		function save(){
			$('#frmEdit').form('submit',{
				url:'good/updGoods.action',
				onSubmit: function(){
					return $(this).form('validate');
				},
				success: function(){
					$('#w').window('close');		// close the dialog  关闭小窗口
					$('#dg').datagrid('reload');	// reload the user data  刷新数据显示	
					alert("修改成功！");
				}
			});
		} 
		
	</script>
    
</head>
<body>

<!-- 工具条  -->
<div id="toolbar">
	<a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-save" onclick="" id="del" plain="true">修改商品信息</a>
</div>    

<table id="dg" class="easyui-datagrid" toolbar="#toolbar"></table>	

<!-- <!--修改商品所有信息窗口-->
<div id="w" display="none" class="easyui-window" title="修改商品" collapsible="false" minimizable="false"
        maximizable="false" icon="icon-save"  style="width: 400px; height: 280px; padding: 5px;
        background: #fafafa;">
	<div class="easyui-layout" fit="true">
    	<div id="tabEdit" region="center" border="false" style="text-align: right;padding: 10px; background: #fff; border: 1px solid #ccc;">
    		<form id="frmEdit">
	        	<table cellpadding="3" style="text-align:center;">
	        		<tr>
	        			<td style="color:red">*</td>
	              		<td>请输入要修改的商品id:</td>
	              		<td><input id="id" name="id" type="text" class="txt01" /></td>
	              		
	            	</tr>
	        		<tr>
	        			<td style="color:red">*</td>
	             		<td>商品名称：</td>
	              		<td><input id="name" name="name" type="text" class="txt01" /></td>
	              		<!-- <td><a id="btnEp" class="easyui-linkbutton" href="javascript:void(0)" onclick="save()">确认修改</a></td> -->
	            	</tr>
	            	<tr>
	             		<td style="color:red">*</td>
	             		<td>单价：</td>
	              		<td><input id="price" name="price" type="text" class="txt01" /></td>
	            	</tr>
	            	<tr>
	             		<td style="color:red">*</td>
	             		<td>商品图片路径：</td>
	              		<td><input id="photo" name="photo" type="text" class="txt01" /></td>
	            	</tr>
	            	<tr>
	             		<td style="color:red">*</td>
	             		<td>销售量：</td>
	              		<td><input id="sales" name="sales" type="text" class="txt01" /></td>
	            	</tr>
	            	<tr>
	             		<td style="color:red">*</td>
	             		<td>库存：</td>
	              		<td><input id="stock" name="stock" type="text" class="txt01" /></td>
	            	</tr>
	            	<tr>
	             		<td style="color:red">*</td>
	             		<td>商品状态（有货或无货）：</td>
	              		<td><input id="opt" name="opt" type="text" class="txt01" /></td>
	            	</tr>
	      		</table>
      		</form>
        </div>
        <div region="south" border="false" style="text-align: right; height: 30px; line-height: 30px;"> 
        	<form method="post" >
    			<a id="btnEp" class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)" onclick="save()">确认修改</a> 
    			<a id="btnCancel" class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)">取消</a> 
    		</form>
    	</div>
	</div>
</div>

</body>
</html>