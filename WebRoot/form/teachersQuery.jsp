<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>teachersQuery.jsp</title>

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
	<center>
		<html:form action="/teachersQuery" target="bot" method="post">
		     ְ����:<input type="text" name="id" size="20">
              ����:<select name="department">
                    <option value="" selected>-�����Ų�ѯ-</option>
                    <option value="��ѧ��������ѧѧԺ">��ѧ��������ѧѧԺ</option>
                    <option value="��������ѧԺ">��������ѧԺ</option>
                    <option value="����ѧԺ">����ѧԺ</option>
                 </select>
              ְ��:<select name="post">
                    <option value="" selected>-��ְ�Ʋ�ѯ-</option>
                    <option value="����">����</option>
                    <option value="������">������</option>
                    <option value="��ʦ">��ʦ</option>
                    <option value="����">����</option>
                 </select>
              ����:<select name="age">
                    <option value="" selected>-�������ѯ-</option>
                    <option value=30>30-39</option>
                    <option value=40>40-49</option>
                    <option value=50>50-59</option>
                 </select>
        <input type="submit" value="��ѯ">
		</html:form>
	</center>	
	</body>
</html:html>
