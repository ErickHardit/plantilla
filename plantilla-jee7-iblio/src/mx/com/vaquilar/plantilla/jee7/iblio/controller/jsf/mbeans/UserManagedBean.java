/**
 * 
 */
package mx.com.vaquilar.plantilla.jee7.iblio.controller.jsf.mbeans;

import java.io.Serializable;

import javax.annotation.PostConstruct;
import javax.enterprise.context.SessionScoped;
import javax.faces.bean.ManagedBean;

/**
 * @author ErickHardit
 *
 */

@ManagedBean(name = "userBean")
@SessionScoped
public class UserManagedBean implements Serializable {

	private static final long serialVersionUID = 1L;

	public UserManagedBean() {

	}

	@PostConstruct
	public void init() {

	}
}
