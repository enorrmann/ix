package ar.com.ix.shelters.web;

import  org.primefaces.model.map.MapModel;
import org.primefaces.model.map.LatLng;
import org.primefaces.model.map.Marker;
import javax.faces.bean.ManagedBean;

@ManagedBean(name = "mapUtil")
public class MapUtil {

    public MapModel getMapModel(String coords){
        LatLng coord1 = new LatLng(getLat(coords), getLong(coords));
        MapModel simpleModel = new org.primefaces.model.map.DefaultMapModel();
        simpleModel.addOverlay(new Marker(coord1, "Shelter"));
        return simpleModel;
    }

    private double getLat(String coords){
        try {
            String[] parts = coords.split(",");
            double retVal = Double.parseDouble(parts[0]);
            return retVal;
        } catch (Exception e){
            return 0;
        }
    }
    private double getLong(String coords){
        try {
            String[] parts = coords.split(",");
            double retVal = Double.parseDouble(parts[1]);
            return retVal;
        } catch (Exception e){
            return 0;
        }
    }
}