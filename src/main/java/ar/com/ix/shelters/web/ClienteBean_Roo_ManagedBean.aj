// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.web;

import ar.com.ix.shelters.model.Cliente;
import ar.com.ix.shelters.web.ClienteBean;
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

privileged aspect ClienteBean_Roo_ManagedBean {
    
    declare @type: ClienteBean: @ManagedBean(name = "clienteBean");
    
    declare @type: ClienteBean: @SessionScoped;
    
    private String ClienteBean.name = "Clientes";
    
    private Cliente ClienteBean.cliente;
    
    private List<Cliente> ClienteBean.allClientes;
    
    private boolean ClienteBean.dataVisible = false;
    
    private List<String> ClienteBean.columns;
    
    private HtmlPanelGrid ClienteBean.createPanelGrid;
    
    private HtmlPanelGrid ClienteBean.editPanelGrid;
    
    private HtmlPanelGrid ClienteBean.viewPanelGrid;
    
    private boolean ClienteBean.createDialogVisible = false;
    
    @PostConstruct
    public void ClienteBean.init() {
        columns = new ArrayList<String>();
        columns.add("nombre");
        columns.add("domicilio");
        columns.add("email");
        columns.add("cuit");
        columns.add("telFax");
    }
    
    public String ClienteBean.getName() {
        return name;
    }
    
    public List<String> ClienteBean.getColumns() {
        return columns;
    }
    
    public List<Cliente> ClienteBean.getAllClientes() {
        return allClientes;
    }
    
    public void ClienteBean.setAllClientes(List<Cliente> allClientes) {
        this.allClientes = allClientes;
    }
    
    public String ClienteBean.findAllClientes() {
        allClientes = Cliente.findAllClientes();
        dataVisible = !allClientes.isEmpty();
        return null;
    }
    
    public boolean ClienteBean.isDataVisible() {
        return dataVisible;
    }
    
    public void ClienteBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid ClienteBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void ClienteBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid ClienteBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void ClienteBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid ClienteBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void ClienteBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid ClienteBean.populateCreatePanel() {
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
        nombreCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{clienteBean.cliente.nombre}", String.class));
        nombreCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(nombreCreateInput);
        
        Message nombreCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nombreCreateInputMessage.setId("nombreCreateInputMessage");
        nombreCreateInputMessage.setFor("nombreCreateInput");
        nombreCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nombreCreateInputMessage);
        
        OutputLabel domicilioCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        domicilioCreateOutput.setFor("domicilioCreateInput");
        domicilioCreateOutput.setId("domicilioCreateOutput");
        domicilioCreateOutput.setValue("Domicilio:");
        htmlPanelGrid.getChildren().add(domicilioCreateOutput);
        
        InputText domicilioCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        domicilioCreateInput.setId("domicilioCreateInput");
        domicilioCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{clienteBean.cliente.domicilio}", String.class));
        domicilioCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(domicilioCreateInput);
        
        Message domicilioCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        domicilioCreateInputMessage.setId("domicilioCreateInputMessage");
        domicilioCreateInputMessage.setFor("domicilioCreateInput");
        domicilioCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(domicilioCreateInputMessage);
        
        OutputLabel emailCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        emailCreateOutput.setFor("emailCreateInput");
        emailCreateOutput.setId("emailCreateOutput");
        emailCreateOutput.setValue("Email:");
        htmlPanelGrid.getChildren().add(emailCreateOutput);
        
        InputText emailCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        emailCreateInput.setId("emailCreateInput");
        emailCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{clienteBean.cliente.email}", String.class));
        emailCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(emailCreateInput);
        
        Message emailCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        emailCreateInputMessage.setId("emailCreateInputMessage");
        emailCreateInputMessage.setFor("emailCreateInput");
        emailCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(emailCreateInputMessage);
        
        OutputLabel cuitCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        cuitCreateOutput.setFor("cuitCreateInput");
        cuitCreateOutput.setId("cuitCreateOutput");
        cuitCreateOutput.setValue("Cuit:");
        htmlPanelGrid.getChildren().add(cuitCreateOutput);
        
        InputText cuitCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        cuitCreateInput.setId("cuitCreateInput");
        cuitCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{clienteBean.cliente.cuit}", String.class));
        cuitCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(cuitCreateInput);
        
        Message cuitCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        cuitCreateInputMessage.setId("cuitCreateInputMessage");
        cuitCreateInputMessage.setFor("cuitCreateInput");
        cuitCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(cuitCreateInputMessage);
        
        OutputLabel telFaxCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        telFaxCreateOutput.setFor("telFaxCreateInput");
        telFaxCreateOutput.setId("telFaxCreateOutput");
        telFaxCreateOutput.setValue("Tel Fax:");
        htmlPanelGrid.getChildren().add(telFaxCreateOutput);
        
        InputText telFaxCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        telFaxCreateInput.setId("telFaxCreateInput");
        telFaxCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{clienteBean.cliente.telFax}", String.class));
        telFaxCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(telFaxCreateInput);
        
        Message telFaxCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        telFaxCreateInputMessage.setId("telFaxCreateInputMessage");
        telFaxCreateInputMessage.setFor("telFaxCreateInput");
        telFaxCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(telFaxCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid ClienteBean.populateEditPanel() {
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
        nombreEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{clienteBean.cliente.nombre}", String.class));
        nombreEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(nombreEditInput);
        
        Message nombreEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nombreEditInputMessage.setId("nombreEditInputMessage");
        nombreEditInputMessage.setFor("nombreEditInput");
        nombreEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nombreEditInputMessage);
        
        OutputLabel domicilioEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        domicilioEditOutput.setFor("domicilioEditInput");
        domicilioEditOutput.setId("domicilioEditOutput");
        domicilioEditOutput.setValue("Domicilio:");
        htmlPanelGrid.getChildren().add(domicilioEditOutput);
        
        InputText domicilioEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        domicilioEditInput.setId("domicilioEditInput");
        domicilioEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{clienteBean.cliente.domicilio}", String.class));
        domicilioEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(domicilioEditInput);
        
        Message domicilioEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        domicilioEditInputMessage.setId("domicilioEditInputMessage");
        domicilioEditInputMessage.setFor("domicilioEditInput");
        domicilioEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(domicilioEditInputMessage);
        
        OutputLabel emailEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        emailEditOutput.setFor("emailEditInput");
        emailEditOutput.setId("emailEditOutput");
        emailEditOutput.setValue("Email:");
        htmlPanelGrid.getChildren().add(emailEditOutput);
        
        InputText emailEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        emailEditInput.setId("emailEditInput");
        emailEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{clienteBean.cliente.email}", String.class));
        emailEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(emailEditInput);
        
        Message emailEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        emailEditInputMessage.setId("emailEditInputMessage");
        emailEditInputMessage.setFor("emailEditInput");
        emailEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(emailEditInputMessage);
        
        OutputLabel cuitEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        cuitEditOutput.setFor("cuitEditInput");
        cuitEditOutput.setId("cuitEditOutput");
        cuitEditOutput.setValue("Cuit:");
        htmlPanelGrid.getChildren().add(cuitEditOutput);
        
        InputText cuitEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        cuitEditInput.setId("cuitEditInput");
        cuitEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{clienteBean.cliente.cuit}", String.class));
        cuitEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(cuitEditInput);
        
        Message cuitEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        cuitEditInputMessage.setId("cuitEditInputMessage");
        cuitEditInputMessage.setFor("cuitEditInput");
        cuitEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(cuitEditInputMessage);
        
        OutputLabel telFaxEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        telFaxEditOutput.setFor("telFaxEditInput");
        telFaxEditOutput.setId("telFaxEditOutput");
        telFaxEditOutput.setValue("Tel Fax:");
        htmlPanelGrid.getChildren().add(telFaxEditOutput);
        
        InputText telFaxEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        telFaxEditInput.setId("telFaxEditInput");
        telFaxEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{clienteBean.cliente.telFax}", String.class));
        telFaxEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(telFaxEditInput);
        
        Message telFaxEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        telFaxEditInputMessage.setId("telFaxEditInputMessage");
        telFaxEditInputMessage.setFor("telFaxEditInput");
        telFaxEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(telFaxEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid ClienteBean.populateViewPanel() {
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
        nombreValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{clienteBean.cliente.nombre}", String.class));
        htmlPanelGrid.getChildren().add(nombreValue);
        
        HtmlOutputText domicilioLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        domicilioLabel.setId("domicilioLabel");
        domicilioLabel.setValue("Domicilio:");
        htmlPanelGrid.getChildren().add(domicilioLabel);
        
        HtmlOutputText domicilioValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        domicilioValue.setId("domicilioValue");
        domicilioValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{clienteBean.cliente.domicilio}", String.class));
        htmlPanelGrid.getChildren().add(domicilioValue);
        
        HtmlOutputText emailLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        emailLabel.setId("emailLabel");
        emailLabel.setValue("Email:");
        htmlPanelGrid.getChildren().add(emailLabel);
        
        HtmlOutputText emailValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        emailValue.setId("emailValue");
        emailValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{clienteBean.cliente.email}", String.class));
        htmlPanelGrid.getChildren().add(emailValue);
        
        HtmlOutputText cuitLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        cuitLabel.setId("cuitLabel");
        cuitLabel.setValue("Cuit:");
        htmlPanelGrid.getChildren().add(cuitLabel);
        
        HtmlOutputText cuitValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        cuitValue.setId("cuitValue");
        cuitValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{clienteBean.cliente.cuit}", String.class));
        htmlPanelGrid.getChildren().add(cuitValue);
        
        HtmlOutputText telFaxLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        telFaxLabel.setId("telFaxLabel");
        telFaxLabel.setValue("Tel Fax:");
        htmlPanelGrid.getChildren().add(telFaxLabel);
        
        HtmlOutputText telFaxValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        telFaxValue.setId("telFaxValue");
        telFaxValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{clienteBean.cliente.telFax}", String.class));
        htmlPanelGrid.getChildren().add(telFaxValue);
        
        return htmlPanelGrid;
    }
    
    public Cliente ClienteBean.getCliente() {
        if (cliente == null) {
            cliente = new Cliente();
        }
        return cliente;
    }
    
    public void ClienteBean.setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    
    public String ClienteBean.onEdit() {
        return null;
    }
    
    public boolean ClienteBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void ClienteBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String ClienteBean.displayList() {
        createDialogVisible = false;
        findAllClientes();
        return "cliente";
    }
    
    public String ClienteBean.displayCreateDialog() {
        cliente = new Cliente();
        createDialogVisible = true;
        return "cliente";
    }
    
    public String ClienteBean.persist() {
        String message = "";
        if (cliente.getId() != null) {
            cliente.merge();
            message = "message_successfully_updated";
        } else {
            cliente.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "Cliente");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllClientes();
    }
    
    public String ClienteBean.delete() {
        cliente.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "Cliente");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllClientes();
    }
    
    public void ClienteBean.reset() {
        cliente = null;
        createDialogVisible = false;
    }
    
    public void ClienteBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
