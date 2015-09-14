package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.Shelter;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Shelter.class)
public class ShelterConverter implements Converter {
}
