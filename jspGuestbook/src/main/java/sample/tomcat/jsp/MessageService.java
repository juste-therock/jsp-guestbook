package sample.tomcat.jsp;

import java.io.Serializable;
import java.util.List;

public interface MessageService extends Serializable {
	
	<S extends Message> S save(S entity);
	List<Message> findAll();
	List<Message> findByFirstNameContainsOrLastNameContainsAllIgnoreCase(String name, String name1);
}
