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
    <center><font size="6">添加学生</font></center>
    <form action="/biyesheji/servlet/addStudentServlet" method="post">
    <table align="center" border="1">
      <tr>
         <td align="center" bgcolor="#ddf5cd">学号:</td>
         <td><input type="text" name="id"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">姓名:</td>
         <td><input type="text" name="name"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">性别:</td>
         <td><input type="text" name="sex"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">学院:</td>
         <td><input type="text" name="college"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">专业:</td>
         <td><input type="text" name="department"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">入学时间:</td>
         <td><input type="text" name="inTime"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">毕业时间:</td>
         <td><input type="text" name="outTime"></td>
      </tr>
    </table><br>
    <center><input type="submit" value="添加" onclick="openwindow()">&nbsp;&nbsp;&nbsp;<input type="reset" value="取消"></center>
    </form>
  </body>
</html>
