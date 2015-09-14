package ar.com.ix.shelters.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Cliente {

    /**
     */
    private String nombre;

    /**
     */
    private String domicilio;

    /**
     */
    private String email;

    /**
     */
    private String cuit;

    /**
     */
    private String telFax;
}
