<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<c:set var="teachers" value="<%=session.getAttribute("teachers") %>"/>
<html> 
	<head>
		<title>JSP for DeleteTeachersForm form</title>
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
    <html:form action="/deleteTeachers" method="post">
    <table align="center" border="1" width="85%">
      <tr align="center">
        <td align="center" bgcolor="#ddf5cd">ѡ��</td>
        <td align="center" bgcolor="#ddf5cd">ְ����</td>
        <td align="center" bgcolor="#ddf5cd">����</td>
        <td align="center" bgcolor="#ddf5cd">�Ա�</td>
        <td align="center" bgcolor="#ddf5cd">����</td>
        <td align="center" bgcolor="#ddf5cd">����</td>
        <td align="center" bgcolor="#ddf5cd">ְ��</td>
      </tr>          
      <logic:iterate id="teacher" name="teachers">
      <tr align="center">
        <td><input type="checkbox" name="id" value="<bean:write name="teacher" property="id"/>"></td>
        <td><bean:write name="teacher" property="id"/></td>
        <td><bean:write name="teacher" property="name"/></td>
        <td><bean:write name="teacher" property="sex"/></td>
        <td><bean:write name="teacher" property="age"/></td>
        <td><bean:write name="teacher" property="department"/></td>
        <td><bean:write name="teacher" property="post"/></td>
      </tr>
      </logic:iterate>
    </table><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" value="ɾ��" style="cursor:hand;height:25;width:50;" onclick="openwindow()">
    <input type="reset" value="ȡ��" style="cursor:hand;height:25;width:50;">
    </html:form> 
  </body>
</html>

