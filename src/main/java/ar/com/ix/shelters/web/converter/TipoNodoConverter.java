package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.TipoNodo;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = TipoNodo.class)
public class TipoNodoConverter implements Converter {
}
