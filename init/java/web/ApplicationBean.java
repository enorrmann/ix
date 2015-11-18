package ar.com.ix.shelters.web;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import ar.com.ix.shelters.web.ApplicationBean;
import javax.annotation.PostConstruct;
import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.faces.application.Application;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;
import org.primefaces.component.menuitem.MenuItem;
import org.primefaces.component.submenu.Submenu;
import org.primefaces.model.DefaultMenuModel;
import org.primefaces.model.MenuModel;
import org.springframework.roo.addon.jsf.application.RooJsfApplicationBean;

@RooJsfApplicationBean
public class ApplicationBean {

    public String getColumnName(String column) {
        if (column == null || column.length() == 0) {
            return column;
        }
        final Pattern p = Pattern.compile("[A-Z][^A-Z]*");
        final Matcher m = p.matcher(Character.toUpperCase(column.charAt(0)) + column.substring(1));
        final StringBuilder builder = new StringBuilder();
        while (m.find()) {
            builder.append(m.group()).append(" ");
        }
        return builder.toString().trim();
    }

private MenuModel menuModel;

 @PostConstruct
 public void init() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        menuModel = new DefaultMenuModel();
        Submenu submenu;
        MenuItem item;
        
        submenu = new Submenu();
        submenu.setId("shelterSubmenu");
        submenu.setLabel("Shelters");
        item = new MenuItem();
        item.setId("createShelterMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create} Shelter", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{shelterBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listShelterMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list} Shelters", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{shelterBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);

        /*submenu = new Submenu();
        submenu.setId("tipoNodoSubmenu");
        submenu.setLabel("TipoNodo");*/
        item = new MenuItem();
        item.setId("createTipoNodoMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create} Tipo Nodo", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{tipoNodoBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listTipoNodoMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list} Tipo Nodo", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{tipoNodoBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);

        submenu = new Submenu();
        submenu.setId("informeSubmenu");
        submenu.setLabel("Informe");
        item = new MenuItem();
        item.setId("createInformeMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{informeBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listInformeMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{informeBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);

        submenu = new Submenu();
        submenu.setId("componenteSubmenu");
        submenu.setLabel("Stock");
        item = new MenuItem();
        item.setId("createComponenteMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "Nuevo componente", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{componenteBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listComponenteMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list} Componentes", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{componenteBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);

        /*submenu = new Submenu();
        submenu.setId("fabricanteSubmenu");
        submenu.setLabel("Fabricante");*/
        item = new MenuItem();
        item.setId("createFabricanteMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create} Fabricante", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{fabricanteBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listFabricanteMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list} Fabricantes", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{fabricanteBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);

        submenu = new Submenu();
        submenu.setId("clienteSubmenu");
        submenu.setLabel("Cliente");
        item = new MenuItem();
        item.setId("createClienteMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{clienteBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listClienteMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{clienteBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);
        
        submenu = new Submenu();
        submenu.setId("departamentoSubmenu");
        submenu.setLabel("Ubicacion");
        item = new MenuItem();
        item.setId("createDepartamentoMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create} Departamento", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{departamentoBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listDepartamentoMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list} Departamentos", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{departamentoBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);

        /*submenu = new Submenu();
        submenu.setId("localidadSubmenu");
        submenu.setLabel("Localidad");*/
        item = new MenuItem();
        item.setId("createLocalidadMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create} Localidad", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{localidadBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listLocalidadMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list} Localidades", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{localidadBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);
        
        /*submenu = new Submenu();
        submenu.setId("provinciaSubmenu");
        submenu.setLabel("Provincia");*/
        item = new MenuItem();
        item.setId("createProvinciaMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create} Provincia", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{provinciaBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listProvinciaMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list} Provincias", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{provinciaBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);

        /*submenu = new Submenu();
        submenu.setId("zonaSubmenu");
        submenu.setLabel("Zona");*/
        item = new MenuItem();
        item.setId("createZonaMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create} Zona", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{zonaBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listZonaMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list} Zonas", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{zonaBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);

        submenu = new Submenu();
        submenu.setId("movimientoSubmenu");
        submenu.setLabel("Movimiento");
        item = new MenuItem();
        item.setId("createMovimientoMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{movimientoBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listMovimientoMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{movimientoBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);
        
        submenu = new Submenu();
        submenu.setId("tareaSubmenu");
        submenu.setLabel("Tarea");
        item = new MenuItem();
        item.setId("createTareaMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create} Tarea", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{tareaBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listTareaMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list} Tareas", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{tareaBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);

        /*submenu = new Submenu();
        submenu.setId("estadoTareaSubmenu");
        submenu.setLabel("EstadoTarea");*/
        item = new MenuItem();
        item.setId("createEstadoTareaMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create} Estado Tarea", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{estadoTareaBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listEstadoTareaMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list} Estado Tarea", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{estadoTareaBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);
        
        
        submenu = new Submenu();
        submenu.setId("tecnicoSubmenu");
        submenu.setLabel("Tecnico");
        item = new MenuItem();
        item.setId("createTecnicoMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{tecnicoBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listTecnicoMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{tecnicoBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);
    }
}