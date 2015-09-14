// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.web.converter;

import ar.com.ix.shelters.model.Fabricante;
import ar.com.ix.shelters.web.converter.FabricanteConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.FacesConverter;

privileged aspect FabricanteConverter_Roo_Converter {
    
    declare @type: FabricanteConverter: @FacesConverter("ar.com.ix.shelters.web.converter.FabricanteConverter");
    
    public Object FabricanteConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Long id = Long.parseLong(value);
        return Fabricante.findFabricante(id);
    }
    
    public String FabricanteConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof Fabricante ? ((Fabricante) value).getId().toString() : "";
    }
    
}