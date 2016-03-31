// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.model;

import ar.com.ix.shelters.model.Relevamiento;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Relevamiento_Roo_Jpa_ActiveRecord {
    
    public static final List<String> Relevamiento.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static long Relevamiento.countRelevamientoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Relevamiento o", Long.class).getSingleResult();
    }
    
    public static List<Relevamiento> Relevamiento.findAllRelevamientoes() {
        return entityManager().createQuery("SELECT o FROM Relevamiento o", Relevamiento.class).getResultList();
    }
    
    public static List<Relevamiento> Relevamiento.findAllRelevamientoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Relevamiento o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Relevamiento.class).getResultList();
    }
    
    public static Relevamiento Relevamiento.findRelevamiento(Long id) {
        if (id == null) return null;
        return entityManager().find(Relevamiento.class, id);
    }
    
    public static List<Relevamiento> Relevamiento.findRelevamientoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Relevamiento o", Relevamiento.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Relevamiento> Relevamiento.findRelevamientoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Relevamiento o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Relevamiento.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public Relevamiento Relevamiento.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Relevamiento merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
