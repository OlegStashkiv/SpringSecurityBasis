<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Snipe
  Date: 06.02.2023
  Time: 19:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Information For All Employees</title>
</head>
<body>
<h3>Information For All Employees</h3>
<br>
<br>

<security:authorize access="hasRole('HR')">
    Only for HR staff
    <input type="button" value="Salary" onclick="window.location.href = 'hr_info'">
</security:authorize>

<br>
<br>
<security:authorize access="hasRole('MANAGER')">
    Only for Managers
    <input type="button" value="Performance" onclick="window.location.href = 'manager_info'">
</security:authorize>
</body>
</html>
