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
public class Tarea {

    /**
     */
    private String descripcion;

    /**
     */
    @ManyToOne
    private Tecnico responsable;

    /**
     */
    @ManyToOne
    private Shelter shelter;

    /**
     */
    @ManyToOne
    private EstadoTarea estado;

    /**
     */
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date fechaInicio;

    /**
     */
    private String horaInicio;

    /**
     */
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date fechaFin;

    /**
     */
    private String horaFin;
}
