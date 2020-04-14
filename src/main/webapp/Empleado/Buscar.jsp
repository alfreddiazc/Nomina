<%-- 
    Document   : Buscar
    Created on : 14/04/2020, 10:54:26 AM
    Author     : USUARIO
--%>

<%@page import="negocio.Nomina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="../Buscar">
            <label >Digitar cedula del Empleado:</label>
            <input type="text"  name="cod">
            <button type="submit">Buscar</button>
        </form>
        
    </body>
</html>
