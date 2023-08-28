package Controller;

import Model.Mantenimiento;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Andres Mouthon
 */
public class MantenimientoController {
    
    private static List<Mantenimiento> listaMantenimiento;
    
    private List verificarLista(){
        if (listaMantenimiento == null) {
            listaMantenimiento = new ArrayList<>();
        }
        return listaMantenimiento;
    }
    
    public List getMantenimiento(){
        return verificarLista();
    }
    
    public Double generarPrecio(String mantenimiento) {
        Double precio;
        switch (mantenimiento) {
            case "soporteTecnico":
                precio = 50.000d;
                break;
            case "instalacionSoftware":
                precio = 100.000d;
                break;
            default:
                precio = 150.000d;
                break;
        }
        return precio;
    }
    
    public String generarDescripcion(String mantenimiento) {
        String descripcion;
        switch (mantenimiento) {
            case "soporteTecnico":
                descripcion = "Soporte tecnico";
                break;
            case "instalacionSoftware":
                descripcion = "Instalacion de software";
                break;
            default:
                descripcion = "Otros";
                break;
        }
        return descripcion;
    }
    
    public void registrarMantenimiento(Mantenimiento mantenimiento){
        verificarLista().add(mantenimiento);
    }
    
    public List mostrarMantenimientos (String documento){
        List<Mantenimiento> listaVerificada = verificarLista();
        List<Mantenimiento> listaMantenimientosBuscados = new ArrayList<>();
        for (Mantenimiento mantenimiento: listaVerificada) {
            if (mantenimiento.getCliente().getDocumento().equals(documento)) {
                listaMantenimientosBuscados.add(mantenimiento);
            }
        }
        return listaMantenimientosBuscados;
    }
}
