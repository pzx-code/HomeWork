<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<c:set var="students" value="<%=session.getAttribute("students") %>"/>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>studentsQueryResult.jsp</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  	<script language="javaScript">
    function openwindow(){ 
         window.showModalDialog("../biyesheji/box/deleteSuccess.jsp",window,"status:no;scroll:no;dialogWidth:235px;dialogHeight:100px");
    }             
    
    function opensub(){
      document.form1.submit();
    }   
    </script>
  </head>
  
  <body bgcolor="#f1fcfe"><br>
    <html:form action="/deleteStudents" method="post">
    <table align="center" border="1" width="85%">
      <tr align="center">
        <td align="center" bgcolor="#ddf5cd">ѡ��</td>
        <td align="center" bgcolor="#ddf5cd">ѧ��</td>
        <td align="center" bgcolor="#ddf5cd">����</td>
        <td align="center" bgcolor="#ddf5cd">�Ա�</td>
        <td align="center" bgcolor="#ddf5cd">����</td>
        <td align="center" bgcolor="#ddf5cd">רҵ</td>
        <td align="center" bgcolor="#ddf5cd">ѧԺ</td>
        <td align="center" bgcolor="#ddf5cd">��ѧʱ��</td>
      </tr>          
      <logic:iterate id="student" name="students">
      <tr align="center">
        <td><input type="checkbox" name="id" value="<bean:write name="student" property="id"/>"></td>
        <td><bean:write name="student" property="id"/></td>
        <td><bean:write name="student" property="name"/></td>
        <td><bean:write name="student" property="sex"/></td>
        <td><bean:write name="student" property="age"/></td>
        <td><bean:write name="student" property="department"/></td>
        <td><bean:write name="student" property="college"/></td>
        <td><bean:write name="student" property="inTime"/></td>
      </tr>
      </logic:iterate>
    </table><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" value="ɾ��" style="cursor:hand;height:25;width:50;" onclick="openwindow()">
    <input type="reset" value="ȡ��" style="cursor:hand;height:25;width:50;">
    </html:form> 
  </body>
</html:html>
