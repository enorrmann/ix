package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.Informe;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Informe.class)
public class InformeConverter implements Converter {
}
