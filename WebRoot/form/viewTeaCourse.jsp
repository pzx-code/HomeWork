<%@ page language="java" import="com.jspdev.biyesheji.Teacher" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %><jsp:useBean id="sc" class="com.jspdev.biyesheji.Sc" scope="session"/>
<jsp:useBean id="teacher" class="com.jspdev.biyesheji.Teacher" scope="session"/>
<%teacher=(Teacher)session.getAttribute("teacher");
String teaName=teacher.getName();%>
<c:set var="courses" value="<%=sc.getTeaScs(teaName) %>"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>viewTeaCourse.jsp</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#f1fcfe"><br>
    <center><font size="6">�ѿ���ѡ�޿�</font></center><br> 
    <table align="center" border="1" width="50%">
    <tr align="center">
       <td bgcolor="#ddf5cd">�γ̴���</td>
       <td bgcolor="#ddf5cd">�γ�����</td>
       <td bgcolor="#ddf5cd">�鿴ѡ�����</td>
    </tr>
    <logic:iterate id="cour" name="courses">
    
    <tr align="center">
       <td><bean:write name="cour" property="id"/></td>
       <td><bean:write name="cour" property="name"/></td>
       <td><a href="choseStudent.jsp?cno=<bean:write name="cour" property="id"/>">�鿴</a></td>
    </tr> 
     
    </logic:iterate> 
    </table>
  </body>
</html:html>
