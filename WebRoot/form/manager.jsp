<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>manager.jsp</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <frameset rows="60,*" cols="*" frameborder="YES" border="0" framespacing="0">
   <frame src="managerHead.jsp" name="top" scrolling="NO" noresize>
   <frameset rows="*" cols="200,*" framespacing="0" frameborder="YES" border="0"> 
       <frame src="managerFunction.jsp" name="left" scrolling="NO" noresize>
       <frame src="nothing.jsp" name="right">
   </frameset>
  </frameset>
  <body>
  </body>
</html:html>
