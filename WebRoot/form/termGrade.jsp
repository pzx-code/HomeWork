<%@ page language="java" import="java.util.List" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<c:set var="termGrades" value="<%=session.getAttribute("termGrade") %>"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>termGrade.jsp</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#f1fcfe"><br>
    <table align="center" border="1" width="80%">
      <tr>
        <td align="center" bgcolor="#ddf5cd">ѧ��</td>
        <td align="center" bgcolor="#ddf5cd">ѧ��</td>
        <td align="center" bgcolor="#ddf5cd">�γ̴���</td>
        <td align="center" bgcolor="#ddf5cd">�γ�����</td>
        <td align="center" bgcolor="#ddf5cd">�γ�����</td>
        <td align="center" bgcolor="#ddf5cd">ѧ��</td>
        <td align="center" bgcolor="#ddf5cd">�ɼ�</td>
      </tr>          
      <%List list=(List)session.getAttribute("termGrade");
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
</html:html>
