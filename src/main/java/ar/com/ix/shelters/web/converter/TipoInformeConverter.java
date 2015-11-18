package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.TipoInforme;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = TipoInforme.class)
public class TipoInformeConverter implements Converter {
}
