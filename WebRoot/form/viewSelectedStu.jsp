<%@ page language="java" pageEncoding="gb2312"%>

<%@ taglib uri="/struts-tags" prefix="s" %><jsp:useBean id="sc" class="com.jspdev.biyesheji.Sc" scope="session"/>
<%String cno;
if(request.getAttribute("cno")!=null)
   cno=(String)request.getAttribute("cno");
else
   cno=(String)request.getParameter("cno1"); %>
<c:set var="students" value="<%=sc.getSelectedStudents(cno)%>"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>viewSelectedStu.jsp</title>

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
  <center><font size="6">ȡ����ѡѧ��</font></center>
    <form action="/biyesheji/servlet/t_fScServlet" method="post">
	<table align="center" border="1" width="90%">
      <tr>
        <td align="center" bgcolor="#ddf5cd">ѡ��ѧ��</td>
        <td align="center" bgcolor="#ddf5cd">ѧ��</td>
        <td align="center" bgcolor="#ddf5cd">����</td>
        <td align="center" bgcolor="#ddf5cd">ѧԺ</td>
        <td align="center" bgcolor="#ddf5cd">רҵ</td>
      </tr>  
         
      <logic:iterate id="stu" name="students" >
         
      <tr>
        <td align="center"><input type="checkbox" name="sno" value="<bean:write name="stu" property="id"/>"></td>
        <td align="center"><bean:write name="stu" property="id"/></td>
        <td align="center"><bean:write name="stu" property="name"/></td>
        <td align="center"><bean:write name="stu" property="college"/></td>
        <td align="center"><bean:write name="stu" property="department"/></td>
      </tr>           
      </logic:iterate> 
    </table><br>
    <center>
      <input type="hidden" name="cno" value="<%=cno %>">
      <input type="submit" value="��ѡ" style="cursor:hand;height:25;width:50;" onclick="openwindow()">
      &nbsp;&nbsp;<input type="reset" value="ȡ��" style="cursor:hand;height:25;width:50;">
    </center>
	</form>
  </body>
</html:html>
