package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.Capacitacion;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Capacitacion.class)
public class CapacitacionConverter implements Converter {
}
