package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.Zona;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Zona.class)
public class ZonaConverter implements Converter {
}
