<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html> 
	<head>
		<title>loginFrame</title>
	</head>
	<body><br>
	<table background="image/2.png" border="1" align="center" width="90%"><tr><td><div style="width:100%;height:100%;overflow:auto">
	<br><br><br><br><br><br><br><br><br><br><br>
	 <center><h1><font size="6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 --����Web�Ľ�ѧ����ϵͳ</font></h1></center>
	 <br> <br> <br> 
		<table align="center">
		
		<html:form action="/login" method="post">   
		    <tr><td>&nbsp;&nbsp;�û���: <html:text property="id"/><html:errors property="id"/></td>
		        <td>&nbsp;&nbsp;����: <html:password property="password"/><html:errors property="password"/>&nbsp;&nbsp;</td>
		    </tr>
		    <tr><td>&nbsp;&nbsp;&nbsp;
			       <input type="radio" name="type" value="student">ѧ��
			       <input type="radio" name="type" value="teacher">��ʦ
			       <input type="radio" name="type" value="manager">����Ա
			    </td>		
			    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			        <input type="submit" value="��½"/>&nbsp;&nbsp;<input type="reset" value="ȡ��"/>
			    </td>
			</tr>       
		</html:form>
	    </table>
	    <br><br><br><br><br><br><hr>
	    <table align="center">
	         <tr><td align="center" colspan="2">
			         ��Ȩ���� �Ͼ�����ѧ<br> 2012�� ������
                 </td>
             </tr>
        </table> 
        </div></td></tr></table>              
	</body>
</html>

