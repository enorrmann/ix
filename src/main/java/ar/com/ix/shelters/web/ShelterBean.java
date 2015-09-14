package ar.com.ix.shelters.web;
import ar.com.ix.shelters.model.Shelter;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Shelter.class, beanName = "shelterBean")
public class ShelterBean {
}
