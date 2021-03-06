// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.web;

import ar.com.ix.shelters.model.HistoricoImportante;
import ar.com.ix.shelters.model.Tecnico;
import ar.com.ix.shelters.web.HistoricoImportanteBean;
import ar.com.ix.shelters.web.converter.TecnicoConverter;
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
import org.primefaces.component.autocomplete.AutoComplete;
import org.primefaces.component.inputtext.InputText;
import org.primefaces.component.message.Message;
import org.primefaces.component.outputlabel.OutputLabel;
import org.primefaces.context.RequestContext;
import org.primefaces.event.CloseEvent;

privileged aspect HistoricoImportanteBean_Roo_ManagedBean {
    
    declare @type: HistoricoImportanteBean: @ManagedBean(name = "historicoImportanteBean");
    
    declare @type: HistoricoImportanteBean: @SessionScoped;
    
    private String HistoricoImportanteBean.name = "HistoricoImportantes";
    
    private HistoricoImportante HistoricoImportanteBean.historicoImportante;
    
    private List<HistoricoImportante> HistoricoImportanteBean.allHistoricoImportantes;
    
    private boolean HistoricoImportanteBean.dataVisible = false;
    
    private List<String> HistoricoImportanteBean.columns;
    
    private HtmlPanelGrid HistoricoImportanteBean.createPanelGrid;
    
    private HtmlPanelGrid HistoricoImportanteBean.editPanelGrid;
    
    private HtmlPanelGrid HistoricoImportanteBean.viewPanelGrid;
    
    private boolean HistoricoImportanteBean.createDialogVisible = false;
    
    @PostConstruct
    public void HistoricoImportanteBean.init() {
        columns = new ArrayList<String>();
        columns.add("periodo");
        columns.add("link");
    }
    
    public String HistoricoImportanteBean.getName() {
        return name;
    }
    
    public List<String> HistoricoImportanteBean.getColumns() {
        return columns;
    }
    
    public List<HistoricoImportante> HistoricoImportanteBean.getAllHistoricoImportantes() {
        return allHistoricoImportantes;
    }
    
    public void HistoricoImportanteBean.setAllHistoricoImportantes(List<HistoricoImportante> allHistoricoImportantes) {
        this.allHistoricoImportantes = allHistoricoImportantes;
    }
    
    public String HistoricoImportanteBean.findAllHistoricoImportantes() {
        allHistoricoImportantes = HistoricoImportante.findAllHistoricoImportantes();
        dataVisible = !allHistoricoImportantes.isEmpty();
        return null;
    }
    
    public boolean HistoricoImportanteBean.isDataVisible() {
        return dataVisible;
    }
    
    public void HistoricoImportanteBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid HistoricoImportanteBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void HistoricoImportanteBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid HistoricoImportanteBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void HistoricoImportanteBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid HistoricoImportanteBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void HistoricoImportanteBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid HistoricoImportanteBean.populateCreatePanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel periodoCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        periodoCreateOutput.setFor("periodoCreateInput");
        periodoCreateOutput.setId("periodoCreateOutput");
        periodoCreateOutput.setValue("Periodo:");
        htmlPanelGrid.getChildren().add(periodoCreateOutput);
        
        InputText periodoCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        periodoCreateInput.setId("periodoCreateInput");
        periodoCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{historicoImportanteBean.historicoImportante.periodo}", String.class));
        periodoCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(periodoCreateInput);
        
        Message periodoCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        periodoCreateInputMessage.setId("periodoCreateInputMessage");
        periodoCreateInputMessage.setFor("periodoCreateInput");
        periodoCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(periodoCreateInputMessage);
        
        OutputLabel responsableCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        responsableCreateOutput.setFor("responsableCreateInput");
        responsableCreateOutput.setId("responsableCreateOutput");
        responsableCreateOutput.setValue("Responsable:");
        htmlPanelGrid.getChildren().add(responsableCreateOutput);
        
        AutoComplete responsableCreateInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        responsableCreateInput.setId("responsableCreateInput");
        responsableCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{historicoImportanteBean.historicoImportante.responsable}", Tecnico.class));
        responsableCreateInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{historicoImportanteBean.completeResponsable}", List.class, new Class[] { String.class }));
        responsableCreateInput.setDropdown(true);
        responsableCreateInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "responsable", String.class));
        responsableCreateInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{responsable.nombre} #{responsable.domicilio} #{responsable.celular} #{responsable.telefonoAlternativo}", String.class));
        responsableCreateInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{responsable}", Tecnico.class));
        responsableCreateInput.setConverter(new TecnicoConverter());
        responsableCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(responsableCreateInput);
        
        Message responsableCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        responsableCreateInputMessage.setId("responsableCreateInputMessage");
        responsableCreateInputMessage.setFor("responsableCreateInput");
        responsableCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(responsableCreateInputMessage);
        
        OutputLabel linkCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        linkCreateOutput.setFor("linkCreateInput");
        linkCreateOutput.setId("linkCreateOutput");
        linkCreateOutput.setValue("Link:");
        htmlPanelGrid.getChildren().add(linkCreateOutput);
        
        InputText linkCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        linkCreateInput.setId("linkCreateInput");
        linkCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{historicoImportanteBean.historicoImportante.link}", String.class));
        linkCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(linkCreateInput);
        
        Message linkCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        linkCreateInputMessage.setId("linkCreateInputMessage");
        linkCreateInputMessage.setFor("linkCreateInput");
        linkCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(linkCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid HistoricoImportanteBean.populateEditPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel periodoEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        periodoEditOutput.setFor("periodoEditInput");
        periodoEditOutput.setId("periodoEditOutput");
        periodoEditOutput.setValue("Periodo:");
        htmlPanelGrid.getChildren().add(periodoEditOutput);
        
        InputText periodoEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        periodoEditInput.setId("periodoEditInput");
        periodoEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{historicoImportanteBean.historicoImportante.periodo}", String.class));
        periodoEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(periodoEditInput);
        
        Message periodoEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        periodoEditInputMessage.setId("periodoEditInputMessage");
        periodoEditInputMessage.setFor("periodoEditInput");
        periodoEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(periodoEditInputMessage);
        
        OutputLabel responsableEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        responsableEditOutput.setFor("responsableEditInput");
        responsableEditOutput.setId("responsableEditOutput");
        responsableEditOutput.setValue("Responsable:");
        htmlPanelGrid.getChildren().add(responsableEditOutput);
        
        AutoComplete responsableEditInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        responsableEditInput.setId("responsableEditInput");
        responsableEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{historicoImportanteBean.historicoImportante.responsable}", Tecnico.class));
        responsableEditInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{historicoImportanteBean.completeResponsable}", List.class, new Class[] { String.class }));
        responsableEditInput.setDropdown(true);
        responsableEditInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "responsable", String.class));
        responsableEditInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{responsable.nombre} #{responsable.domicilio} #{responsable.celular} #{responsable.telefonoAlternativo}", String.class));
        responsableEditInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{responsable}", Tecnico.class));
        responsableEditInput.setConverter(new TecnicoConverter());
        responsableEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(responsableEditInput);
        
        Message responsableEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        responsableEditInputMessage.setId("responsableEditInputMessage");
        responsableEditInputMessage.setFor("responsableEditInput");
        responsableEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(responsableEditInputMessage);
        
        OutputLabel linkEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        linkEditOutput.setFor("linkEditInput");
        linkEditOutput.setId("linkEditOutput");
        linkEditOutput.setValue("Link:");
        htmlPanelGrid.getChildren().add(linkEditOutput);
        
        InputText linkEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        linkEditInput.setId("linkEditInput");
        linkEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{historicoImportanteBean.historicoImportante.link}", String.class));
        linkEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(linkEditInput);
        
        Message linkEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        linkEditInputMessage.setId("linkEditInputMessage");
        linkEditInputMessage.setFor("linkEditInput");
        linkEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(linkEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid HistoricoImportanteBean.populateViewPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText periodoLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        periodoLabel.setId("periodoLabel");
        periodoLabel.setValue("Periodo:");
        htmlPanelGrid.getChildren().add(periodoLabel);
        
        HtmlOutputText periodoValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        periodoValue.setId("periodoValue");
        periodoValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{historicoImportanteBean.historicoImportante.periodo}", String.class));
        htmlPanelGrid.getChildren().add(periodoValue);
        
        HtmlOutputText responsableLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        responsableLabel.setId("responsableLabel");
        responsableLabel.setValue("Responsable:");
        htmlPanelGrid.getChildren().add(responsableLabel);
        
        HtmlOutputText responsableValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        responsableValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{historicoImportanteBean.historicoImportante.responsable}", Tecnico.class));
        responsableValue.setConverter(new TecnicoConverter());
        htmlPanelGrid.getChildren().add(responsableValue);
        
        HtmlOutputText linkLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        linkLabel.setId("linkLabel");
        linkLabel.setValue("Link:");
        htmlPanelGrid.getChildren().add(linkLabel);
        
        HtmlOutputText linkValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        linkValue.setId("linkValue");
        linkValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{historicoImportanteBean.historicoImportante.link}", String.class));
        htmlPanelGrid.getChildren().add(linkValue);
        
        return htmlPanelGrid;
    }
    
    public HistoricoImportante HistoricoImportanteBean.getHistoricoImportante() {
        if (historicoImportante == null) {
            historicoImportante = new HistoricoImportante();
        }
        return historicoImportante;
    }
    
    public void HistoricoImportanteBean.setHistoricoImportante(HistoricoImportante historicoImportante) {
        this.historicoImportante = historicoImportante;
    }
    
    public List<Tecnico> HistoricoImportanteBean.completeResponsable(String query) {
        List<Tecnico> suggestions = new ArrayList<Tecnico>();
        for (Tecnico tecnico : Tecnico.findAllTecnicoes()) {
            String tecnicoStr = String.valueOf(tecnico.getNombre() +  " "  + tecnico.getDomicilio() +  " "  + tecnico.getCelular() +  " "  + tecnico.getTelefonoAlternativo());
            if (tecnicoStr.toLowerCase().startsWith(query.toLowerCase())) {
                suggestions.add(tecnico);
            }
        }
        return suggestions;
    }
    
    public String HistoricoImportanteBean.onEdit() {
        return null;
    }
    
    public boolean HistoricoImportanteBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void HistoricoImportanteBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String HistoricoImportanteBean.displayList() {
        createDialogVisible = false;
        findAllHistoricoImportantes();
        return "historicoImportante";
    }
    
    public String HistoricoImportanteBean.displayCreateDialog() {
        historicoImportante = new HistoricoImportante();
        createDialogVisible = true;
        return "historicoImportante";
    }
    
    public String HistoricoImportanteBean.persist() {
        String message = "";
        if (historicoImportante.getId() != null) {
            historicoImportante.merge();
            message = "message_successfully_updated";
        } else {
            historicoImportante.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "HistoricoImportante");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllHistoricoImportantes();
    }
    
    public String HistoricoImportanteBean.delete() {
        historicoImportante.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "HistoricoImportante");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllHistoricoImportantes();
    }
    
    public void HistoricoImportanteBean.reset() {
        historicoImportante = null;
        createDialogVisible = false;
    }
    
    public void HistoricoImportanteBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
