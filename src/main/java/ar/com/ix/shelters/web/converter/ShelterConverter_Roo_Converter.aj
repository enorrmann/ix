// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.web.converter;

import ar.com.ix.shelters.model.Shelter;
import ar.com.ix.shelters.web.converter.ShelterConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.FacesConverter;

privileged aspect ShelterConverter_Roo_Converter {
    
    declare @type: ShelterConverter: @FacesConverter("ar.com.ix.shelters.web.converter.ShelterConverter");
    
    public Object ShelterConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Long id = Long.parseLong(value);
        return Shelter.findShelter(id);
    }
    
    public String ShelterConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof Shelter ? ((Shelter) value).getId().toString() : "";
    }
    
}
