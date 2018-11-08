package mx.com.doe.dev.webbet.data.mysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.ejb.Stateless;
import javax.sql.DataSource;

import mx.com.doe.dev.webbet.domain.Event;

@Stateless
public class EventDao {
	
	@Resource(name="jdbc/datasource")
	private DataSource dataSource;
	
	private SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy hh:mm a");
	
	public List<Event> findByCompetition(String competitionName) {
		
		
		List<Event> events = new ArrayList<Event>(0);
		String sql = "SELECT e.id, s.fnme, c.fnme, e.edtn, e.stge, e.dttm,l.snme,l.logo,l.stad,v.snme,v.logo "
				   + "FROM tbldoebetwebevent e, tbldoebetwebcompetition c, tbldoebetwebsport s, tbldoebetwebteam l, tbldoebetwebteam v "  
				   + "WHERE  e.cmpt = c.id AND c.spot = s.snme AND l.id = e.locl AND v.id = e.vstr "  
				   + "AND c.snme = ? AND e.stus = 1 ORDER BY dttm ASC;";
		
		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, competitionName);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				Event e = new Event();
				e.setEventId(rs.getInt(1));
				e.setSportName(rs.getString(2));
				e.setCompetitionName(rs.getString(3));
				e.setEdition(rs.getString(4));
				e.setStage(rs.getString(5));
				e.setDateTime(sdf.format(rs.getTimestamp(6)));
				e.setLocalName(rs.getString(7));
				e.setLocalLogo(rs.getString(8));
				e.setLocalStadium(rs.getString(9));
				e.setVisitorName(rs.getString(10));
				e.setVisitorLogo(rs.getString(11));
				events.add(e);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return events;
	}
 
	
}
