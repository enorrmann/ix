package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.Departamento;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Departamento.class)
public class DepartamentoConverter implements Converter {
}
