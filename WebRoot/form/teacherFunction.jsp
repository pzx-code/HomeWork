<%@ page language="java" import="com.jspdev.biyesheji.Teacher" pageEncoding="gb2312"%>

<%@ taglib uri="/struts-tags" prefix="s" %><jsp:useBean id="teacher" class="com.jspdev.biyesheji.Teacher" scope="session"/>
<%teacher=(Teacher)session.getAttribute("teacher"); %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>teacherFunction.jsp</title>

    <style type="text/css"> 
　　 <!-- 
　　 a:link { text-decoration: none;} 
　　 a:active { text-decoration:blink} 
　　 a:hover { text-decoration:underline;}  
　　 a:visited { text-decoration: none;} 
　　 -－>  
　　 </style>

  </head>
  
  <body bgcolor="#f1fcfe">
  <center>
    <font size="5"><br>
       <a href='viewTeaCourse.jsp?name=<%=teacher.getName() %>' target="right">查看选课情况</a><br><br>
       <a href='viewTeaInfo.jsp' target="right">个人信息</a><br><br>
       <a href='changePassword.jsp?teaId=<%=teacher.getId() %>' target="right">密码修改</a><br><br>
       <a href='addGrade.jsp' target="right">学生成绩录入</a><br><br>
       <a href='viewNotes.jsp' target="right">查看公告</a><br><br>
       <a href='addMessage.jsp?name=<%=teacher.getName() %>' target="right">留言板</a><br><br>
       <a href='../login.jsp' target="_parent">退出系统</a><br>
    </font>
  </center>  
  </body>
</html:html>
