package ar.com.ix.shelters.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Tecnico {

    /**
     */
    private String nombre;

    /**
     */
    private String domicilio;

    /**
     */
    private String celular;

    /**
     */
    private String telefonoAlternativo;

    /**
     */
    private String grupoSanguineo;

    /**
     */
    @ManyToOne
    private Localidad localidad;
}
