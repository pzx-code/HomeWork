<%@ page language="java" import="com.jspdev.biyesheji.Student" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<jsp:useBean id="student" class="com.jspdev.biyesheji.Student" scope="session"/>
<%student=(Student)session.getAttribute("student"); %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>studentHead.jsp</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#dff7e9">
   <table align="center" width="100%">
     <tr>
       <td align="left">��ӭ��,<font color="blue"><%=student.getName() %></font>(<font color="blue"><%=student.getId() %></font>)!</td>
       <td align="left">��ǰ���:<font color="blue">ѧ��</font></td>
       <td align="left">ϵͳʱ��:<font color="blue"><%=new java.util.Date().toLocaleString() %></font></td>
     </tr>
   </table>  
  </body>
</html:html>
