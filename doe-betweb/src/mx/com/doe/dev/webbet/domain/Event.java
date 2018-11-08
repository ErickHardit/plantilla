package mx.com.doe.dev.webbet.domain;

import java.util.Date;

public class Event {

	private Integer eventId;
	private String sportName;
	private String competitionName;
	private String edition;
	private String stage;
	private String dateTime;

	private String localName;
	private String localLogo;
	private String localStadium;
	
	private String visitorName;
	private String visitorLogo;
	
	public Integer getEventId() {
		return eventId;
	}

	public void setEventId(Integer eventId) {
		this.eventId = eventId;
	}

	public String getSportName() {
		return sportName;
	}

	public void setSportName(String sportName) {
		this.sportName = sportName;
	}

	public String getCompetitionName() {
		return competitionName;
	}

	public void setCompetitionName(String competitionName) {
		this.competitionName = competitionName;
	}

	public String getEdition() {
		return edition;
	}

	public void setEdition(String edition) {
		this.edition = edition;
	}

	public String getStage() {
		return stage;
	}

	public void setStage(String stage) {
		this.stage = stage;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	public String getLocalName() {
		return localName;
	}

	public void setLocalName(String localName) {
		this.localName = localName;
	}

	public String getLocalLogo() {
		return localLogo;
	}

	public void setLocalLogo(String localLogo) {
		this.localLogo = localLogo;
	}

	public String getLocalStadium() {
		return localStadium;
	}

	public void setLocalStadium(String localStadium) {
		this.localStadium = localStadium;
	}

	public String getVisitorName() {
		return visitorName;
	}

	public void setVisitorName(String visitorName) {
		this.visitorName = visitorName;
	}

	public String getVisitorLogo() {
		return visitorLogo;
	}

	public void setVisitorLogo(String visitorLogo) {
		this.visitorLogo = visitorLogo;
	}

}
