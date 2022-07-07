<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer management Page</title>
<style>
	body{
		margin:0;
		padding:0;
	}
	
	h1 {
		padding:20px;
		margin-top:0;
	}

	table {
		border:1px solid #bbb;
	}
	
	th, td {
		padding: 10px 20px;
	}
	
	th {
		background: #3A5F0B;
		color: #fff;
	}
	
	tr:nth-child(odd) {
		background: #aaa;
	}
</style>
<script>
function del(id) {
	if (confirm("Do you really want to delete the customer?")==true) {
		  debugger
		  window.location.href = "deleteCustomer?id="+id;
		}
}
</script>
</head>
<body style="background:#ccc;font-family:Sans-serif">
	<center>
		<h1 style="background:#fd2345;color:#fff">CUSTOMER RELATIONSHIP MANAGEMENT</h1>
    <div align="center">
        <h2>Customer List</h2>
        <h3>
            <a href="newCustomer">Add Customer</a>
        </h3>
        <table>
 			<th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Action</th>
 
            <c:forEach var="customer" items="${customers}">
                <tr>
 					<td>${customer.fname}</td>
                    <td>${customer.lname}</td>
                    <td>${customer.email}</td>
                    <td><a href="editCustomer?id=${customer.id}">Update</a> | 
                        <a href="#" onclick="del(${customer.id})">Delete</a></td>
 
                </tr>
            </c:forEach>
        </table>
    </div>
    </center>
</body>
</html>