<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<<html>
  <head>
    <title>addStudent.jsp</title>

	
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
    <center><font size="6">���ѧ��</font></center>
    <form action="/biyesheji/servlet/addStudentServlet" method="post">
    <table align="center" border="1">
      <tr>
         <td align="center" bgcolor="#ddf5cd">ѧ��:</td>
         <td><input type="text" name="id"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">����:</td>
         <td><input type="text" name="name"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">�Ա�:</td>
         <td><input type="text" name="sex"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">ѧԺ:</td>
         <td><input type="text" name="college"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">רҵ:</td>
         <td><input type="text" name="department"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">��ѧʱ��:</td>
         <td><input type="text" name="inTime"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">��ҵʱ��:</td>
         <td><input type="text" name="outTime"></td>
      </tr>
    </table><br>
    <center><input type="submit" value="���" onclick="openwindow()">&nbsp;&nbsp;&nbsp;<input type="reset" value="ȡ��"></center>
    </form>
  </body>
</html>
