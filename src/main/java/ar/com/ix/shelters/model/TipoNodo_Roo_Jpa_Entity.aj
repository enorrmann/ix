// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.model;

import ar.com.ix.shelters.model.TipoNodo;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect TipoNodo_Roo_Jpa_Entity {
    
    declare @type: TipoNodo: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long TipoNodo.id;
    
    @Version
    @Column(name = "version")
    private Integer TipoNodo.version;
    
    public Long TipoNodo.getId() {
        return this.id;
    }
    
    public void TipoNodo.setId(Long id) {
        this.id = id;
    }
    
    public Integer TipoNodo.getVersion() {
        return this.version;
    }
    
    public void TipoNodo.setVersion(Integer version) {
        this.version = version;
    }
    
}
