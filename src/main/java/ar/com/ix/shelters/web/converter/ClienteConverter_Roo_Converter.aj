// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.web.converter;

import ar.com.ix.shelters.model.Cliente;
import ar.com.ix.shelters.web.converter.ClienteConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.FacesConverter;

privileged aspect ClienteConverter_Roo_Converter {
    
    declare @type: ClienteConverter: @FacesConverter("ar.com.ix.shelters.web.converter.ClienteConverter");
    
    public Object ClienteConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Long id = Long.parseLong(value);
        return Cliente.findCliente(id);
    }
    
    public String ClienteConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof Cliente ? ((Cliente) value).getId().toString() : "";
    }
    
}
