package ar.com.ix.shelters.web;
import ar.com.ix.shelters.model.Movimiento;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Movimiento.class, beanName = "movimientoBean")
public class MovimientoBean {
}
