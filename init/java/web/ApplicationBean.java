package ar.com.ix.shelters.web;

import ar.com.ix.shelters.model.TipoInforme;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.PostConstruct;
import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.faces.application.Application;
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
        item = createMenuItem("createShelterMenuItem", "#{messages.label_create} Shelter", "#{shelterBean.displayCreateDialog}", "ui-icon ui-icon-document");
        submenu.getChildren().add(item);
        item = createMenuItem("listShelterMenuItem", "#{messages.label_list} Shelters", "#{shelterBean.displayList}", "ui-icon ui-icon-folder-open");
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
        submenu.setLabel("Informes tecnicos y de red");
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
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list} Todos", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{informeBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        addTipoInformeItems(submenu);
        menuModel.addSubmenu(submenu);
        // tipo informe
        submenu = new Submenu();
        submenu.setId("tipoInformeSubmenu");
        submenu.setLabel("Tipos de informe");
        item = new MenuItem();
        item.setId("createTipoInformeMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create} Tipo informe", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{tipoInformeBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listTipoInformeMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list} Tipo informe", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{tipoInformeBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        //fin tipo informe
        menuModel.addSubmenu(submenu);
        //HISTORICO IMPORTANTE
        submenu = new Submenu();
        submenu.setId("historicoImportanteSubmenu");
        submenu.setLabel("Historicos Importantes");
        item = new MenuItem();
        item.setId("createHistoricoImportanteMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{historicoImportanteBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listHistoricoImportanteMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{historicoImportanteBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);

        // RELEVAMIENTOS
        submenu = new Submenu();
        submenu.setId("relevamientoSubmenu");
        submenu.setLabel("Relevamientos y Circuitos");
        item = new MenuItem();
        item.setId("createRelevamientoMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{relevamientoBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listRelevamientoMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{relevamientoBean.displayList}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-folder-open");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        menuModel.addSubmenu(submenu);        
        // CAPACITACIONES
        submenu = new Submenu();
        submenu.setId("capacitacionSubmenu");
        submenu.setLabel("Capacitaciones");
        item = new MenuItem();
        item.setId("createCapacitacionMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_create}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{capacitacionBean.displayCreateDialog}", String.class, new Class[0]));
        item.setIcon("ui-icon ui-icon-document");
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        submenu.getChildren().add(item);
        item = new MenuItem();
        item.setId("listCapacitacionMenuItem");
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{messages.label_list}", String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, "#{capacitacionBean.displayList}", String.class, new Class[0]));
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
        submenu.setLabel("Clientes");
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
        submenu.setLabel("Tareas");
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
        submenu.setLabel("Tecnicos");
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

    private MenuItem createMenuItem(String itemId, String valueExpression, String methodExpression, String icon){
        FacesContext facesContext = FacesContext.getCurrentInstance();
        Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();

        MenuItem item = new MenuItem();
        item.setId(itemId);
        item.setValueExpression("value", expressionFactory.createValueExpression(elContext, valueExpression, String.class));
        item.setActionExpression(expressionFactory.createMethodExpression(elContext, methodExpression, String.class, new Class[0]));
        item.setIcon(icon);
        item.setAjax(false);
        item.setAsync(false);
        item.setUpdate(":dataForm:data");
        return item;
    }
    
    private void addTipoInformeItems(Submenu submenu){
        List<TipoInforme> tipoInformeList = TipoInforme.findAllTipoInformes();
        MenuItem menuItem = null;
        for (TipoInforme unTipoInforme : tipoInformeList){
            menuItem = createMenuItem("listarInformeId"+unTipoInforme.getId(), unTipoInforme.getTipoInforme(), "#{informeBean.displayListById("+unTipoInforme.getId()+")}", "ui-icon ui-icon-folder-open");
            submenu.getChildren().add(menuItem);
            
        }
    }
}