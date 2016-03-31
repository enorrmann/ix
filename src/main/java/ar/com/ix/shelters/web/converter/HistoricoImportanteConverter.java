package ar.com.ix.shelters.web.converter;
import ar.com.ix.shelters.model.HistoricoImportante;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = HistoricoImportante.class)
public class HistoricoImportanteConverter implements Converter {
}
