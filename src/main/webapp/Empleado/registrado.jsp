<%-- 
    Document   : registrado
    Created on : 14/04/2020, 09:26:32 AM
    Author     : USUARIO
--%>

<%@page import="DTO.Empleado"%>
<%@page import="java.util.List"%>
<%@page import="negocio.Nomina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Nomina n = new Nomina();

        %>
        <h1>Registro Exitoso!</h1>

        <table style="width:100%">
            <tr>
                <th>Cedula</th>
                <th>Nombre</th>
            </tr>
            <%  for (Empleado e : n.getEmpleados()) {

            %> <tr>
                <td><%= e.getCedula() %></td>
                <td><%= e.getNombre() %></td>
                
               </tr>
            <%}%>
        </table>
    </body>
</html>
