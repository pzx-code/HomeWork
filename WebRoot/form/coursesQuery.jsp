<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html> 
	<head>
		<title>JSP for CoursesQueryForm form</title>
	</head>
	<body bgcolor="#f1fcfe"><br>
	<center>
		<html:form action="/coursesQuery" target="bot" method="post">
			�γ̴���:<input type="text" name="id" size="30">
              ѧ��:<select name="credit">
                    <option value="" selected>--���γ�ѧ�ֲ�ѯ--</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                 </select>
              ����:<select name="type">
                    <option value="" selected>--���γ����Ͳ�ѯ--</option>
                    <option value="רҵ���޿�">רҵ���޿�</option>
                    <option value="רҵѡ�޿�">רҵѡ�޿�</option>
                    <option value="����ѡ�޿�">����ѡ�޿�</option>
                    <option value="�������޿�">�������޿�</option>
                 </select>
        <input type="submit" value="��ѯ">
		</html:form>
	</center>	
	</body>
</html>

