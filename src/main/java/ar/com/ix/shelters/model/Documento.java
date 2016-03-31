package ar.com.ix.shelters.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public abstract class Documento {

    /**
     */
    private String periodo;

    /**
     */
    @ManyToOne
    private Tecnico responsable;

    /**
     */
    private String link;
}
