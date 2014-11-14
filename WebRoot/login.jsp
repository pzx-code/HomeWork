<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html> 
	<head>
		<title>loginFrame</title>
	</head>
	<body><br>
	<table border="1" align="center" width="90%"><tr><td><div style="width:100%;height:100%;overflow:auto">
	<br><br><br><br><br><br><br><br><br><br><br>
	 <center><h1><font size="6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 --基于Web的教学管理系统</font></h1></center>
	 <br> <br> <br> 
		<table align="center">
		
		<form action="login.action" method="post">   
		    <tr><td>&nbsp;&nbsp;用户名: <input type="text" name="username"/></td>
		        <td>&nbsp;&nbsp;密码: <input type="text" name="password"/></td>
		    </tr>
		    <tr><td>&nbsp;&nbsp;&nbsp;
			       <input type="radio" name="type" value="student">学生
			       <input type="radio" name="type" value="teacher">教师
			       <input type="radio" name="type" value="manager">管理员
			    </td>		
			    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			        <input type="submit" value="登陆"/>&nbsp;&nbsp;<input type="reset" value="取消"/>
			    </td>
			</tr>       
		<form>
	    </table>
	    <br><br><br><br><br><br><hr>
	    <table align="center">
	         <tr><td align="center" colspan="2">
			         版权所有 南京理工大学<br> 2012级 潘子行
                 </td>
             </tr>
        </table> 
        </div></td></tr></table>              
	</body>
</html>

