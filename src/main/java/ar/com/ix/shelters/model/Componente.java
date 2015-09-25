package ar.com.ix.shelters.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Componente {

    /**
     */
    private String numeroItx;

    /**
     */
    private String descripcion;

    /**
     */
    private String numeroDeSerie;

    /**
     */
    @ManyToOne
    private Fabricante fabricante;

    /**
     */
    @ManyToOne
    private Shelter shelter;

    /**
     */
    private String observaciones;
}
