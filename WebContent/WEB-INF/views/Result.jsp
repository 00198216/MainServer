<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
</head>
<body>
   <table border="1">
     <tr>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>Fecha de Nacimiento</th>
        <th>Carrera</th>
        <th>Experience</th>
     </tr>
     
     <tr>
        <th>${student.name}</th>
        <th>${student.lastName}</th>
        <th>${student.bDate}</th>
        <th>${student.career}</th>
        <th>${student.experience}</th>
     </tr>
   </table>
   
   <c:out value="This is an C:out example: "/>
   <c:out value="${student.name}"/>
   
   <br>
   <c:set var = "Name" scope = "session" value = "${student.name}"/>
   <c:if test="${Name.equals('Sebas') }">
   <c:out value="This is an C:if and C:set example "/>
   </c:if>

</body>
</html>