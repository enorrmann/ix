package ar.com.ix.shelters.web;
import ar.com.ix.shelters.model.Zona;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Zona.class, beanName = "zonaBean")
public class ZonaBean {
}
