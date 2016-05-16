package sample.tomcat.jsp;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class LoginModel implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Column(name = "userName", length = 100)
	private String userName;
	
	@Column(name = "password", length = 100)
    private String password;
 
    @Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
    private long id;
    
    public String getUserName() {
        return userName;
    }
 
    public void setUserName(String userName) {
        this.userName = userName;
    }
 
    public String getPassword() {
        return password;
    }
 
    public void setPassword(String password) {
        this.password = password;
    }
 
    
    public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@Override
    public String toString() {
        return "LoginModel{" + "id = " +  "userName = " + userName + ", password = " + password + '}';
    }
}
