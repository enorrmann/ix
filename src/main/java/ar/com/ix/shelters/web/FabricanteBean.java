package ar.com.ix.shelters.web;
import ar.com.ix.shelters.model.Fabricante;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Fabricante.class, beanName = "fabricanteBean")
public class FabricanteBean {
}
