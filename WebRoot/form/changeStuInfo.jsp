<%@ page language="java" import="com.jspdev.biyesheji.Student" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%String id=(String)request.getParameter("id"); %>
<%Student student=Student.getStudent(id); %>
<%boolean tag=true; %>

<html> 
	<head>
		<title>JSP for StuInfoForm form</title>
    <script language="javaScript">
    function openwindow(){ 
         window.showModalDialog("../box/changeSuccess.jsp",window,"status:no;scroll:no;dialogWidth:235px;dialogHeight:100px");
    }             
    
    function opensub(){
      document.form1.submit();
    }   
    </script>
	</head>
	<body bgcolor="#f1fcfe"><br>
	<center><font size="6" color="#400000">������Ϣ�޸�</font></center><br><br>
		<html:form action="/stuInfo">
		  <table align="center" border="1">	
		    <tr>
		      <td align="center" bgcolor="#ddf5cd">ѧ��:</td>
		      <td><html:text size="30" property="number" value="<%=student.getId() %>" readonly="<%=tag %>"/><html:errors property="number"/></td>
			</tr>		
			<tr>
		      <td align="center" bgcolor="#ddf5cd">����:</td>
		      <td><html:text size="30" property="name" value="<%=student.getName() %>"/><html:errors property="name"/></td>
			</tr>
			<tr>
		      <td align="center" bgcolor="#ddf5cd">�Ա�:</td>
		      <td><html:text size="30" property="sex" value="<%=student.getSex() %>"/><html:errors property="sex"/></td>
			</tr>
			<tr>
		      <td align="center" bgcolor="#ddf5cd">����:</td>
		      <td><html:text size="30" property="age" value="<%=student.getAge().toString() %>"/><html:errors property="age"/></td>
			</tr>			
			<tr>
		      <td align="center" bgcolor="#ddf5cd">ѧԺ:</td>
		      <td><html:text size="30" property="college" value="<%=student.getCollege() %>"/><html:errors property="college"/></td>
			</tr> 
			<tr>	
		      <td align="center" bgcolor="#ddf5cd">רҵ:</td>
		      <td><html:text size="30" property="department" value="<%=student.getDepartment() %>"/><html:errors property="department"/></td>
			</tr> 
			<tr>
		      <td align="center" bgcolor="#ddf5cd">��ѧʱ��:</td>
		      <td><html:text size="30" property="inTime" value="<%=student.getInTime() %>"/><html:errors property="inTime"/></td>
			</tr>
			<tr>
		      <td align="center" bgcolor="#ddf5cd">��ҵʱ��:</td>
		      <td><html:text size="30" property="outTime" value="<%=student.getOutTime() %>"/><html:errors property="outTime"/></td>
			</tr>
			<tr>
		      <td align="center" bgcolor="#ddf5cd">��ϵ�绰:</td>
		      <td><html:text size="30" property="phone" value="<%=student.getPhone() %>"/><html:errors property="phone"/></td>
			</tr>	
			<tr>
		      <td align="center" bgcolor="#ddf5cd">��ϵ��ַ:</td>
		      <td><html:text size="30" property="address" value="<%=student.getAddress() %>"/><html:errors property="address"/></td>
			</tr> 	
		  </table><br>	
			<center><input type="submit" value="�޸�" style="cursor:hand;height:25;width:70;" onclick="openwindow()">&nbsp;&nbsp;&nbsp;<input type="reset" value="ȡ��" style="cursor:hand;height:25;width:70;"></center>
		</html:form>
	</body>
</html>

