<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<c:set var="courses" value="<%=session.getAttribute("courses") %>"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>coursesQueryResult.jsp</title>

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
    <html:form action="/deleteCourses" method="post">
    <table align="center" border="1" width="95%">
      <tr align="center">
        <td align="center" bgcolor="#ddf5cd">ѡ��</td>
        <td align="center" bgcolor="#ddf5cd">�γ̴���</td>
        <td align="center" bgcolor="#ddf5cd">����</td>
        <td align="center" bgcolor="#ddf5cd">ѧ��</td>
        <td align="center" bgcolor="#ddf5cd">����</td>
        <td align="center" bgcolor="#ddf5cd">�ڿ���ʦ</td>
        <td align="center" bgcolor="#ddf5cd">�Ͽ�ʱ��</td>
        <td align="center" bgcolor="#ddf5cd">�Ͽεص�</td>
        <td align="center" bgcolor="#ddf5cd">�޸Ŀγ���Ϣ</td>
      </tr>          
      <logic:iterate id="course" name="courses">
      <tr align="center">
        <td><input type="checkbox" name="id" value="<bean:write name="course" property="id"/>"></td>
        <td><bean:write name="course" property="id"/></td>
        <td><bean:write name="course" property="name"/></td>
        <td><bean:write name="course" property="credit"/></td>
        <td><bean:write name="course" property="type"/></td>
        <td><bean:write name="course" property="teacher"/></td>
        <td><bean:write name="course" property="time"/></td>
        <td><bean:write name="course" property="address"/></td>
        <td><a href="courseInfo.jsp?id=<bean:write name="course" property="id"/>">�޸�</a></td>
      </tr>
      </logic:iterate>
    </table><br>&nbsp;&nbsp;
    <input type="submit" value="ɾ��" style="cursor:hand;height:25;width:50;" onclick="openwindow()">
    <input type="reset" value="ȡ��" style="cursor:hand;height:25;width:50;">
    </html:form> 
  </body>
</html:html>
