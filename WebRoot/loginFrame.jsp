<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html> 
	<head>
		<title>loginFrame</title>
	</head>
	<body>
	
	 <center><h1><font size="7" color="#000000">����Web�Ľ�ѧ����ϵͳ</font></h1></center>
	 <br> <br> <br> 
		<table align="center">
		
		<html:form action="/login" method="post">   
		    <tr><td>&nbsp;&nbsp;�û���: <html:text property="id"/><html:errors property="id"/></td>
		   <td>&nbsp;&nbsp;����: <html:password property="password"/><html:errors property="password"/>&nbsp;&nbsp;</td>
		    </tr>
		    <tr><td>&nbsp;&nbsp;&nbsp;
			    <input type="radio" name="type" value="student">ѧ��
			    <input type="radio" name="type" value="teacher">��ʦ
			    <input type="radio" name="type" value="manager">����Ա
			    </td>		
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="��½"/>&nbsp;&nbsp;<input type="submit" value="ȡ��"/></td>
			</tr>
		</html:form>
		<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
		<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
		<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
	    </table>
	</body>
</html>

