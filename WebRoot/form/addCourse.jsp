<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html>
<html> 
	<head>
		<title>JSP for CourseForm form</title>
	
  	<script language="javaScript">
    function openwindow(){ 
         window.showModalDialog("../box/addSuccess.jsp",window,"status:no;scroll:no;dialogWidth:235px;dialogHeight:100px");
    }             
    
    function opensub(){
      document.form1.submit();
    }   
    </script>
	</head>
	<body bgcolor="#f1fcfe"><br>
	  <center><font size="6">�γ�¼��</font></center>
		<html:form action="/course" method="post">
		<table align="center" border="1">
		  <tr>
		    <td bgcolor="#ddf5cd">�γ̴���:</td>
			<td><html:text property="id"/><html:errors property="id"/></td>
		  </tr>
		  <tr>
		    <td bgcolor="#ddf5cd">�γ�����:</td>
			<td><html:text property="name"/><html:errors property="name"/></td>
		  </tr>
		  <tr>
		    <td bgcolor="#ddf5cd">�γ�ѧ��:</td>
			<td><html:text property="credit"/><html:errors property="credit"/></td>
		  </tr>
		  <tr>
		    <td bgcolor="#ddf5cd">�γ�����:</td>
			<td><html:text property="type"/><html:errors property="type"/></td>
		  </tr>
		  <tr>
		    <td bgcolor="#ddf5cd">�Ͽ�ʱ��:</td>
			<td><html:text property="time"/><html:errors property="time"/></td>
		  </tr>
		  <tr>
		    <td bgcolor="#ddf5cd">�Ͽεص�:</td>
			<td><html:text property="address"/><html:errors property="address"/></td>
		  </tr>
		  <tr>
		    <td bgcolor="#ddf5cd">�ڿν�ʦ:</td>
			<td><html:text property="teacher"/><html:errors property="teacher"/></td>
		  </tr>
		</table><br>	
			<center><input type="submit" value="���" style="cursor:hand;height:25;width:70;" onclick="openwindow()">
			&nbsp;&nbsp;&nbsp;<input type="reset" value="ȡ��" style="cursor:hand;height:25;width:70;">
			</center>
		</html:form>
	</body>
</html>

