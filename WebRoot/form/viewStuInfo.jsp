<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %><jsp:useBean id="student" class="com.jspdev.biyesheji.Student" scope="session"/>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>viewStuInfo.jsp</title>

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
  <center><font size="6" color="#400000">ѧ��������Ϣ</font></center><br><br>
    <table align="center" border="1" width="35%">
      <tr>
        <td align="center" bgcolor="#ddf5cd">ѧ��:</td>
        <td><%=student.getId() %>
      </td>  
      <tr>
        <td align="center" bgcolor="#ddf5cd">����:</td>
        <td><%=student.getName() %>
      </td>  
      <tr>
        <td align="center" bgcolor="#ddf5cd">�Ա�:</td>
        <td><%=student.getSex() %>
      </td>  
      <tr>
        <td align="center" bgcolor="#ddf5cd">����:</td>
        <td><%=student.getAge() %>
      </td>  
      <tr>
        <td align="center" bgcolor="#ddf5cd">ѧԺ:</td>
        <td><%=student.getCollege() %>
      </td> 
      <tr>
        <td align="center" bgcolor="#ddf5cd">רҵ:</td>
        <td><%=student.getDepartment() %>
      </td> 
      <tr>
        <td align="center" bgcolor="#ddf5cd">��ϵ��ַ:</td>
        <td><%=student.getAddress() %>
      </td> 
      <tr>
        <td align="center" bgcolor="#ddf5cd">��ϵ�绰:</td>
        <td><%=student.getPhone() %>
      </td>  
      <tr>
        <td align="center" bgcolor="#ddf5cd">��ѧʱ��:</td>
        <td><%=student.getInTime() %>
      </td>  
      <tr>
        <td align="center" bgcolor="#ddf5cd">��ҵʱ��:</td>
        <td><%=student.getOutTime() %>
      </td>     
    </table><br>
    <center><a href="changeStuInfo.jsp?id=<%=student.getId() %>">������Ϣ�޸�</a></center>
  </body>
</html:html>
