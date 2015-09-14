package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.Fabricante;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Fabricante.class)
public class FabricanteConverter implements Converter {
}
