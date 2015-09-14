package ar.com.ix.shelters.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

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
}
