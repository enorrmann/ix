// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.shelters.web;

import ar.com.ix.shelters.model.Componente;
import ar.com.ix.shelters.model.Movimiento;
import ar.com.ix.shelters.model.Shelter;
import ar.com.ix.shelters.model.Tecnico;
import ar.com.ix.shelters.model.Ubicacion;
import ar.com.ix.shelters.web.MovimientoBean;
import ar.com.ix.shelters.web.converter.ComponenteConverter;
import ar.com.ix.shelters.web.converter.ShelterConverter;
import ar.com.ix.shelters.web.converter.TecnicoConverter;
import ar.com.ix.shelters.web.converter.UbicacionConverter;
import ar.com.ix.shelters.web.util.MessageFactory;
import java.util.ArrayList;
import java.util.Date;
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
import javax.faces.convert.DateTimeConverter;
import org.primefaces.component.autocomplete.AutoComplete;
import org.primefaces.component.calendar.Calendar;
import org.primefaces.component.inputtext.InputText;
import org.primefaces.component.message.Message;
import org.primefaces.component.outputlabel.OutputLabel;
import org.primefaces.context.RequestContext;
import org.primefaces.event.CloseEvent;

privileged aspect MovimientoBean_Roo_ManagedBean {
    
    declare @type: MovimientoBean: @ManagedBean(name = "movimientoBean");
    
    declare @type: MovimientoBean: @SessionScoped;
    
    private String MovimientoBean.name = "Movimientoes";
    
    private Movimiento MovimientoBean.movimiento;
    
    private List<Movimiento> MovimientoBean.allMovimientoes;
    
    private boolean MovimientoBean.dataVisible = false;
    
    private List<String> MovimientoBean.columns;
    
    private HtmlPanelGrid MovimientoBean.createPanelGrid;
    
    private HtmlPanelGrid MovimientoBean.editPanelGrid;
    
    private HtmlPanelGrid MovimientoBean.viewPanelGrid;
    
    private boolean MovimientoBean.createDialogVisible = false;
    
    @PostConstruct
    public void MovimientoBean.init() {
        columns = new ArrayList<String>();
        columns.add("fechaEnvio");
        columns.add("observaciones");
    }
    
    public String MovimientoBean.getName() {
        return name;
    }
    
    public List<String> MovimientoBean.getColumns() {
        return columns;
    }
    
    public List<Movimiento> MovimientoBean.getAllMovimientoes() {
        return allMovimientoes;
    }
    
    public void MovimientoBean.setAllMovimientoes(List<Movimiento> allMovimientoes) {
        this.allMovimientoes = allMovimientoes;
    }
    
    public String MovimientoBean.findAllMovimientoes() {
        allMovimientoes = Movimiento.findAllMovimientoes();
        dataVisible = !allMovimientoes.isEmpty();
        return null;
    }
    
    public boolean MovimientoBean.isDataVisible() {
        return dataVisible;
    }
    
    public void MovimientoBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid MovimientoBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void MovimientoBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid MovimientoBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void MovimientoBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid MovimientoBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void MovimientoBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid MovimientoBean.populateCreatePanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel componenteCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        componenteCreateOutput.setFor("componenteCreateInput");
        componenteCreateOutput.setId("componenteCreateOutput");
        componenteCreateOutput.setValue("Componente:");
        htmlPanelGrid.getChildren().add(componenteCreateOutput);
        
        AutoComplete componenteCreateInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        componenteCreateInput.setId("componenteCreateInput");
        componenteCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.componente}", Componente.class));
        componenteCreateInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{movimientoBean.completeComponente}", List.class, new Class[] { String.class }));
        componenteCreateInput.setDropdown(true);
        componenteCreateInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "componente", String.class));
        componenteCreateInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{componente.numeroItx} #{componente.descripcion} #{componente.numeroDeSerie} #{componente.observaciones}", String.class));
        componenteCreateInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{componente}", Componente.class));
        componenteCreateInput.setConverter(new ComponenteConverter());
        componenteCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(componenteCreateInput);
        
        Message componenteCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        componenteCreateInputMessage.setId("componenteCreateInputMessage");
        componenteCreateInputMessage.setFor("componenteCreateInput");
        componenteCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(componenteCreateInputMessage);
        
        OutputLabel fechaEnvioCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        fechaEnvioCreateOutput.setFor("fechaEnvioCreateInput");
        fechaEnvioCreateOutput.setId("fechaEnvioCreateOutput");
        fechaEnvioCreateOutput.setValue("Fecha Envio:");
        htmlPanelGrid.getChildren().add(fechaEnvioCreateOutput);
        
        Calendar fechaEnvioCreateInput = (Calendar) application.createComponent(Calendar.COMPONENT_TYPE);
        fechaEnvioCreateInput.setId("fechaEnvioCreateInput");
        fechaEnvioCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.fechaEnvio}", Date.class));
        fechaEnvioCreateInput.setNavigator(true);
        fechaEnvioCreateInput.setEffect("slideDown");
        fechaEnvioCreateInput.setPattern("dd/MM/yyyy");
        fechaEnvioCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(fechaEnvioCreateInput);
        
        Message fechaEnvioCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        fechaEnvioCreateInputMessage.setId("fechaEnvioCreateInputMessage");
        fechaEnvioCreateInputMessage.setFor("fechaEnvioCreateInput");
        fechaEnvioCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(fechaEnvioCreateInputMessage);
        
        OutputLabel ubicacionDestinoCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        ubicacionDestinoCreateOutput.setFor("ubicacionDestinoCreateInput");
        ubicacionDestinoCreateOutput.setId("ubicacionDestinoCreateOutput");
        ubicacionDestinoCreateOutput.setValue("Ubicacion Destino:");
        htmlPanelGrid.getChildren().add(ubicacionDestinoCreateOutput);
        
        AutoComplete ubicacionDestinoCreateInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        ubicacionDestinoCreateInput.setId("ubicacionDestinoCreateInput");
        ubicacionDestinoCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.ubicacionDestino}", Ubicacion.class));
        ubicacionDestinoCreateInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{movimientoBean.completeUbicacionDestino}", List.class, new Class[] { String.class }));
        ubicacionDestinoCreateInput.setDropdown(true);
        ubicacionDestinoCreateInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "ubicacionDestino", String.class));
        ubicacionDestinoCreateInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{ubicacionDestino.nombre} #{ubicacionDestino.descripcion}", String.class));
        ubicacionDestinoCreateInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{ubicacionDestino}", Ubicacion.class));
        ubicacionDestinoCreateInput.setConverter(new UbicacionConverter());
        ubicacionDestinoCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(ubicacionDestinoCreateInput);
        
        Message ubicacionDestinoCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        ubicacionDestinoCreateInputMessage.setId("ubicacionDestinoCreateInputMessage");
        ubicacionDestinoCreateInputMessage.setFor("ubicacionDestinoCreateInput");
        ubicacionDestinoCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(ubicacionDestinoCreateInputMessage);
        
        OutputLabel shelterDestinoCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        shelterDestinoCreateOutput.setFor("shelterDestinoCreateInput");
        shelterDestinoCreateOutput.setId("shelterDestinoCreateOutput");
        shelterDestinoCreateOutput.setValue("Shelter Destino:");
        htmlPanelGrid.getChildren().add(shelterDestinoCreateOutput);
        
        AutoComplete shelterDestinoCreateInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        shelterDestinoCreateInput.setId("shelterDestinoCreateInput");
        shelterDestinoCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.shelterDestino}", Shelter.class));
        shelterDestinoCreateInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{movimientoBean.completeShelterDestino}", List.class, new Class[] { String.class }));
        shelterDestinoCreateInput.setDropdown(true);
        shelterDestinoCreateInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "shelterDestino", String.class));
        shelterDestinoCreateInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{shelterDestino.nodo} #{shelterDestino.codigoSitio} #{shelterDestino.modelo} #{shelterDestino.coordenadas}", String.class));
        shelterDestinoCreateInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{shelterDestino}", Shelter.class));
        shelterDestinoCreateInput.setConverter(new ShelterConverter());
        shelterDestinoCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(shelterDestinoCreateInput);
        
        Message shelterDestinoCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        shelterDestinoCreateInputMessage.setId("shelterDestinoCreateInputMessage");
        shelterDestinoCreateInputMessage.setFor("shelterDestinoCreateInput");
        shelterDestinoCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(shelterDestinoCreateInputMessage);
        
        OutputLabel observacionesCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        observacionesCreateOutput.setFor("observacionesCreateInput");
        observacionesCreateOutput.setId("observacionesCreateOutput");
        observacionesCreateOutput.setValue("Observaciones:");
        htmlPanelGrid.getChildren().add(observacionesCreateOutput);
        
        InputText observacionesCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        observacionesCreateInput.setId("observacionesCreateInput");
        observacionesCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.observaciones}", String.class));
        observacionesCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(observacionesCreateInput);
        
        Message observacionesCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        observacionesCreateInputMessage.setId("observacionesCreateInputMessage");
        observacionesCreateInputMessage.setFor("observacionesCreateInput");
        observacionesCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(observacionesCreateInputMessage);
        
        OutputLabel destinatarioCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        destinatarioCreateOutput.setFor("destinatarioCreateInput");
        destinatarioCreateOutput.setId("destinatarioCreateOutput");
        destinatarioCreateOutput.setValue("Destinatario:");
        htmlPanelGrid.getChildren().add(destinatarioCreateOutput);
        
        AutoComplete destinatarioCreateInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        destinatarioCreateInput.setId("destinatarioCreateInput");
        destinatarioCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.destinatario}", Tecnico.class));
        destinatarioCreateInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{movimientoBean.completeDestinatario}", List.class, new Class[] { String.class }));
        destinatarioCreateInput.setDropdown(true);
        destinatarioCreateInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "destinatario", String.class));
        destinatarioCreateInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{destinatario.nombre} #{destinatario.domicilio} #{destinatario.celular}", String.class));
        destinatarioCreateInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{destinatario}", Tecnico.class));
        destinatarioCreateInput.setConverter(new TecnicoConverter());
        destinatarioCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(destinatarioCreateInput);
        
        Message destinatarioCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        destinatarioCreateInputMessage.setId("destinatarioCreateInputMessage");
        destinatarioCreateInputMessage.setFor("destinatarioCreateInput");
        destinatarioCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(destinatarioCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid MovimientoBean.populateEditPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel componenteEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        componenteEditOutput.setFor("componenteEditInput");
        componenteEditOutput.setId("componenteEditOutput");
        componenteEditOutput.setValue("Componente:");
        htmlPanelGrid.getChildren().add(componenteEditOutput);
        
        AutoComplete componenteEditInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        componenteEditInput.setId("componenteEditInput");
        componenteEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.componente}", Componente.class));
        componenteEditInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{movimientoBean.completeComponente}", List.class, new Class[] { String.class }));
        componenteEditInput.setDropdown(true);
        componenteEditInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "componente", String.class));
        componenteEditInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{componente.numeroItx} #{componente.descripcion} #{componente.numeroDeSerie} #{componente.observaciones}", String.class));
        componenteEditInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{componente}", Componente.class));
        componenteEditInput.setConverter(new ComponenteConverter());
        componenteEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(componenteEditInput);
        
        Message componenteEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        componenteEditInputMessage.setId("componenteEditInputMessage");
        componenteEditInputMessage.setFor("componenteEditInput");
        componenteEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(componenteEditInputMessage);
        
        OutputLabel fechaEnvioEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        fechaEnvioEditOutput.setFor("fechaEnvioEditInput");
        fechaEnvioEditOutput.setId("fechaEnvioEditOutput");
        fechaEnvioEditOutput.setValue("Fecha Envio:");
        htmlPanelGrid.getChildren().add(fechaEnvioEditOutput);
        
        Calendar fechaEnvioEditInput = (Calendar) application.createComponent(Calendar.COMPONENT_TYPE);
        fechaEnvioEditInput.setId("fechaEnvioEditInput");
        fechaEnvioEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.fechaEnvio}", Date.class));
        fechaEnvioEditInput.setNavigator(true);
        fechaEnvioEditInput.setEffect("slideDown");
        fechaEnvioEditInput.setPattern("dd/MM/yyyy");
        fechaEnvioEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(fechaEnvioEditInput);
        
        Message fechaEnvioEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        fechaEnvioEditInputMessage.setId("fechaEnvioEditInputMessage");
        fechaEnvioEditInputMessage.setFor("fechaEnvioEditInput");
        fechaEnvioEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(fechaEnvioEditInputMessage);
        
        OutputLabel ubicacionDestinoEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        ubicacionDestinoEditOutput.setFor("ubicacionDestinoEditInput");
        ubicacionDestinoEditOutput.setId("ubicacionDestinoEditOutput");
        ubicacionDestinoEditOutput.setValue("Ubicacion Destino:");
        htmlPanelGrid.getChildren().add(ubicacionDestinoEditOutput);
        
        AutoComplete ubicacionDestinoEditInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        ubicacionDestinoEditInput.setId("ubicacionDestinoEditInput");
        ubicacionDestinoEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.ubicacionDestino}", Ubicacion.class));
        ubicacionDestinoEditInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{movimientoBean.completeUbicacionDestino}", List.class, new Class[] { String.class }));
        ubicacionDestinoEditInput.setDropdown(true);
        ubicacionDestinoEditInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "ubicacionDestino", String.class));
        ubicacionDestinoEditInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{ubicacionDestino.nombre} #{ubicacionDestino.descripcion}", String.class));
        ubicacionDestinoEditInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{ubicacionDestino}", Ubicacion.class));
        ubicacionDestinoEditInput.setConverter(new UbicacionConverter());
        ubicacionDestinoEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(ubicacionDestinoEditInput);
        
        Message ubicacionDestinoEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        ubicacionDestinoEditInputMessage.setId("ubicacionDestinoEditInputMessage");
        ubicacionDestinoEditInputMessage.setFor("ubicacionDestinoEditInput");
        ubicacionDestinoEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(ubicacionDestinoEditInputMessage);
        
        OutputLabel shelterDestinoEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        shelterDestinoEditOutput.setFor("shelterDestinoEditInput");
        shelterDestinoEditOutput.setId("shelterDestinoEditOutput");
        shelterDestinoEditOutput.setValue("Shelter Destino:");
        htmlPanelGrid.getChildren().add(shelterDestinoEditOutput);
        
        AutoComplete shelterDestinoEditInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        shelterDestinoEditInput.setId("shelterDestinoEditInput");
        shelterDestinoEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.shelterDestino}", Shelter.class));
        shelterDestinoEditInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{movimientoBean.completeShelterDestino}", List.class, new Class[] { String.class }));
        shelterDestinoEditInput.setDropdown(true);
        shelterDestinoEditInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "shelterDestino", String.class));
        shelterDestinoEditInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{shelterDestino.nodo} #{shelterDestino.codigoSitio} #{shelterDestino.modelo} #{shelterDestino.coordenadas}", String.class));
        shelterDestinoEditInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{shelterDestino}", Shelter.class));
        shelterDestinoEditInput.setConverter(new ShelterConverter());
        shelterDestinoEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(shelterDestinoEditInput);
        
        Message shelterDestinoEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        shelterDestinoEditInputMessage.setId("shelterDestinoEditInputMessage");
        shelterDestinoEditInputMessage.setFor("shelterDestinoEditInput");
        shelterDestinoEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(shelterDestinoEditInputMessage);
        
        OutputLabel observacionesEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        observacionesEditOutput.setFor("observacionesEditInput");
        observacionesEditOutput.setId("observacionesEditOutput");
        observacionesEditOutput.setValue("Observaciones:");
        htmlPanelGrid.getChildren().add(observacionesEditOutput);
        
        InputText observacionesEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        observacionesEditInput.setId("observacionesEditInput");
        observacionesEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.observaciones}", String.class));
        observacionesEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(observacionesEditInput);
        
        Message observacionesEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        observacionesEditInputMessage.setId("observacionesEditInputMessage");
        observacionesEditInputMessage.setFor("observacionesEditInput");
        observacionesEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(observacionesEditInputMessage);
        
        OutputLabel destinatarioEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        destinatarioEditOutput.setFor("destinatarioEditInput");
        destinatarioEditOutput.setId("destinatarioEditOutput");
        destinatarioEditOutput.setValue("Destinatario:");
        htmlPanelGrid.getChildren().add(destinatarioEditOutput);
        
        AutoComplete destinatarioEditInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        destinatarioEditInput.setId("destinatarioEditInput");
        destinatarioEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.destinatario}", Tecnico.class));
        destinatarioEditInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{movimientoBean.completeDestinatario}", List.class, new Class[] { String.class }));
        destinatarioEditInput.setDropdown(true);
        destinatarioEditInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "destinatario", String.class));
        destinatarioEditInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{destinatario.nombre} #{destinatario.domicilio} #{destinatario.celular}", String.class));
        destinatarioEditInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{destinatario}", Tecnico.class));
        destinatarioEditInput.setConverter(new TecnicoConverter());
        destinatarioEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(destinatarioEditInput);
        
        Message destinatarioEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        destinatarioEditInputMessage.setId("destinatarioEditInputMessage");
        destinatarioEditInputMessage.setFor("destinatarioEditInput");
        destinatarioEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(destinatarioEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid MovimientoBean.populateViewPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText componenteLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        componenteLabel.setId("componenteLabel");
        componenteLabel.setValue("Componente:");
        htmlPanelGrid.getChildren().add(componenteLabel);
        
        HtmlOutputText componenteValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        componenteValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.componente}", Componente.class));
        componenteValue.setConverter(new ComponenteConverter());
        htmlPanelGrid.getChildren().add(componenteValue);
        
        HtmlOutputText fechaEnvioLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        fechaEnvioLabel.setId("fechaEnvioLabel");
        fechaEnvioLabel.setValue("Fecha Envio:");
        htmlPanelGrid.getChildren().add(fechaEnvioLabel);
        
        HtmlOutputText fechaEnvioValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        fechaEnvioValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.fechaEnvio}", Date.class));
        DateTimeConverter fechaEnvioValueConverter = (DateTimeConverter) application.createConverter(DateTimeConverter.CONVERTER_ID);
        fechaEnvioValueConverter.setPattern("dd/MM/yyyy");
        fechaEnvioValue.setConverter(fechaEnvioValueConverter);
        htmlPanelGrid.getChildren().add(fechaEnvioValue);
        
        HtmlOutputText ubicacionDestinoLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        ubicacionDestinoLabel.setId("ubicacionDestinoLabel");
        ubicacionDestinoLabel.setValue("Ubicacion Destino:");
        htmlPanelGrid.getChildren().add(ubicacionDestinoLabel);
        
        HtmlOutputText ubicacionDestinoValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        ubicacionDestinoValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.ubicacionDestino}", Ubicacion.class));
        ubicacionDestinoValue.setConverter(new UbicacionConverter());
        htmlPanelGrid.getChildren().add(ubicacionDestinoValue);
        
        HtmlOutputText shelterDestinoLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        shelterDestinoLabel.setId("shelterDestinoLabel");
        shelterDestinoLabel.setValue("Shelter Destino:");
        htmlPanelGrid.getChildren().add(shelterDestinoLabel);
        
        HtmlOutputText shelterDestinoValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        shelterDestinoValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.shelterDestino}", Shelter.class));
        shelterDestinoValue.setConverter(new ShelterConverter());
        htmlPanelGrid.getChildren().add(shelterDestinoValue);
        
        HtmlOutputText observacionesLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        observacionesLabel.setId("observacionesLabel");
        observacionesLabel.setValue("Observaciones:");
        htmlPanelGrid.getChildren().add(observacionesLabel);
        
        HtmlOutputText observacionesValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        observacionesValue.setId("observacionesValue");
        observacionesValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.observaciones}", String.class));
        htmlPanelGrid.getChildren().add(observacionesValue);
        
        HtmlOutputText destinatarioLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        destinatarioLabel.setId("destinatarioLabel");
        destinatarioLabel.setValue("Destinatario:");
        htmlPanelGrid.getChildren().add(destinatarioLabel);
        
        HtmlOutputText destinatarioValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        destinatarioValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{movimientoBean.movimiento.destinatario}", Tecnico.class));
        destinatarioValue.setConverter(new TecnicoConverter());
        htmlPanelGrid.getChildren().add(destinatarioValue);
        
        return htmlPanelGrid;
    }
    
    public Movimiento MovimientoBean.getMovimiento() {
        if (movimiento == null) {
            movimiento = new Movimiento();
        }
        return movimiento;
    }
    
    public void MovimientoBean.setMovimiento(Movimiento movimiento) {
        this.movimiento = movimiento;
    }
    
    public List<Componente> MovimientoBean.completeComponente(String query) {
        List<Componente> suggestions = new ArrayList<Componente>();
        for (Componente componente : Componente.findAllComponentes()) {
            String componenteStr = String.valueOf(componente.getNumeroItx() +  " "  + componente.getDescripcion() +  " "  + componente.getNumeroDeSerie() +  " "  + componente.getObservaciones());
            if (componenteStr.toLowerCase().startsWith(query.toLowerCase())) {
                suggestions.add(componente);
            }
        }
        return suggestions;
    }
    
    public List<Ubicacion> MovimientoBean.completeUbicacionDestino(String query) {
        List<Ubicacion> suggestions = new ArrayList<Ubicacion>();
        for (Ubicacion ubicacion : Ubicacion.findAllUbicacions()) {
            String ubicacionStr = String.valueOf(ubicacion.getNombre() +  " "  + ubicacion.getDescripcion());
            if (ubicacionStr.toLowerCase().startsWith(query.toLowerCase())) {
                suggestions.add(ubicacion);
            }
        }
        return suggestions;
    }
    
    public List<Shelter> MovimientoBean.completeShelterDestino(String query) {
        List<Shelter> suggestions = new ArrayList<Shelter>();
        for (Shelter shelter : Shelter.findAllShelters()) {
            String shelterStr = String.valueOf(shelter.getNodo() +  " "  + shelter.getCodigoSitio() +  " "  + shelter.getModelo() +  " "  + shelter.getCoordenadas());
            if (shelterStr.toLowerCase().startsWith(query.toLowerCase())) {
                suggestions.add(shelter);
            }
        }
        return suggestions;
    }
    
    public List<Tecnico> MovimientoBean.completeDestinatario(String query) {
        List<Tecnico> suggestions = new ArrayList<Tecnico>();
        for (Tecnico tecnico : Tecnico.findAllTecnicoes()) {
            String tecnicoStr = String.valueOf(tecnico.getNombre() +  " "  + tecnico.getDomicilio() +  " "  + tecnico.getCelular());
            if (tecnicoStr.toLowerCase().startsWith(query.toLowerCase())) {
                suggestions.add(tecnico);
            }
        }
        return suggestions;
    }
    
    public String MovimientoBean.onEdit() {
        return null;
    }
    
    public boolean MovimientoBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void MovimientoBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String MovimientoBean.displayList() {
        createDialogVisible = false;
        findAllMovimientoes();
        return "movimiento";
    }
    
    public String MovimientoBean.displayCreateDialog() {
        movimiento = new Movimiento();
        createDialogVisible = true;
        return "movimiento";
    }
    
    public String MovimientoBean.persist() {
        String message = "";
        if (movimiento.getId() != null) {
            movimiento.merge();
            message = "message_successfully_updated";
        } else {
            movimiento.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "Movimiento");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllMovimientoes();
    }
    
    public String MovimientoBean.delete() {
        movimiento.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "Movimiento");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllMovimientoes();
    }
    
    public void MovimientoBean.reset() {
        movimiento = null;
        createDialogVisible = false;
    }
    
    public void MovimientoBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
