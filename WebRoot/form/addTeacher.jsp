<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
  <head>
    <title>addTeacher.jsp</title>
	<script type="text/javascript">
    function openwindow(){ 
         window.showModalDialog("../box/addSuccess.jsp",window,"status:no;scroll:no;dialogWidth:235px;dialogHeight:100px");
    }             
    
    function opensub(){
      document.form1.submit();
    }   
    </script>
  </head>
  
  <body bgcolor="#f1fcfe"><br>
    <center><font size="6">��ӽ�ʦ</font></center>
    <form action="/biyesheji/servlet/addTeacherServlet" method="post">
    <table align="center" border="1">
      <tr align="center">
         <td bgcolor="#ddf5cd">ְ����:</td>
         <td><input type="text" name="id" size="30"></td>
      </tr>
      <tr align="center">
         <td bgcolor="#ddf5cd">����:</td>
         <td><input type="text" name="name" size="30"></td>
      </tr>
      <tr align="center">
         <td bgcolor="#ddf5cd">�Ա�:</td>
         <td><input type="text" name="sex" size="30"></td>
      </tr>
      <tr align="center">
         <td bgcolor="#ddf5cd">����:</td>
         <td><input type="text" name="department" size="30"></td>
      </tr>
      <tr align="center">
         <td bgcolor="#ddf5cd">ְλ:</td>
         <td><input type="text" name="post" size="30"></td>
      </tr>
      <tr align="center">
         <td bgcolor="#ddf5cd">��ע:</td>
         <td><textarea name="remark" rows="5" cols="29"></textarea></td>
      </tr>
    </table><br>
    <center><input type="submit" value="���" onclick="openwindow()">&nbsp;&nbsp;&nbsp;<input type="reset" value="ȡ��"></center>
    </form>
  </body>
</html>
