// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.web;

import ar.com.ix.shelters.model.TipoNodo;
import ar.com.ix.shelters.web.TipoNodoBean;
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

privileged aspect TipoNodoBean_Roo_ManagedBean {
    
    declare @type: TipoNodoBean: @ManagedBean(name = "tipoNodoBean");
    
    declare @type: TipoNodoBean: @SessionScoped;
    
    private String TipoNodoBean.name = "TipoNodoes";
    
    private TipoNodo TipoNodoBean.tipoNodo;
    
    private List<TipoNodo> TipoNodoBean.allTipoNodoes;
    
    private boolean TipoNodoBean.dataVisible = false;
    
    private List<String> TipoNodoBean.columns;
    
    private HtmlPanelGrid TipoNodoBean.createPanelGrid;
    
    private HtmlPanelGrid TipoNodoBean.editPanelGrid;
    
    private HtmlPanelGrid TipoNodoBean.viewPanelGrid;
    
    private boolean TipoNodoBean.createDialogVisible = false;
    
    @PostConstruct
    public void TipoNodoBean.init() {
        columns = new ArrayList<String>();
        columns.add("nombre");
    }
    
    public String TipoNodoBean.getName() {
        return name;
    }
    
    public List<String> TipoNodoBean.getColumns() {
        return columns;
    }
    
    public List<TipoNodo> TipoNodoBean.getAllTipoNodoes() {
        return allTipoNodoes;
    }
    
    public void TipoNodoBean.setAllTipoNodoes(List<TipoNodo> allTipoNodoes) {
        this.allTipoNodoes = allTipoNodoes;
    }
    
    public String TipoNodoBean.findAllTipoNodoes() {
        allTipoNodoes = TipoNodo.findAllTipoNodoes();
        dataVisible = !allTipoNodoes.isEmpty();
        return null;
    }
    
    public boolean TipoNodoBean.isDataVisible() {
        return dataVisible;
    }
    
    public void TipoNodoBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid TipoNodoBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void TipoNodoBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid TipoNodoBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void TipoNodoBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid TipoNodoBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void TipoNodoBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid TipoNodoBean.populateCreatePanel() {
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
        nombreCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{tipoNodoBean.tipoNodo.nombre}", String.class));
        nombreCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(nombreCreateInput);
        
        Message nombreCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nombreCreateInputMessage.setId("nombreCreateInputMessage");
        nombreCreateInputMessage.setFor("nombreCreateInput");
        nombreCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nombreCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid TipoNodoBean.populateEditPanel() {
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
        nombreEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{tipoNodoBean.tipoNodo.nombre}", String.class));
        nombreEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(nombreEditInput);
        
        Message nombreEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nombreEditInputMessage.setId("nombreEditInputMessage");
        nombreEditInputMessage.setFor("nombreEditInput");
        nombreEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nombreEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid TipoNodoBean.populateViewPanel() {
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
        nombreValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{tipoNodoBean.tipoNodo.nombre}", String.class));
        htmlPanelGrid.getChildren().add(nombreValue);
        
        return htmlPanelGrid;
    }
    
    public TipoNodo TipoNodoBean.getTipoNodo() {
        if (tipoNodo == null) {
            tipoNodo = new TipoNodo();
        }
        return tipoNodo;
    }
    
    public void TipoNodoBean.setTipoNodo(TipoNodo tipoNodo) {
        this.tipoNodo = tipoNodo;
    }
    
    public String TipoNodoBean.onEdit() {
        return null;
    }
    
    public boolean TipoNodoBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void TipoNodoBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String TipoNodoBean.displayList() {
        createDialogVisible = false;
        findAllTipoNodoes();
        return "tipoNodo";
    }
    
    public String TipoNodoBean.displayCreateDialog() {
        tipoNodo = new TipoNodo();
        createDialogVisible = true;
        return "tipoNodo";
    }
    
    public String TipoNodoBean.persist() {
        String message = "";
        if (tipoNodo.getId() != null) {
            tipoNodo.merge();
            message = "message_successfully_updated";
        } else {
            tipoNodo.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "TipoNodo");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllTipoNodoes();
    }
    
    public String TipoNodoBean.delete() {
        tipoNodo.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "TipoNodo");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllTipoNodoes();
    }
    
    public void TipoNodoBean.reset() {
        tipoNodo = null;
        createDialogVisible = false;
    }
    
    public void TipoNodoBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}