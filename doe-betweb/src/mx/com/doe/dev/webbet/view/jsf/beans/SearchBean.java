package mx.com.doe.dev.webbet.view.jsf.beans;

import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mx.com.doe.dev.webbet.data.mysql.EventDao;
import mx.com.doe.dev.webbet.domain.Event;

@SessionScoped
@ManagedBean(name="mbSearch")
public class SearchBean {
	
	private static final Logger log = LoggerFactory.getLogger(SearchBean.class);
	
	public List<Event> events;
	public Event eventSelected;
	
	@EJB
	EventDao daoEvent;
	
	
	public SearchBean() {
		eventSelected = new Event();
	}
	
	@PostConstruct
	public void init() {
		
	}
	
	public void onload() {
		FacesContext context = FacesContext.getCurrentInstance();
        Map<String, String> paramMap = context.getExternalContext().getRequestParameterMap();
        log.info("SearchBean.onload( {} )", paramMap.get("cmpt"));
        events = daoEvent.findByCompetition(paramMap.get("cmpt"));	
	}
	
	public void showBet() {
		Map<String,String> params = 
                FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap();
	  String eventId = params.get("eventId");
		log.info("{}",eventId);
	}

	public List<Event> getEvents() {
		return events;
	}

	public void setEvents(List<Event> events) {
		this.events = events;
	}

	public Event getEventSelected() {
		return eventSelected;
	}

	public void setEventSelected(Event eventSelected) {
		this.eventSelected = eventSelected;
	}

}
