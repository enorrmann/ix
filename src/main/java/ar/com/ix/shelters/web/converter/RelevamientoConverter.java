package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.Relevamiento;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Relevamiento.class)
public class RelevamientoConverter implements Converter {
}
