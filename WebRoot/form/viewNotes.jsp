<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<jsp:useBean id="note" class="com.jspdev.biyesheji.Note" scope="session"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>viewNotes.jsp</title>

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
  <center><font size="6" color="#400000">���ڹ���</font></center><br><br>
   <table align="center">
     <tr>
       <td>����:</td>
       <td>&nbsp;&nbsp;<%=note.getNote().getContent() %></td>
     </tr>
     <tr><td></td></tr>
     <tr><td></td></tr>
     <tr>
       <td>����ʱ��:</td>
       <td>&nbsp;&nbsp;<%=note.getNote().getTime() %></td>
     </tr>
   </table>    
  </body>
</html:html>
