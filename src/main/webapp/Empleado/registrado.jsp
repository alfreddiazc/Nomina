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
        <title>Success</title>
        <link rel="sylesheet" href="css/style.css">

        <style>
            table {
                border-collapse: collapse;
                border-spacing: 0;
                width: 100%;
                border: 1px solid #ddd;
            }

            th, td {
                width: 25%;
                text-align: left;
                vertical-align: top;
                border: 1px solid #000;
                border-collapse: collapse;
                padding: 8px;
                caption-side: bottom;
            }
            caption {
                padding: 0.3em;
            }
            tr:nth-child(even){background-color: #f2f2f2}

        </style>

    </head>
    <body>
        <div class="col-md-12">
                    <a href="./index.html">Home</a>
            </div>
        <div class="container">
            

            <div style="overflow-x:auto;">
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
                        <td><%= e.getCedula()%></td>
                        <td><%= e.getNombre()%></td>

                    </tr>
                    <%}%>
                </table>
            </div>

        </div>
    </body>
</html>
