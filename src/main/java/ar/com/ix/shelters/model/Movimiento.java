package ar.com.ix.shelters.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Movimiento {

    /**
     */
    @ManyToOne
    private Componente componente;

    /**
     */
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date fechaEnvio;

    /**
     */
    @ManyToOne
    private Shelter shelterDestino;

    /**
     */
    private String observaciones;

    /**
     */
    @ManyToOne
    private Tecnico destinatario;
}
