package sample.tomcat.jsp;

import java.io.Serializable;
import java.util.List;

public interface ServiceProvider<S> {
	
	String getId();
    boolean isConnected(Serializable accountId);
    List<ServiceProviderConnection<S>> getConnections(Serializable accountId);

}
