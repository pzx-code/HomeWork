<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %><jsp:useBean id="sc" class="com.jspdev.biyesheji.Sc" scope="session"/>

<%String cno=request.getParameter("cno"); %>

<c:set var="students" value="<%=sc.getStudents(cno) %>"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>choseStudent.jsp</title>

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
         window.showModalDialog("../box/operateSuccess.jsp",window,"status:no;scroll:no;dialogWidth:235px;dialogHeight:100px");
    }             
    
    function opensub(){
      document.form1.submit();
    }   
    </script>
  </head>
  
  <body bgcolor="#f1fcfe"><br>
  <center><font size="6">ȷ��ѡ��ѧ��</font></center>
    <form action="/biyesheji/servlet/f_tScServlet" method="post">
	<table align="center" border="1" width="90%">
      <tr align="center">
        <td bgcolor="#ddf5cd">ѡ��ѧ��</td>
        <td bgcolor="#ddf5cd">ѧ��</td>
        <td bgcolor="#ddf5cd">����</td>
        <td bgcolor="#ddf5cd">ѧԺ</td>
        <td bgcolor="#ddf5cd">רҵ</td>
      </tr>  
         
      <logic:iterate id="stu" name="students" >
         
      <tr align="center">
        <td><input type="checkbox" name="sno" value="<bean:write name="stu" property="id"/>"></td>
        <td><bean:write name="stu" property="id"/></td>
        <td><bean:write name="stu" property="name"/></td>
        <td><bean:write name="stu" property="college"/></td>
        <td><bean:write name="stu" property="department"/></td>
      </tr>           
      </logic:iterate> 
    </table><br>
    <center>
      <input type="hidden" name="cno" value="<%=cno %>">
      <input type="submit" value="ѡ��" style="cursor:hand;height:25;width:70;" onclick="openwindow()">
      &nbsp;&nbsp;<a href="viewSelectedStu.jsp?cno1=<%=cno %>">�鿴����ѡѧ��</a>&nbsp;&nbsp;
      <input type="reset" value="ȡ��" style="cursor:hand;height:25;width:70;">
	</center>
	</form>
  </body>
</html:html>
