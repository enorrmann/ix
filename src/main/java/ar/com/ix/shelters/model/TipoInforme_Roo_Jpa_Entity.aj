// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.model;

import ar.com.ix.shelters.model.TipoInforme;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect TipoInforme_Roo_Jpa_Entity {
    
    declare @type: TipoInforme: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long TipoInforme.id;
    
    @Version
    @Column(name = "version")
    private Integer TipoInforme.version;
    
    public Long TipoInforme.getId() {
        return this.id;
    }
    
    public void TipoInforme.setId(Long id) {
        this.id = id;
    }
    
    public Integer TipoInforme.getVersion() {
        return this.version;
    }
    
    public void TipoInforme.setVersion(Integer version) {
        this.version = version;
    }
    
}
