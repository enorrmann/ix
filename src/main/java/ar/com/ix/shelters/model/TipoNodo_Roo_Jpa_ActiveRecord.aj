// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.model;

import ar.com.ix.shelters.model.TipoNodo;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TipoNodo_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TipoNodo.entityManager;
    
    public static final List<String> TipoNodo.fieldNames4OrderClauseFilter = java.util.Arrays.asList("nombre");
    
    public static final EntityManager TipoNodo.entityManager() {
        EntityManager em = new TipoNodo().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TipoNodo.countTipoNodoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TipoNodo o", Long.class).getSingleResult();
    }
    
    public static List<TipoNodo> TipoNodo.findAllTipoNodoes() {
        return entityManager().createQuery("SELECT o FROM TipoNodo o", TipoNodo.class).getResultList();
    }
    
    public static List<TipoNodo> TipoNodo.findAllTipoNodoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TipoNodo o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TipoNodo.class).getResultList();
    }
    
    public static TipoNodo TipoNodo.findTipoNodo(Long id) {
        if (id == null) return null;
        return entityManager().find(TipoNodo.class, id);
    }
    
    public static List<TipoNodo> TipoNodo.findTipoNodoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TipoNodo o", TipoNodo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<TipoNodo> TipoNodo.findTipoNodoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TipoNodo o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TipoNodo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TipoNodo.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TipoNodo.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TipoNodo attached = TipoNodo.findTipoNodo(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TipoNodo.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TipoNodo.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TipoNodo TipoNodo.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TipoNodo merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
