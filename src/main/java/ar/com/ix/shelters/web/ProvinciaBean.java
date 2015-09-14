package ar.com.ix.shelters.web;
import ar.com.ix.shelters.model.Provincia;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Provincia.class, beanName = "provinciaBean")
public class ProvinciaBean {
}
