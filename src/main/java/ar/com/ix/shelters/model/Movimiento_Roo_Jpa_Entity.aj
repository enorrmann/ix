// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.model;

import ar.com.ix.shelters.model.Movimiento;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Movimiento_Roo_Jpa_Entity {
    
    declare @type: Movimiento: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Movimiento.id;
    
    @Version
    @Column(name = "version")
    private Integer Movimiento.version;
    
    public Long Movimiento.getId() {
        return this.id;
    }
    
    public void Movimiento.setId(Long id) {
        this.id = id;
    }
    
    public Integer Movimiento.getVersion() {
        return this.version;
    }
    
    public void Movimiento.setVersion(Integer version) {
        this.version = version;
    }
    
}
