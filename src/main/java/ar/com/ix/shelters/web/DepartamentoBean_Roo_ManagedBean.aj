// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.web;

import ar.com.ix.shelters.model.Departamento;
import ar.com.ix.shelters.model.Provincia;
import ar.com.ix.shelters.web.DepartamentoBean;
import ar.com.ix.shelters.web.converter.ProvinciaConverter;
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

privileged aspect DepartamentoBean_Roo_ManagedBean {
    
    declare @type: DepartamentoBean: @ManagedBean(name = "departamentoBean");
    
    declare @type: DepartamentoBean: @SessionScoped;
    
    private String DepartamentoBean.name = "Departamentoes";
    
    private Departamento DepartamentoBean.departamento;
    
    private List<Departamento> DepartamentoBean.allDepartamentoes;
    
    private boolean DepartamentoBean.dataVisible = false;
    
    private List<String> DepartamentoBean.columns;
    
    private HtmlPanelGrid DepartamentoBean.createPanelGrid;
    
    private HtmlPanelGrid DepartamentoBean.editPanelGrid;
    
    private HtmlPanelGrid DepartamentoBean.viewPanelGrid;
    
    private boolean DepartamentoBean.createDialogVisible = false;
    
    @PostConstruct
    public void DepartamentoBean.init() {
        columns = new ArrayList<String>();
        columns.add("nombre");
    }
    
    public String DepartamentoBean.getName() {
        return name;
    }
    
    public List<String> DepartamentoBean.getColumns() {
        return columns;
    }
    
    public List<Departamento> DepartamentoBean.getAllDepartamentoes() {
        return allDepartamentoes;
    }
    
    public void DepartamentoBean.setAllDepartamentoes(List<Departamento> allDepartamentoes) {
        this.allDepartamentoes = allDepartamentoes;
    }
    
    public String DepartamentoBean.findAllDepartamentoes() {
        allDepartamentoes = Departamento.findAllDepartamentoes();
        dataVisible = !allDepartamentoes.isEmpty();
        return null;
    }
    
    public boolean DepartamentoBean.isDataVisible() {
        return dataVisible;
    }
    
    public void DepartamentoBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid DepartamentoBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void DepartamentoBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid DepartamentoBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void DepartamentoBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid DepartamentoBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void DepartamentoBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid DepartamentoBean.populateCreatePanel() {
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
        nombreCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{departamentoBean.departamento.nombre}", String.class));
        nombreCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(nombreCreateInput);
        
        Message nombreCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nombreCreateInputMessage.setId("nombreCreateInputMessage");
        nombreCreateInputMessage.setFor("nombreCreateInput");
        nombreCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nombreCreateInputMessage);
        
        OutputLabel provinciaCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        provinciaCreateOutput.setFor("provinciaCreateInput");
        provinciaCreateOutput.setId("provinciaCreateOutput");
        provinciaCreateOutput.setValue("Provincia:");
        htmlPanelGrid.getChildren().add(provinciaCreateOutput);
        
        AutoComplete provinciaCreateInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        provinciaCreateInput.setId("provinciaCreateInput");
        provinciaCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{departamentoBean.departamento.provincia}", Provincia.class));
        provinciaCreateInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{departamentoBean.completeProvincia}", List.class, new Class[] { String.class }));
        provinciaCreateInput.setDropdown(true);
        provinciaCreateInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "provincia", String.class));
        provinciaCreateInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{provincia.nombre}", String.class));
        provinciaCreateInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{provincia}", Provincia.class));
        provinciaCreateInput.setConverter(new ProvinciaConverter());
        provinciaCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(provinciaCreateInput);
        
        Message provinciaCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        provinciaCreateInputMessage.setId("provinciaCreateInputMessage");
        provinciaCreateInputMessage.setFor("provinciaCreateInput");
        provinciaCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(provinciaCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid DepartamentoBean.populateEditPanel() {
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
        nombreEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{departamentoBean.departamento.nombre}", String.class));
        nombreEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(nombreEditInput);
        
        Message nombreEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nombreEditInputMessage.setId("nombreEditInputMessage");
        nombreEditInputMessage.setFor("nombreEditInput");
        nombreEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nombreEditInputMessage);
        
        OutputLabel provinciaEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        provinciaEditOutput.setFor("provinciaEditInput");
        provinciaEditOutput.setId("provinciaEditOutput");
        provinciaEditOutput.setValue("Provincia:");
        htmlPanelGrid.getChildren().add(provinciaEditOutput);
        
        AutoComplete provinciaEditInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        provinciaEditInput.setId("provinciaEditInput");
        provinciaEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{departamentoBean.departamento.provincia}", Provincia.class));
        provinciaEditInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{departamentoBean.completeProvincia}", List.class, new Class[] { String.class }));
        provinciaEditInput.setDropdown(true);
        provinciaEditInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "provincia", String.class));
        provinciaEditInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{provincia.nombre}", String.class));
        provinciaEditInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{provincia}", Provincia.class));
        provinciaEditInput.setConverter(new ProvinciaConverter());
        provinciaEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(provinciaEditInput);
        
        Message provinciaEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        provinciaEditInputMessage.setId("provinciaEditInputMessage");
        provinciaEditInputMessage.setFor("provinciaEditInput");
        provinciaEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(provinciaEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid DepartamentoBean.populateViewPanel() {
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
        nombreValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{departamentoBean.departamento.nombre}", String.class));
        htmlPanelGrid.getChildren().add(nombreValue);
        
        HtmlOutputText provinciaLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        provinciaLabel.setId("provinciaLabel");
        provinciaLabel.setValue("Provincia:");
        htmlPanelGrid.getChildren().add(provinciaLabel);
        
        HtmlOutputText provinciaValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        provinciaValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{departamentoBean.departamento.provincia}", Provincia.class));
        provinciaValue.setConverter(new ProvinciaConverter());
        htmlPanelGrid.getChildren().add(provinciaValue);
        
        return htmlPanelGrid;
    }
    
    public Departamento DepartamentoBean.getDepartamento() {
        if (departamento == null) {
            departamento = new Departamento();
        }
        return departamento;
    }
    
    public void DepartamentoBean.setDepartamento(Departamento departamento) {
        this.departamento = departamento;
    }
    
    public List<Provincia> DepartamentoBean.completeProvincia(String query) {
        List<Provincia> suggestions = new ArrayList<Provincia>();
        for (Provincia provincia : Provincia.findAllProvincias()) {
            String provinciaStr = String.valueOf(provincia.getNombre());
            if (provinciaStr.toLowerCase().startsWith(query.toLowerCase())) {
                suggestions.add(provincia);
            }
        }
        return suggestions;
    }
    
    public String DepartamentoBean.onEdit() {
        return null;
    }
    
    public boolean DepartamentoBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void DepartamentoBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String DepartamentoBean.displayList() {
        createDialogVisible = false;
        findAllDepartamentoes();
        return "departamento";
    }
    
    public String DepartamentoBean.displayCreateDialog() {
        departamento = new Departamento();
        createDialogVisible = true;
        return "departamento";
    }
    
    public String DepartamentoBean.persist() {
        String message = "";
        if (departamento.getId() != null) {
            departamento.merge();
            message = "message_successfully_updated";
        } else {
            departamento.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "Departamento");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllDepartamentoes();
    }
    
    public String DepartamentoBean.delete() {
        departamento.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "Departamento");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllDepartamentoes();
    }
    
    public void DepartamentoBean.reset() {
        departamento = null;
        createDialogVisible = false;
    }
    
    public void DepartamentoBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
