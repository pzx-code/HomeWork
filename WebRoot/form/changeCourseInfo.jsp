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
  <center><font size="6">���пγ���Ϣ</font></center><br>
    <table align="center" border="1">
      <tr>
        <td bgcolor="#ddf5cd">�γ̴���</td>
        <td bgcolor="#ddf5cd">�γ�����</td>
        <td bgcolor="#ddf5cd">�ڿ���ʦ</td>
        <td bgcolor="#ddf5cd">�γ�ѧ��</td>
        <td bgcolor="#ddf5cd">�γ�����</td>
        <td bgcolor="#ddf5cd">�Ͽ�ʱ��</td>
        <td bgcolor="#ddf5cd">�Ͽεص�</td>
        <td bgcolor="#ddf5cd">�޸Ŀγ���Ϣ</td>
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
        <td><a href="courseInfo.jsp?cno=<bean:write name="cour" property="id"/>">�޸�</a></td>        
      </tr>           
      </logic:iterate> 
    </table>
  </body>
</html>
