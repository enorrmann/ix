package ar.com.ix.shelters.web;
import ar.com.ix.shelters.model.Tecnico;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Tecnico.class, beanName = "tecnicoBean")
public class TecnicoBean {
}
