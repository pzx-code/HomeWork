<%@ page language="java" import="com.jspdev.biyesheji.Teacher" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<%Teacher teacher=(Teacher)session.getAttribute("teacher"); %> 
<c:set var="courses" value="<%=teacher.getTeaCourses(teacher.getName()) %>"/>

<!DOCTYPE html>
<html> 
	<head>
		<title>JSP for GradeForm form</title>
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
		<html:form action="/grade" method="post">
		<center><font size="6">ѧ���ɼ�¼��</font></center><br>
		<table align="center" border="1">
		  <tr>
		    <td align="center" bgcolor="#ddf5cd">ѧ��ѧ��</td>
		    <td><html:text property="snumber" size="29"/><html:errors property="snumber"/></td>
		  </tr>
		  <tr>
		    <td align="center" bgcolor="#ddf5cd">�γ�����</td>
		    <td>
		      <html:select property="cnumber">
		        <html:options collection="courses" property="id" labelProperty="name"/>
		      </html:select>
		    </td>
		  </tr>
		  <tr>
		    <td align="center" bgcolor="#ddf5cd">�ɼ�</td>
		    <td><html:text property="grade" size="29"/><html:errors property="grade"/></td>
		  </tr>  
		   <tr>
		    <td align="center" bgcolor="#ddf5cd">ѧ��</td>
		    <td>
		      <select name="year">
		         <option value="2009~2010">2009~2010</option>
		         <option value="2010~2002">2010~2011</option>
		         <option value="2011~2003">2011~2012</option>
		         <option value="2012~2004">2012~2013</option>
		         <option value="2013~2005">2013~2014</option>
		      </select>
		    </td>
		  </tr> 
		  <tr>
		    <td align="center" bgcolor="#ddf5cd">ѧ��</td>
		    <td>
		      <select name="term">
		         <option value="1">1</option>
		         <option value="2">2</option>
		      </select>
		    </td>      
		  </tr> 
		  <tr>
		    <td align="center" bgcolor="#ddf5cd">�Ƿ�����</td>
		    <td>
		      ��<input type="radio" name="chongXiu" value="true">&nbsp;&nbsp;
		      ��<input type="radio" name="chongXiu" value="false">
		    </td>
		  </tr>           
		</table><br>	
		<center><input type="submit" value="���" onclick="openwindow()">&nbsp;&nbsp;&nbsp;<input type="reset" value="ȡ��"></center>
		</html:form>
	</body>
</html>
