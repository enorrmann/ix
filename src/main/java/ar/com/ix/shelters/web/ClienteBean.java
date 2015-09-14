package ar.com.ix.shelters.web;
import ar.com.ix.shelters.model.Cliente;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Cliente.class, beanName = "clienteBean")
public class ClienteBean {
}
