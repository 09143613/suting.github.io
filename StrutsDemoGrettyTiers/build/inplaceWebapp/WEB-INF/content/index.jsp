<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>guitar store</title>
  </head>
  <body> 
		    <form method="post" Action="getAllGuitars">
		    	<input type="text" name="type"></input>
		    	<input type="submit" value="搜索" ></input><br/><br/>
		    	 <table id="cartTable" class="table table-border" border="1">
			    <thead>
			      <tr>			      			         
			        <th width="100px">Type</th>
			        <th width="100px">Builder</th>
			        <th width="100px">Model</th>
			        <th width="100px">Price</th>
			        <th width="100px">BackWood</th>
			        <th width="100px">TopWood</th>
			        <th width="100px">SerialNumber</th>
			      </tr>
			    </thead>
			    <tbody>			   			    
			     <s:iterator value="#request.guitars" id="cart">			        			      
			      <tr>			        
			        <td>			  	
			        <span><s:property value="#cart.type"></s:property></span>
			        </td>
			        <td><s:property value="#cart.builder"></s:property></td>
			        <td><s:property value="#cart.model"></s:property></td>
			         <td><s:property value="#cart.price"></s:property></td>
			         <td><s:property value="#cart.backWood"></s:property></td>
			         <td><s:property value="#cart.topWood"></s:property></td>
			         <td><s:property value="#cart.serialNumber"></s:property></td>
			        
			      </tr>
			    </s:iterator>
			    
			    </tbody>
			  </table>
		    </form>
	  
  </body>
</html>

