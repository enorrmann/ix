// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.web;

import ar.com.ix.shelters.model.Fabricante;
import ar.com.ix.shelters.web.FabricanteBean;
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

privileged aspect FabricanteBean_Roo_ManagedBean {
    
    declare @type: FabricanteBean: @ManagedBean(name = "fabricanteBean");
    
    declare @type: FabricanteBean: @SessionScoped;
    
    private String FabricanteBean.name = "Fabricantes";
    
    private Fabricante FabricanteBean.fabricante;
    
    private List<Fabricante> FabricanteBean.allFabricantes;
    
    private boolean FabricanteBean.dataVisible = false;
    
    private List<String> FabricanteBean.columns;
    
    private HtmlPanelGrid FabricanteBean.createPanelGrid;
    
    private HtmlPanelGrid FabricanteBean.editPanelGrid;
    
    private HtmlPanelGrid FabricanteBean.viewPanelGrid;
    
    private boolean FabricanteBean.createDialogVisible = false;
    
    @PostConstruct
    public void FabricanteBean.init() {
        columns = new ArrayList<String>();
        columns.add("nombre");
    }
    
    public String FabricanteBean.getName() {
        return name;
    }
    
    public List<String> FabricanteBean.getColumns() {
        return columns;
    }
    
    public List<Fabricante> FabricanteBean.getAllFabricantes() {
        return allFabricantes;
    }
    
    public void FabricanteBean.setAllFabricantes(List<Fabricante> allFabricantes) {
        this.allFabricantes = allFabricantes;
    }
    
    public String FabricanteBean.findAllFabricantes() {
        allFabricantes = Fabricante.findAllFabricantes();
        dataVisible = !allFabricantes.isEmpty();
        return null;
    }
    
    public boolean FabricanteBean.isDataVisible() {
        return dataVisible;
    }
    
    public void FabricanteBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid FabricanteBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void FabricanteBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid FabricanteBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void FabricanteBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid FabricanteBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void FabricanteBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid FabricanteBean.populateCreatePanel() {
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
        nombreCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{fabricanteBean.fabricante.nombre}", String.class));
        nombreCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(nombreCreateInput);
        
        Message nombreCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nombreCreateInputMessage.setId("nombreCreateInputMessage");
        nombreCreateInputMessage.setFor("nombreCreateInput");
        nombreCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nombreCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid FabricanteBean.populateEditPanel() {
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
        nombreEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{fabricanteBean.fabricante.nombre}", String.class));
        nombreEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(nombreEditInput);
        
        Message nombreEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nombreEditInputMessage.setId("nombreEditInputMessage");
        nombreEditInputMessage.setFor("nombreEditInput");
        nombreEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nombreEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid FabricanteBean.populateViewPanel() {
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
        nombreValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{fabricanteBean.fabricante.nombre}", String.class));
        htmlPanelGrid.getChildren().add(nombreValue);
        
        return htmlPanelGrid;
    }
    
    public Fabricante FabricanteBean.getFabricante() {
        if (fabricante == null) {
            fabricante = new Fabricante();
        }
        return fabricante;
    }
    
    public void FabricanteBean.setFabricante(Fabricante fabricante) {
        this.fabricante = fabricante;
    }
    
    public String FabricanteBean.onEdit() {
        return null;
    }
    
    public boolean FabricanteBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void FabricanteBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String FabricanteBean.displayList() {
        createDialogVisible = false;
        findAllFabricantes();
        return "fabricante";
    }
    
    public String FabricanteBean.displayCreateDialog() {
        fabricante = new Fabricante();
        createDialogVisible = true;
        return "fabricante";
    }
    
    public String FabricanteBean.persist() {
        String message = "";
        if (fabricante.getId() != null) {
            fabricante.merge();
            message = "message_successfully_updated";
        } else {
            fabricante.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "Fabricante");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllFabricantes();
    }
    
    public String FabricanteBean.delete() {
        fabricante.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "Fabricante");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllFabricantes();
    }
    
    public void FabricanteBean.reset() {
        fabricante = null;
        createDialogVisible = false;
    }
    
    public void FabricanteBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
