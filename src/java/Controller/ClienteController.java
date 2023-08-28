package Controller;

import Model.Cliente;
import java.util.ArrayList;
import java.util.List;

/*
* @author Andres Mouthon
*/
public class ClienteController {
    
    private static List<Cliente> listaCliente;
    
    private List verificarLista(){
        if (listaCliente == null) {
            listaCliente = new ArrayList<>();
        }
        return listaCliente;
    }
    public void registrarCliente(Cliente cliente){
        verificarLista().add(cliente);
    }
    public List getClientes (){
        return verificarLista();
    }
    public boolean verificarCliente(Cliente clienteVerificar){
        List<Cliente> clientes = verificarLista();
        boolean resultado = true; 
        for (Cliente cliente : clientes) {
            if (cliente.getDocumento().equals(clienteVerificar.getDocumento())) {
                resultado = false;
                break;
            } else {
                resultado = true;
            }
        }
        return resultado;
    }
    public Cliente getByDocumento(String documento){
        Cliente clienteBuscar = null;
        List<Cliente> clientes = verificarLista();
        for (Cliente cliente : clientes) {
            if (cliente.getDocumento().equals(documento)) {
                clienteBuscar = cliente;
                break;
            }
        }
        return clienteBuscar;
    }
}
