package sample.tomcat.jsp;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MessageRepository extends JpaRepository<Message, Long> {

	<S extends Message> S save(S entity);

	List<Message> findAll();

	List<Message> findByFirstNameContainsOrLastNameContainsAllIgnoreCase(String name, String name1);

	/*
	 * @Query(
	 * "SELECT m FROM Message m WHERE m.firstName LIKE %:name% OR m.lastName LIKE %:name%"
	 * ) public List<Message> searchWithJPQLQuery(@Param("name") String name);
	 */
}
