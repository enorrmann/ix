package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.Tarea;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Tarea.class)
public class TareaConverter implements Converter {
}
