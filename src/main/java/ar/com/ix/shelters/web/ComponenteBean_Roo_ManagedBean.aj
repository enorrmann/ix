// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.web;

import ar.com.ix.shelters.model.Componente;
import ar.com.ix.shelters.model.Fabricante;
import ar.com.ix.shelters.web.ComponenteBean;
import ar.com.ix.shelters.web.converter.FabricanteConverter;
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

privileged aspect ComponenteBean_Roo_ManagedBean {
    
    declare @type: ComponenteBean: @ManagedBean(name = "componenteBean");
    
    declare @type: ComponenteBean: @SessionScoped;
    
    private String ComponenteBean.name = "Componentes";
    
    private Componente ComponenteBean.componente;
    
    private List<Componente> ComponenteBean.allComponentes;
    
    private boolean ComponenteBean.dataVisible = false;
    
    private List<String> ComponenteBean.columns;
    
    private HtmlPanelGrid ComponenteBean.createPanelGrid;
    
    private HtmlPanelGrid ComponenteBean.editPanelGrid;
    
    private HtmlPanelGrid ComponenteBean.viewPanelGrid;
    
    private boolean ComponenteBean.createDialogVisible = false;
    
    @PostConstruct
    public void ComponenteBean.init() {
        columns = new ArrayList<String>();
        columns.add("numeroItx");
        columns.add("descripcion");
        columns.add("numeroDeSerie");
        columns.add("observaciones");
    }
    
    public String ComponenteBean.getName() {
        return name;
    }
    
    public List<String> ComponenteBean.getColumns() {
        return columns;
    }
    
    public List<Componente> ComponenteBean.getAllComponentes() {
        return allComponentes;
    }
    
    public void ComponenteBean.setAllComponentes(List<Componente> allComponentes) {
        this.allComponentes = allComponentes;
    }
    
    public String ComponenteBean.findAllComponentes() {
        allComponentes = Componente.findAllComponentes();
        dataVisible = !allComponentes.isEmpty();
        return null;
    }
    
    public boolean ComponenteBean.isDataVisible() {
        return dataVisible;
    }
    
    public void ComponenteBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid ComponenteBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void ComponenteBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid ComponenteBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void ComponenteBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid ComponenteBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void ComponenteBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid ComponenteBean.populateCreatePanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel numeroItxCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        numeroItxCreateOutput.setFor("numeroItxCreateInput");
        numeroItxCreateOutput.setId("numeroItxCreateOutput");
        numeroItxCreateOutput.setValue("Numero Itx:");
        htmlPanelGrid.getChildren().add(numeroItxCreateOutput);
        
        InputText numeroItxCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        numeroItxCreateInput.setId("numeroItxCreateInput");
        numeroItxCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{componenteBean.componente.numeroItx}", String.class));
        numeroItxCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(numeroItxCreateInput);
        
        Message numeroItxCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        numeroItxCreateInputMessage.setId("numeroItxCreateInputMessage");
        numeroItxCreateInputMessage.setFor("numeroItxCreateInput");
        numeroItxCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(numeroItxCreateInputMessage);
        
        OutputLabel descripcionCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        descripcionCreateOutput.setFor("descripcionCreateInput");
        descripcionCreateOutput.setId("descripcionCreateOutput");
        descripcionCreateOutput.setValue("Descripcion:");
        htmlPanelGrid.getChildren().add(descripcionCreateOutput);
        
        InputText descripcionCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        descripcionCreateInput.setId("descripcionCreateInput");
        descripcionCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{componenteBean.componente.descripcion}", String.class));
        descripcionCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(descripcionCreateInput);
        
        Message descripcionCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        descripcionCreateInputMessage.setId("descripcionCreateInputMessage");
        descripcionCreateInputMessage.setFor("descripcionCreateInput");
        descripcionCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(descripcionCreateInputMessage);
        
        OutputLabel numeroDeSerieCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        numeroDeSerieCreateOutput.setFor("numeroDeSerieCreateInput");
        numeroDeSerieCreateOutput.setId("numeroDeSerieCreateOutput");
        numeroDeSerieCreateOutput.setValue("Numero De Serie:");
        htmlPanelGrid.getChildren().add(numeroDeSerieCreateOutput);
        
        InputText numeroDeSerieCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        numeroDeSerieCreateInput.setId("numeroDeSerieCreateInput");
        numeroDeSerieCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{componenteBean.componente.numeroDeSerie}", String.class));
        numeroDeSerieCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(numeroDeSerieCreateInput);
        
        Message numeroDeSerieCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        numeroDeSerieCreateInputMessage.setId("numeroDeSerieCreateInputMessage");
        numeroDeSerieCreateInputMessage.setFor("numeroDeSerieCreateInput");
        numeroDeSerieCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(numeroDeSerieCreateInputMessage);
        
        OutputLabel fabricanteCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        fabricanteCreateOutput.setFor("fabricanteCreateInput");
        fabricanteCreateOutput.setId("fabricanteCreateOutput");
        fabricanteCreateOutput.setValue("Fabricante:");
        htmlPanelGrid.getChildren().add(fabricanteCreateOutput);
        
        AutoComplete fabricanteCreateInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        fabricanteCreateInput.setId("fabricanteCreateInput");
        fabricanteCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{componenteBean.componente.fabricante}", Fabricante.class));
        fabricanteCreateInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{componenteBean.completeFabricante}", List.class, new Class[] { String.class }));
        fabricanteCreateInput.setDropdown(true);
        fabricanteCreateInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "fabricante", String.class));
        fabricanteCreateInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{fabricante.nombre}", String.class));
        fabricanteCreateInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{fabricante}", Fabricante.class));
        fabricanteCreateInput.setConverter(new FabricanteConverter());
        fabricanteCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(fabricanteCreateInput);
        
        Message fabricanteCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        fabricanteCreateInputMessage.setId("fabricanteCreateInputMessage");
        fabricanteCreateInputMessage.setFor("fabricanteCreateInput");
        fabricanteCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(fabricanteCreateInputMessage);
        
        OutputLabel observacionesCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        observacionesCreateOutput.setFor("observacionesCreateInput");
        observacionesCreateOutput.setId("observacionesCreateOutput");
        observacionesCreateOutput.setValue("Observaciones:");
        htmlPanelGrid.getChildren().add(observacionesCreateOutput);
        
        InputText observacionesCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        observacionesCreateInput.setId("observacionesCreateInput");
        observacionesCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{componenteBean.componente.observaciones}", String.class));
        observacionesCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(observacionesCreateInput);
        
        Message observacionesCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        observacionesCreateInputMessage.setId("observacionesCreateInputMessage");
        observacionesCreateInputMessage.setFor("observacionesCreateInput");
        observacionesCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(observacionesCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid ComponenteBean.populateEditPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel numeroItxEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        numeroItxEditOutput.setFor("numeroItxEditInput");
        numeroItxEditOutput.setId("numeroItxEditOutput");
        numeroItxEditOutput.setValue("Numero Itx:");
        htmlPanelGrid.getChildren().add(numeroItxEditOutput);
        
        InputText numeroItxEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        numeroItxEditInput.setId("numeroItxEditInput");
        numeroItxEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{componenteBean.componente.numeroItx}", String.class));
        numeroItxEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(numeroItxEditInput);
        
        Message numeroItxEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        numeroItxEditInputMessage.setId("numeroItxEditInputMessage");
        numeroItxEditInputMessage.setFor("numeroItxEditInput");
        numeroItxEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(numeroItxEditInputMessage);
        
        OutputLabel descripcionEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        descripcionEditOutput.setFor("descripcionEditInput");
        descripcionEditOutput.setId("descripcionEditOutput");
        descripcionEditOutput.setValue("Descripcion:");
        htmlPanelGrid.getChildren().add(descripcionEditOutput);
        
        InputText descripcionEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        descripcionEditInput.setId("descripcionEditInput");
        descripcionEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{componenteBean.componente.descripcion}", String.class));
        descripcionEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(descripcionEditInput);
        
        Message descripcionEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        descripcionEditInputMessage.setId("descripcionEditInputMessage");
        descripcionEditInputMessage.setFor("descripcionEditInput");
        descripcionEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(descripcionEditInputMessage);
        
        OutputLabel numeroDeSerieEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        numeroDeSerieEditOutput.setFor("numeroDeSerieEditInput");
        numeroDeSerieEditOutput.setId("numeroDeSerieEditOutput");
        numeroDeSerieEditOutput.setValue("Numero De Serie:");
        htmlPanelGrid.getChildren().add(numeroDeSerieEditOutput);
        
        InputText numeroDeSerieEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        numeroDeSerieEditInput.setId("numeroDeSerieEditInput");
        numeroDeSerieEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{componenteBean.componente.numeroDeSerie}", String.class));
        numeroDeSerieEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(numeroDeSerieEditInput);
        
        Message numeroDeSerieEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        numeroDeSerieEditInputMessage.setId("numeroDeSerieEditInputMessage");
        numeroDeSerieEditInputMessage.setFor("numeroDeSerieEditInput");
        numeroDeSerieEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(numeroDeSerieEditInputMessage);
        
        OutputLabel fabricanteEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        fabricanteEditOutput.setFor("fabricanteEditInput");
        fabricanteEditOutput.setId("fabricanteEditOutput");
        fabricanteEditOutput.setValue("Fabricante:");
        htmlPanelGrid.getChildren().add(fabricanteEditOutput);
        
        AutoComplete fabricanteEditInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        fabricanteEditInput.setId("fabricanteEditInput");
        fabricanteEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{componenteBean.componente.fabricante}", Fabricante.class));
        fabricanteEditInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{componenteBean.completeFabricante}", List.class, new Class[] { String.class }));
        fabricanteEditInput.setDropdown(true);
        fabricanteEditInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "fabricante", String.class));
        fabricanteEditInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{fabricante.nombre}", String.class));
        fabricanteEditInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{fabricante}", Fabricante.class));
        fabricanteEditInput.setConverter(new FabricanteConverter());
        fabricanteEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(fabricanteEditInput);
        
        Message fabricanteEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        fabricanteEditInputMessage.setId("fabricanteEditInputMessage");
        fabricanteEditInputMessage.setFor("fabricanteEditInput");
        fabricanteEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(fabricanteEditInputMessage);
        
        OutputLabel observacionesEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        observacionesEditOutput.setFor("observacionesEditInput");
        observacionesEditOutput.setId("observacionesEditOutput");
        observacionesEditOutput.setValue("Observaciones:");
        htmlPanelGrid.getChildren().add(observacionesEditOutput);
        
        InputText observacionesEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        observacionesEditInput.setId("observacionesEditInput");
        observacionesEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{componenteBean.componente.observaciones}", String.class));
        observacionesEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(observacionesEditInput);
        
        Message observacionesEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        observacionesEditInputMessage.setId("observacionesEditInputMessage");
        observacionesEditInputMessage.setFor("observacionesEditInput");
        observacionesEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(observacionesEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid ComponenteBean.populateViewPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText numeroItxLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        numeroItxLabel.setId("numeroItxLabel");
        numeroItxLabel.setValue("Numero Itx:");
        htmlPanelGrid.getChildren().add(numeroItxLabel);
        
        HtmlOutputText numeroItxValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        numeroItxValue.setId("numeroItxValue");
        numeroItxValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{componenteBean.componente.numeroItx}", String.class));
        htmlPanelGrid.getChildren().add(numeroItxValue);
        
        HtmlOutputText descripcionLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        descripcionLabel.setId("descripcionLabel");
        descripcionLabel.setValue("Descripcion:");
        htmlPanelGrid.getChildren().add(descripcionLabel);
        
        HtmlOutputText descripcionValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        descripcionValue.setId("descripcionValue");
        descripcionValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{componenteBean.componente.descripcion}", String.class));
        htmlPanelGrid.getChildren().add(descripcionValue);
        
        HtmlOutputText numeroDeSerieLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        numeroDeSerieLabel.setId("numeroDeSerieLabel");
        numeroDeSerieLabel.setValue("Numero De Serie:");
        htmlPanelGrid.getChildren().add(numeroDeSerieLabel);
        
        HtmlOutputText numeroDeSerieValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        numeroDeSerieValue.setId("numeroDeSerieValue");
        numeroDeSerieValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{componenteBean.componente.numeroDeSerie}", String.class));
        htmlPanelGrid.getChildren().add(numeroDeSerieValue);
        
        HtmlOutputText fabricanteLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        fabricanteLabel.setId("fabricanteLabel");
        fabricanteLabel.setValue("Fabricante:");
        htmlPanelGrid.getChildren().add(fabricanteLabel);
        
        HtmlOutputText fabricanteValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        fabricanteValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{componenteBean.componente.fabricante}", Fabricante.class));
        fabricanteValue.setConverter(new FabricanteConverter());
        htmlPanelGrid.getChildren().add(fabricanteValue);
        
        HtmlOutputText observacionesLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        observacionesLabel.setId("observacionesLabel");
        observacionesLabel.setValue("Observaciones:");
        htmlPanelGrid.getChildren().add(observacionesLabel);
        
        HtmlOutputText observacionesValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        observacionesValue.setId("observacionesValue");
        observacionesValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{componenteBean.componente.observaciones}", String.class));
        htmlPanelGrid.getChildren().add(observacionesValue);
        
        return htmlPanelGrid;
    }
    
    public Componente ComponenteBean.getComponente() {
        if (componente == null) {
            componente = new Componente();
        }
        return componente;
    }
    
    public void ComponenteBean.setComponente(Componente componente) {
        this.componente = componente;
    }
    
    public List<Fabricante> ComponenteBean.completeFabricante(String query) {
        List<Fabricante> suggestions = new ArrayList<Fabricante>();
        for (Fabricante fabricante : Fabricante.findAllFabricantes()) {
            String fabricanteStr = String.valueOf(fabricante.getNombre());
            if (fabricanteStr.toLowerCase().startsWith(query.toLowerCase())) {
                suggestions.add(fabricante);
            }
        }
        return suggestions;
    }
    
    public String ComponenteBean.onEdit() {
        return null;
    }
    
    public boolean ComponenteBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void ComponenteBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String ComponenteBean.displayList() {
        createDialogVisible = false;
        findAllComponentes();
        return "componente";
    }
    
    public String ComponenteBean.displayCreateDialog() {
        componente = new Componente();
        createDialogVisible = true;
        return "componente";
    }
    
    public String ComponenteBean.persist() {
        String message = "";
        if (componente.getId() != null) {
            componente.merge();
            message = "message_successfully_updated";
        } else {
            componente.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "Componente");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllComponentes();
    }
    
    public String ComponenteBean.delete() {
        componente.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "Componente");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllComponentes();
    }
    
    public void ComponenteBean.reset() {
        componente = null;
        createDialogVisible = false;
    }
    
    public void ComponenteBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
