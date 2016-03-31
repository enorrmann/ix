package ar.com.ix.shelters.model;

import ar.com.ix.shelters.model.Informe;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Informe_Roo_Jpa_ActiveRecord_Custom {
    
    public static List<Informe> Informe.findInformesByIdTipo(Long idTipoInforme) {
        Query query = entityManager().createQuery("SELECT o FROM Informe o where o.tipoInforme.id = :pId", Informe.class);
        query.setParameter("pId",idTipoInforme);
        return query.getResultList();
    }
}
