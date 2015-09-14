package ar.com.ix.shelters.web;
import ar.com.ix.shelters.model.Departamento;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Departamento.class, beanName = "departamentoBean")
public class DepartamentoBean {
}
