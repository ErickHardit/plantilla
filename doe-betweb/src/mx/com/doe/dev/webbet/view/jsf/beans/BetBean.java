package mx.com.doe.dev.webbet.view.jsf.beans;

import java.util.Map;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@SessionScoped
@ManagedBean(name="mbBet")
public class BetBean {
	
	private static final Logger log = LoggerFactory.getLogger(BetBean.class);
	
	private Integer eventId;
	
	public BetBean() {
		
	}
	
	
	@PostConstruct
	public void init() {
		log.info("Initialization");
	}
	
	public void find() {
		log.info("Invoke findBets");
		Map<String,String> params = 
                FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap();
	  String eventId = params.get("eventId");
		log.info("{}",eventId);
	}


	public Integer getEventId() {
		return eventId;
	}


	public void setEventId(Integer eventId) {
		this.eventId = eventId;
	}

	
}
