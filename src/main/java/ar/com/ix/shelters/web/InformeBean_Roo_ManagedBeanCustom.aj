package ar.com.ix.shelters.web;

import ar.com.ix.shelters.model.Informe;
import ar.com.ix.shelters.model.Tecnico;
import ar.com.ix.shelters.model.TipoInforme;
import ar.com.ix.shelters.web.InformeBean;
import ar.com.ix.shelters.web.converter.TecnicoConverter;
import ar.com.ix.shelters.web.converter.TipoInformeConverter;
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

privileged aspect InformeBean_Roo_ManagedBean_Custom {

    public String InformeBean.displayListById(Long idInforme) {
		allInformes = Informe.findInformesByIdTipo(idInforme);
		createDialogVisible = false;
		dataVisible = !allInformes.isEmpty();
		return "informe";
    }
}