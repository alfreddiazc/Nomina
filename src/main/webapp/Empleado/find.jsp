<%-- 
    Document   : find
    Created on : 14/04/2020, 05:27:23 PM
    Author     : USUARIO
--%>

<%@page import="DTO.Empleado"%>
<%@page import="negocio.Nomina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleado </title>
    </head>
    <body>
          <%
            Empleado e= (Empleado)request.getAttribute("empleado");
        %>
        <h1>Empleado:</h1>

        <table style="width:100%">
            <tr>
                <th>CODIGO</th>
                <th>CEDULA</th>
                <th>NOMBRE</th>
                <th>FECHA DE NACIMIENTO</th>
                <th>FECHA DE INGRESO</th>
                <th>FECHA DE RETIRO</th>
            </tr>
            <tr>
                
                <td><%= e.getCodigo() %></td>
                <td><%= e.getCedula() %></td>
                <td><%= e.getNombre() %></td>
                <td><%= e.getFechanacimiento()%></td>
                <td><%= e.getFechaingreso()%></td>
                <td><%= e.getFecharetiro()%></td>
                
               </tr>
            
        </table>
    </body>
</html>
