package ar.com.ix.shelters.web;
import ar.com.ix.shelters.model.Localidad;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Localidad.class, beanName = "localidadBean")
public class LocalidadBean {
}
