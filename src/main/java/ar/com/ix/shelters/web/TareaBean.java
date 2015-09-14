package ar.com.ix.shelters.web;
import ar.com.ix.shelters.model.Tarea;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Tarea.class, beanName = "tareaBean")
public class TareaBean {
}
