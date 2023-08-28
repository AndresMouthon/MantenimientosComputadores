package Model;
/**
@author Andres Mouthon
 */
public class Mantenimiento {
    private Integer id;
    private String descripcion;
    private String equipo;
    private Double precio;
    private Cliente cliente;
    private String fechaMantenimiento;

    public Mantenimiento(Integer id) {
        this.id = id;
    }

    public Mantenimiento(Integer id, String descripcion, Double precio) {
        this.id = id;
        this.descripcion = descripcion;
        this.precio = precio;
    }

    public Integer getId() {
        return id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public Double getPrecio() {
        return precio;
    }

    public String getEquipo() {
        return equipo;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setEquipo(String equipo) {
        this.equipo = equipo;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public String getFechaMantenimiento() {
        return fechaMantenimiento;
    }

    public void setFechaMantenimiento(String fechaMantenimiento) {
        this.fechaMantenimiento = fechaMantenimiento;
    }
    
}
