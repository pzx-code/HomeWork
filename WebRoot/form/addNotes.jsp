<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html> 
	<head>
		<title>JSP for NoteForm form</title>
	</head>
	<body bgcolor="#f1fcfe"><br>
	    <center><font size="6">�����¹���</font></center>
		<html:form action="/note" method="post">
		<table align="center" border="1">
		   <tr>
		      <td bgcolor="#ddf5cd">&nbsp;&nbsp;���� :&nbsp;&nbsp;</td>
		      <td><html:textarea property="content" rows="10" cols="50"/><html:errors property="content"/></td>
		   </tr>
		</table> <br>     
		<center><input type="submit" value="����">&nbsp;&nbsp;&nbsp;<input type="reset" value="ȡ��"></center>
		</html:form>
	</body>
</html>

