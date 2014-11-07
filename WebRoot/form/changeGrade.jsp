<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
  <head>
    <title>changeGrade.jsp</title>
  </head>
  
  <body bgcolor="#f1fcfe"><br>
     <center><font size="6">修改学生成绩</font></center>
    <form action="/biyesheji/servlet/changeGradeServlet" method="post">
    <table align="center" border="1">
      <tr>
          <td align="center" bgcolor="#ddf5cd">请输入学号:</td>
          <td><input type="text" name="sno"></td>
      </tr>
      <tr>
          <td align="center" bgcolor="#ddf5cd">请输入课程号:</td>
          <td><input type="text" name="cno"></td>
      </tr>
      <tr>
          <td align="center" bgcolor="#ddf5cd">请输入新成绩:</td>
          <td><input type="text" name="grade"></td>
      </tr>
     </table> <br> 
     <center><input type="submit" value="修改" onclick="alert('修改成功')">&nbsp;&nbsp;&nbsp;<input type="reset" value="取消"></center> 
    </form>
  </body>
</html>
