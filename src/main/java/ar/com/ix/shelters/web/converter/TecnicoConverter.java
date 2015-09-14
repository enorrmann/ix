package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.Tecnico;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Tecnico.class)
public class TecnicoConverter implements Converter {
}
