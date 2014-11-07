<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<jsp:useBean id="course" class="com.jspdev.biyesheji.Course" scope="session"/>
<c:set var="courses" value="<%=course.getCourses() %>"/>

<!DOCTYPE html>
<html>
  <head>
    <title>changeCourseInfo.jsp</title>
  </head>
  
  <body bgcolor="#f1fcfe"><br>
  <center><font size="6">所有课程信息</font></center><br>
    <table align="center" border="1">
      <tr>
        <td bgcolor="#ddf5cd">课程代码</td>
        <td bgcolor="#ddf5cd">课程名称</td>
        <td bgcolor="#ddf5cd">授课老师</td>
        <td bgcolor="#ddf5cd">课程学分</td>
        <td bgcolor="#ddf5cd">课程类型</td>
        <td bgcolor="#ddf5cd">上课时间</td>
        <td bgcolor="#ddf5cd">上课地点</td>
        <td bgcolor="#ddf5cd">修改课程信息</td>
      </tr>     
      <logic:iterate id="cour" name="courses" >
      <tr>
        <td><bean:write name="cour" property="id"/></td>
        <td><bean:write name="cour" property="name"/></td>
        <td><bean:write name="cour" property="teacher"/></td>
        <td><bean:write name="cour" property="credit"/></td>
        <td><bean:write name="cour" property="type"/></td>
        <td><bean:write name="cour" property="time"/></td>
        <td><bean:write name="cour" property="address"/></td>
        <td><a href="courseInfo.jsp?cno=<bean:write name="cour" property="id"/>">修改</a></td>        
      </tr>           
      </logic:iterate> 
    </table>
  </body>
</html>
