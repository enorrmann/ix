package ar.com.ix.shelters.web;
import ar.com.ix.shelters.model.Componente;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Componente.class, beanName = "componenteBean")
public class ComponenteBean {
}
