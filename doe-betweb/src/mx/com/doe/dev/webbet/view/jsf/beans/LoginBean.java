/**
 * 
 */
package mx.com.doe.dev.webbet.view.jsf.beans;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import javax.servlet.http.HttpSession;
import javax.validation.constraints.Pattern;

import org.primefaces.context.RequestContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author 
 *
 */
@SessionScoped
@ManagedBean(name="mbLogin")
public class LoginBean {
	
	private static final Logger log = LoggerFactory.getLogger(LoginBean.class);
	
	private String user;
	private String password;
	
	
	
	public void doLogin() {
		log.info("function( {}, {} )", user, password);
		if (user.equals(password)) {
			HttpSession session = (HttpSession) FacesContext.getCurrentInstance().getExternalContext().getSession(false);
			session.setAttribute("appu", user);
			RequestContext.getCurrentInstance().update("formMenu");
			RequestContext.getCurrentInstance().execute("PF('modalIngresar').hide()");
		} else {
			FacesContext.getCurrentInstance().addMessage(null,
					new FacesMessage(FacesMessage.SEVERITY_WARN, "Alerta", "El usuario y/o contraseña no son validos, favor de verificar") );
		}
	}
	
	public void doLogout(ActionEvent actionEvent) {
		HttpSession session = (HttpSession) FacesContext.getCurrentInstance().getExternalContext().getSession(false);
		session.invalidate();
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
