<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html> 
	<head>
		<title>JSP for StudentsQueryForm form</title>
	</head>
	<body bgcolor="#f1fcfe"><br>
	<center>
		<html:form action="/studentsQuery" target="bot" method="post">
		     ѧ��:<input type="text" name="id" size="20">
              ѧԺ:<select name="college">
                    <option value="" selected>--��ѧԺ��ѯ--</option>
                    <option value="��ѧ��������ѧѧԺ">��ѧ��������ѧѧԺ</option>
                    <option value="��������ѧԺ">��������ѧԺ</option>
                    <option value="����ѧԺ">����ѧԺ</option>
                 </select>
              רҵ:<select name="department">
                    <option value="" selected>--��רҵ��ѯ--</option>
                    <option value="�������ѧ�뼼��">�������ѧ�뼼��</option>
                    <option value="����">����</option>
                    <option value="����">����</option>
                 </select>
              �꼶:<select name="inTime">
                    <option value="" selected>--���꼶��ѯ--</option>
                    <option value="2004��">2004��</option>
                    <option value="2005��">2005��</option>
                    <option value="2006��">2006��</option>
                 </select>
        <input type="submit" value="��ѯ">
		</html:form>
	</center>	
	</body>
</html>

