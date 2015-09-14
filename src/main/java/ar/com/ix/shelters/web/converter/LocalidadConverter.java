package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.Localidad;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Localidad.class)
public class LocalidadConverter implements Converter {
}
