package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.Cliente;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Cliente.class)
public class ClienteConverter implements Converter {
}
