<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<jsp:useBean id="student" class="com.jspdev.biyesheji.Student" scope="session"/>
<jsp:useBean id="course" class="com.jspdev.biyesheji.Course" scope="session"/>
<c:set var="courses" value="<%=course.getChoseCourse() %>"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>choseCourse.jsp.jsp</title>

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
  <center><font size="6">ѡ�޿α���</font></center><br>
    <html:form action="/sc" method="post"> 
    <input type="hidden" name="sno" value=<%=student.getId() %> > 
    <table align="center" border="1" width="90%">
      <tr>
        <td align="center" bgcolor="#ddf5cd">ѡ��</td>
        <td align="center" bgcolor="#ddf5cd">�γ�����</td>
        <td align="center" bgcolor="#ddf5cd">�γ̴���</td>
        <td align="center" bgcolor="#ddf5cd">�ڿ���ʦ</td>
        <td align="center" bgcolor="#ddf5cd">�γ�ѧ��</td>
        <td align="center" bgcolor="#ddf5cd">�γ�����</td>
        <td align="center" bgcolor="#ddf5cd">�Ͽ�ʱ��</td>
        <td align="center" bgcolor="#ddf5cd">�Ͽεص�</td>
      </tr>    
      <logic:iterate id="cour" name="courses" >
      <tr>
        <td align="center"><input type="checkbox" name="cno" value="<bean:write name="cour" property="id"/>"></td>
        <td align="center"><bean:write name="cour" property="name"/></td>
        <td align="center"><bean:write name="cour" property="id"/></td>
        <td align="center"><bean:write name="cour" property="teacher"/></td>
        <td align="center"><bean:write name="cour" property="credit"/></td>
        <td align="center"><bean:write name="cour" property="type"/></td>
        <td align="center"><bean:write name="cour" property="time"/></td>
        <td align="center"><bean:write name="cour" property="address"/></td>        
      </tr> 
      </logic:iterate> 
    </table><br>
    <center>
      <input type="submit" value="�ύ" style="cursor:hand;height:25;width:70;">
      &nbsp;&nbsp;&nbsp;<a href="cancelSc.jsp">ȡ��ѡ��</a>&nbsp;&nbsp;
      <input type="reset" value="ȡ��" style="cursor:hand;height:25;width:70;">
    </center>                
    </html:form>
  </body>
</html:html>
