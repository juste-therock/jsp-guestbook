package sample.tomcat.jsp;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
@Entity
@Table
public class Message implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7816007904756969448L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private long id;

	@Column(name = "firstName", length = 100)
	private String firstName;

	@Column(name = "lastName", length = 100)
	private String lastName;

	@Column(name = "text", length = 1000000)
	private String text;

	@Column(name = "eMail", length = 50)
	private String eMail;

	@Column(name = "age", length = 3)
	@Min(10)
	private Integer age;

	@Column(name = "sex")
	private String sex;

	@Column(name = "subject", length = 100)
	private String subject;
	
	long now = System.currentTimeMillis();
	@Column(name = "sentTime")
	@GeneratedValue(strategy = GenerationType.AUTO)
	Date sentTime = new Date(now);

	public Date getSentTime() {
		return sentTime;
	}

	public void setSentTime(Date sentTime) {
		this.sentTime = sentTime;
	}

	public Message() {

	}

	public Message(String firstName, String lastName, String text, String eMail, Integer age, String sex,
			String subject) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.text = text;
		this.eMail = eMail;
		this.age = age;
		this.sex = sex;
		this.subject = subject;

	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	@Override
	public String toString() {
		return "Message [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", text=" + text
				+ ", eMail=" + eMail + ", age=" + age + ", sex=" + sex + ", subject=" + subject + ", sentTime="
				+ sentTime + "]";
	}

}
