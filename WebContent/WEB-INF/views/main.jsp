<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/Result" method="post">

 <label>Nombre:</label><input name="name" type="text">
 <label>Apellido:</label><input name="lastName" type="text">
 <label>Fecha de Nacimiento:</label><input name="bDate" type="text">
 <label>Carrera:</label><input name="career" type="text">
 <label>Experiencia:</label><input name="experience" type="text">
  
  <input type="submit" value="Enviar">
  
</form>
</body>
</html>