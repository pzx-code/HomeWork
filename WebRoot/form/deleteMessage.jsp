<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<jsp:useBean id="message" class="com.jspdev.biyesheji.Message" scope="request"/>
<c:set var="messages" value="<%=message.getAllMessage() %>"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>viewMessage.jsp</title>

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
    <%int k=1; %>
    <center><font size="6">��������</font></center>   
      <logic:iterate id="mess" name="messages">
      <form action="/biyesheji/servlet/deleteMessageServlet" method="post">
      <input type="hidden" name="title" value="<bean:write name="mess" property="title"/>">
      <input type="hidden" name="name" value="<bean:write name="mess" property="name"/>">
      <input type="hidden" name="email" value="<bean:write name="mess" property="email"/>">
      <input type="hidden" name="time" value="<bean:write name="mess" property="time"/>">
      <input type="hidden" name="content" value="<bean:write name="mess" property="content"/>">
      <table align="center" border="1" width="70%" >
       <tr align="center">
         <td width="20%" bgcolor="#ddf5cd">����(<font color="blue"><%=k++ %></font>):</td>
         <td><bean:write name="mess" property="title"/></td>
         <td width="20%" rowspan="5"><input type="submit" name="delete" value="ɾ��"></td>     
       </tr> 
       <tr align="center">
         <td width="20%" bgcolor="#ddf5cd">������:</td>
         <td><bean:write name="mess" property="name"/></td>
       </tr>
       <tr align="center">
         <td width="20%" bgcolor="#ddf5cd">Email:</td>
         <td><bean:write name="mess" property="email"/></td>
       </tr>
       <tr align="center">
         <td width="20%" bgcolor="#ddf5cd">����ʱ��:</td>
         <td><bean:write name="mess" property="time"/></td>
       </tr>
       <tr align="center">
         <td width="20%" bgcolor="#ddf5cd">��������:</td>
         <td><bean:write name="mess" property="content"/></td>
       </tr>
      </table> <br>
      </form>   
      </logic:iterate>
   </body>
</html:html>
   
<%-- 
    <%if(pageCtl.maxPage!=1){ %>
      <form name="pageForm" action="/biyesheji/servlet/PageControlServlet" method="post">
    
       <script language="text/JavaScript">   
       <!--
       function Jumping(){
         document.pageForm.submit();
         return;
       }
       function gotoPage(pageNum){
         document.pageForm.jumpPage.value=pageNum;
         document.pageForm.submit();
         return;
       }
       -->
       </script> 
    
        ÿҳ<%=pageCtl.rowsPerPage %>��
        ��<%=pageCtl.maxRowCount %>��
        ��<%=pageCtl.curPage %>ҳ
        ��<%=pageCtl.maxPage %>ҳ
       <br>
       <%if(pageCtl.curPage==1){ 
           out.print("  ��ҳ   ��һҳ");}
         else{
       %>
           <a href="javascript:gotoPage(1)">��ҳ</a>
           <a href="javascript:gotoPage(<%=pageCtl.curPage-1 %>)">��һҳ</a>
       <%} %> 
       <%if(pageCtl.curPage==pageCtl.maxPage){ 
           out.print("  ��һҳ   ĩҳ");}
         else{
       %>
           <a href="javascript:gotoPage(<%=pageCtl.curPage+1 %>)">��һҳ</a>
           <a href="javascript:gotoPage(<%=pageCtl.maxPage %>)">ĩҳ</a>
       <%} %> 
       ת����
        <select name="jumpPage" onchange="Jumping()"> 
            <%for(int i=1;i<=pageCtl.maxPage;i++){
                if(i==pageCtl.curPage){
            %>
                   <option selected value=<%=i %>><%=i %></option>
            <%}else{%>
                   <option value=<%=i %>><%=i %></option>
            <%}}%>
         </select>
        ҳ
      </form>
      <%} %>  
--%> 
        
  