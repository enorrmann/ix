package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.Provincia;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Provincia.class)
public class ProvinciaConverter implements Converter {
}
