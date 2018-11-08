/**
 * 
 */
package mx.com.doe.dev.webbet.view.jsf.beans;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.validation.constraints.Pattern;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author 
 *
 */
@SessionScoped
@ManagedBean(name="mbRegister")
public class RegisterBean {
	
	private static final Logger log = LoggerFactory.getLogger(RegisterBean.class);
	
	@Pattern(regexp="[a-zA-Z_0-9]{8,15}")
	private String user;
	
	@Pattern(regexp="[a-zA-Z_0-9]{8,15}")
	private String password;
	
	@Pattern(regexp="/^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$/")
	private String email;
	
	public static void main(String args[]) {
		
		String regex = "[a-zA-Z0-9._]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-]+";
		System.out.println("erick.velazquez.delrosario@gmail.com".matches(regex));
		System.out.println("erick.velazquez.delrosario@1mailcom".matches(regex));
		System.out.println("erick.velazquez.delrosariogmail.1om".matches(regex));
		System.out.println("erick.velazquez.delrosario@gmail".matches(regex));
		System.out.println("erick.velazquez_delrosario@gmail.com".matches(regex));
	}

}
