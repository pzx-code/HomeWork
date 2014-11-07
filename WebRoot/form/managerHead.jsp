<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>managerHead.jsp</title>
  </head>
  
  <body bgcolor="#dff7e9">
    <table align="center" width=100%>
      <tr>
         <td align="center"> 欢迎您,<font color="blue">admin</font>!</td>
         <td align="center"> 当前身份:<font color="blue">管理员</font></td>
         <td align="center">系统时间:<font color="blue"><%=new java.util.Date().toLocaleString() %></font></td>
      </tr>
    </table>     
  </body>
</html:html>
