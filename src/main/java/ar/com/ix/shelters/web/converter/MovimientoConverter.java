package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.Movimiento;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Movimiento.class)
public class MovimientoConverter implements Converter {
}
