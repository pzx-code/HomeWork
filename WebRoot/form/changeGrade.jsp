<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
  <head>
    <title>changeGrade.jsp</title>
  </head>
  
  <body bgcolor="#f1fcfe"><br>
     <center><font size="6">�޸�ѧ���ɼ�</font></center>
    <form action="/biyesheji/servlet/changeGradeServlet" method="post">
    <table align="center" border="1">
      <tr>
          <td align="center" bgcolor="#ddf5cd">������ѧ��:</td>
          <td><input type="text" name="sno"></td>
      </tr>
      <tr>
          <td align="center" bgcolor="#ddf5cd">������γ̺�:</td>
          <td><input type="text" name="cno"></td>
      </tr>
      <tr>
          <td align="center" bgcolor="#ddf5cd">�������³ɼ�:</td>
          <td><input type="text" name="grade"></td>
      </tr>
     </table> <br> 
     <center><input type="submit" value="�޸�" onclick="alert('�޸ĳɹ�')">&nbsp;&nbsp;&nbsp;<input type="reset" value="ȡ��"></center> 
    </form>
  </body>
</html>
