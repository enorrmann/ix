package ar.com.ix.shelters.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import java.util.List;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Shelter {

    /**
     */
    @ManyToOne
    private TipoNodo tipoNodo;

    /**
     */
    private String nodo;

    /**
     */
    private String codigoSitio;

    /**
     */
    private String modelo;

    /**
     */
    private String direccion;

    /**
     */
    private String observaciones;

    /**
     */
    @ManyToOne
    private Tecnico responsable;

    /**
     */
    @ManyToOne
    private Tecnico contactoApertura;

    /**
     */
    @ManyToOne
    private Localidad localidad;

    /**
     */
    private String coordenadas;

    public List<Componente> getComponentes() {
        return entityManager().createQuery("SELECT c FROM Componente c where c.shelter = :shelter", Componente.class)
            .setParameter("shelter",this)
            .getResultList();
    }
    public List<Informe> getInformes() {
        return entityManager().createQuery("SELECT i FROM Informe i where i.shelter = :shelter", Informe.class)
            .setParameter("shelter",this)
            .getResultList();
    }

}
