/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio;

import DAO.Conexion;
import DAO.EmpleadoJpaController;
import DTO.Empleado;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public class Nomina {
    Conexion con = Conexion.getConexion();
    EmpleadoJpaController empleadoDAO = new EmpleadoJpaController(con.getBd());
    List<Empleado> empleado = empleadoDAO.findEmpleadoEntities();

    public Nomina() {
    }
    
    public  boolean  insertarEmpleado(String codigo,String cedula,String nombre,String fechnac,String  feching,String  fechret) throws ParseException{
        
        Empleado e=new Empleado();
        e.setCodigo(codigo);
        e.setCedula(cedula);
        e.setNombre(nombre);
        e.setFechanacimiento(this.crearFecha(fechnac));
        e.setFechaingreso(this.crearFecha(feching));
        e.setFecharetiro(this.crearFecha(fechret));
        
        try {
            empleadoDAO.create(e);
            return true;
        } catch (Exception err) {
            System.err.println(err.getMessage());
        }
        return false;
    }
    public Empleado FindEmpleado(String cod){
        return empleadoDAO.findEmpleado(cod);
    }
    public List<Empleado> getEmpleados(){
        return empleado;
    }
    private Date crearFecha(String fecha) throws ParseException {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
        Date date = formatter.parse(fecha);
        return date;
    }
}
