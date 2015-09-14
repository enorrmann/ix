package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.Ubicacion;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Ubicacion.class)
public class UbicacionConverter implements Converter {
}
