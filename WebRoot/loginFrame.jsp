<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html> 
	<head>
		<title>loginFrame</title>
	</head>
	<body>
	
	 <center><h1><font size="7" color="#000000">基于Web的教学管理系统</font></h1></center>
	 <br> <br> <br> 
		<table align="center">
		
		<html:form action="/login" method="post">   
		    <tr><td>&nbsp;&nbsp;用户名: <html:text property="id"/><html:errors property="id"/></td>
		   <td>&nbsp;&nbsp;密码: <html:password property="password"/><html:errors property="password"/>&nbsp;&nbsp;</td>
		    </tr>
		    <tr><td>&nbsp;&nbsp;&nbsp;
			    <input type="radio" name="type" value="student">学生
			    <input type="radio" name="type" value="teacher">教师
			    <input type="radio" name="type" value="manager">管理员
			    </td>		
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="登陆"/>&nbsp;&nbsp;<input type="submit" value="取消"/></td>
			</tr>
		</html:form>
		<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
		<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
		<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
	    </table>
	</body>
</html>

