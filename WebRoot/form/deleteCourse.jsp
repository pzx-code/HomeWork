<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>deleteCourse.jsp</title>

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
    <center><font size="6">ɾ���γ�</font></center>
    <form action="/biyesheji/servlet/deleteCourseServlet" method="post">
      <center>
          ������γ̺�:<input type="text" name="id"><br><br>
         <input type="submit" value="ɾ��" onclick="alert('ɾ���ɹ�')"/>&nbsp;&nbsp;&nbsp;<input type="reset" value="ȡ��"/>
      </center>
    </form>
  </body>
</html:html>
