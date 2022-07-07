<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New/Edit Contact</title>
<style>
	body{
		margin:0;
		padding:0;
	}
	
	h1 {
		padding:20px;
		margin-top:0;
	}
</style>
</head>
<body style="background:#ccc;font-family:Sans-serif">
	<center>
		<h1 style="background:#fd2345;color:#fff">CUSTOMER RELATIONSHIP MANAGEMENT</h1>
    <div align="center">
        <h2>Save Customer</h2>
        <form:form action="saveCustomer" method="post" modelAttribute="customer">
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>First Name:</td>
                <td><form:input path="fname" /></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><form:input path="lname" /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><form:input path="email" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><a href="/SpringMVCHibernateCRUD/customers/">Back to list</a></td>
            </tr>
        </table>
        </form:form>
    </div>
    </center>
</body>
</html>