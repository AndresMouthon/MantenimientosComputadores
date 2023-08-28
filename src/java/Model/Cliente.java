package Model;
/*
 * @author Andres Mouthon
 */
public class Cliente {
    
     private String documento;
     private String nombre;
     private String apellido;
     
     public Cliente(String documento){
        this.documento = documento;
     }

    public Cliente(String documento, String nombre, String apellido) {
        this.documento = documento;
        this.nombre = nombre;
        this.apellido = apellido;
    }

    public String getDocumento() {
        return documento;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
     
}
