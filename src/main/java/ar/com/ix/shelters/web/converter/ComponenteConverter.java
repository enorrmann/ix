package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.Componente;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Componente.class)
public class ComponenteConverter implements Converter {
}
