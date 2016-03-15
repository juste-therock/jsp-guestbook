package sample.tomcat.jsp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
final class MessageServiceImpl implements MessageService {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3511205690481736948L;
	private final MessageRepository repository;
	
	@Autowired
	public MessageServiceImpl(MessageRepository repository) {
		this.repository = repository;
	}

	@Override
	public <S extends Message> S save(S entity) {
		
		return repository.save(entity);
	}

	@Transactional(readOnly = true)
    @Override
	public List<Message> findAll() {
	
		return repository.findAll();
	}

	@Transactional(readOnly = true)
    @Override
	public List<Message> findByFirstNameContainsOrLastNameContainsAllIgnoreCase(String name, String name1) {
		
		return repository.findByFirstNameContainsOrLastNameContainsAllIgnoreCase(name, name1);
	}
	
		
}
