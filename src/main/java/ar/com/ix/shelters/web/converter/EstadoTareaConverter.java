package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.EstadoTarea;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = EstadoTarea.class)
public class EstadoTareaConverter implements Converter {
}
