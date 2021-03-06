// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.web;

import ar.com.ix.shelters.model.Provincia;
import ar.com.ix.shelters.web.ProvinciaBean;
import ar.com.ix.shelters.web.util.MessageFactory;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.html.HtmlOutputText;
import javax.faces.component.html.HtmlPanelGrid;
import javax.faces.context.FacesContext;
import org.primefaces.component.inputtext.InputText;
import org.primefaces.component.message.Message;
import org.primefaces.component.outputlabel.OutputLabel;
import org.primefaces.context.RequestContext;
import org.primefaces.event.CloseEvent;

privileged aspect ProvinciaBean_Roo_ManagedBean {
    
    declare @type: ProvinciaBean: @ManagedBean(name = "provinciaBean");
    
    declare @type: ProvinciaBean: @SessionScoped;
    
    private String ProvinciaBean.name = "Provincias";
    
    private Provincia ProvinciaBean.provincia;
    
    private List<Provincia> ProvinciaBean.allProvincias;
    
    private boolean ProvinciaBean.dataVisible = false;
    
    private List<String> ProvinciaBean.columns;
    
    private HtmlPanelGrid ProvinciaBean.createPanelGrid;
    
    private HtmlPanelGrid ProvinciaBean.editPanelGrid;
    
    private HtmlPanelGrid ProvinciaBean.viewPanelGrid;
    
    private boolean ProvinciaBean.createDialogVisible = false;
    
    @PostConstruct
    public void ProvinciaBean.init() {
        columns = new ArrayList<String>();
        columns.add("nombre");
    }
    
    public String ProvinciaBean.getName() {
        return name;
    }
    
    public List<String> ProvinciaBean.getColumns() {
        return columns;
    }
    
    public List<Provincia> ProvinciaBean.getAllProvincias() {
        return allProvincias;
    }
    
    public void ProvinciaBean.setAllProvincias(List<Provincia> allProvincias) {
        this.allProvincias = allProvincias;
    }
    
    public String ProvinciaBean.findAllProvincias() {
        allProvincias = Provincia.findAllProvincias();
        dataVisible = !allProvincias.isEmpty();
        return null;
    }
    
    public boolean ProvinciaBean.isDataVisible() {
        return dataVisible;
    }
    
    public void ProvinciaBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid ProvinciaBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void ProvinciaBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid ProvinciaBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void ProvinciaBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid ProvinciaBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void ProvinciaBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid ProvinciaBean.populateCreatePanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel nombreCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        nombreCreateOutput.setFor("nombreCreateInput");
        nombreCreateOutput.setId("nombreCreateOutput");
        nombreCreateOutput.setValue("Nombre:");
        htmlPanelGrid.getChildren().add(nombreCreateOutput);
        
        InputText nombreCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        nombreCreateInput.setId("nombreCreateInput");
        nombreCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{provinciaBean.provincia.nombre}", String.class));
        nombreCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(nombreCreateInput);
        
        Message nombreCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nombreCreateInputMessage.setId("nombreCreateInputMessage");
        nombreCreateInputMessage.setFor("nombreCreateInput");
        nombreCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nombreCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid ProvinciaBean.populateEditPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel nombreEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        nombreEditOutput.setFor("nombreEditInput");
        nombreEditOutput.setId("nombreEditOutput");
        nombreEditOutput.setValue("Nombre:");
        htmlPanelGrid.getChildren().add(nombreEditOutput);
        
        InputText nombreEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        nombreEditInput.setId("nombreEditInput");
        nombreEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{provinciaBean.provincia.nombre}", String.class));
        nombreEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(nombreEditInput);
        
        Message nombreEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nombreEditInputMessage.setId("nombreEditInputMessage");
        nombreEditInputMessage.setFor("nombreEditInput");
        nombreEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nombreEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid ProvinciaBean.populateViewPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText nombreLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nombreLabel.setId("nombreLabel");
        nombreLabel.setValue("Nombre:");
        htmlPanelGrid.getChildren().add(nombreLabel);
        
        HtmlOutputText nombreValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nombreValue.setId("nombreValue");
        nombreValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{provinciaBean.provincia.nombre}", String.class));
        htmlPanelGrid.getChildren().add(nombreValue);
        
        return htmlPanelGrid;
    }
    
    public Provincia ProvinciaBean.getProvincia() {
        if (provincia == null) {
            provincia = new Provincia();
        }
        return provincia;
    }
    
    public void ProvinciaBean.setProvincia(Provincia provincia) {
        this.provincia = provincia;
    }
    
    public String ProvinciaBean.onEdit() {
        return null;
    }
    
    public boolean ProvinciaBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void ProvinciaBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String ProvinciaBean.displayList() {
        createDialogVisible = false;
        findAllProvincias();
        return "provincia";
    }
    
    public String ProvinciaBean.displayCreateDialog() {
        provincia = new Provincia();
        createDialogVisible = true;
        return "provincia";
    }
    
    public String ProvinciaBean.persist() {
        String message = "";
        if (provincia.getId() != null) {
            provincia.merge();
            message = "message_successfully_updated";
        } else {
            provincia.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "Provincia");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllProvincias();
    }
    
    public String ProvinciaBean.delete() {
        provincia.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "Provincia");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllProvincias();
    }
    
    public void ProvinciaBean.reset() {
        provincia = null;
        createDialogVisible = false;
    }
    
    public void ProvinciaBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
