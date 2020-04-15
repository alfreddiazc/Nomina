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
        <style>

            th, td {
                width: 25%;
                text-align: left;
                vertical-align: top;
                border: 1px solid #000;
                border-collapse: collapse;
                padding: 0.3em;
                caption-side: bottom;
            }
            caption {
                padding: 0.3em;
            }
            table {
                border-collapse: collapse;
                border-spacing: 0;
                width: 100%;
                border: 1px solid #ddd;
            }

            th, td {
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even){background-color: #f2f2f2}


        </style>
    </head>
    <body>
        <%
            Empleado e = (Empleado) request.getAttribute("empleado");
        %>
        <div class="col-md-12">
                    <a href="./index.html">Home</a>
        </div>
        <h1>Empleado:</h1>
        <div style="overflow-x:auto;">
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

                    <td><%= e.getCodigo()%></td>
                    <td><%= e.getCedula()%></td>
                    <td><%= e.getNombre()%></td>
                    <td><%= e.getFechanacimiento()%></td>
                    <td><%= e.getFechaingreso()%></td>
                    <td><%= e.getFecharetiro()%></td>

                </tr>

            </table>
        </div>
    </body>
</html>
