<%@ page language="java" import="java.util.List" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
  <head>
    <title>allGrade.jsp</title>
  </head>
  
  <body bgcolor="#f1fcfe"><br>
    <table align="center" border="1" width="80%">
      <tr>
        <td align="center" bgcolor="#ddf5cd">学年</td>
        <td align="center" bgcolor="#ddf5cd">学期</td>
        <td align="center" bgcolor="#ddf5cd">课程代码</td>
        <td align="center" bgcolor="#ddf5cd">课程名称</td>
        <td align="center" bgcolor="#ddf5cd">课程性质</td>
        <td align="center" bgcolor="#ddf5cd">学分</td>
        <td align="center" bgcolor="#ddf5cd">成绩</td>
      </tr> 
               
      <%List list=(List)session.getAttribute("allGrade");
        for(int j=0;j<list.size();j++){%>
        <tr>
           <%Object[] object=(Object[])list.get(j);
    	   for(int i=0;i<object.length;i++){
    		%><td align="center"><%= object[i].toString()%></td>
       <% }%></tr>
       <%  }
    	%>
    </table>
  </body>
</html>
