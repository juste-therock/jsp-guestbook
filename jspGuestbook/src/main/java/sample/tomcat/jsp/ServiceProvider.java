package sample.tomcat.jsp;

import java.io.Serializable;
import java.util.List;

public interface ServiceProvider<T> {
	
String getId();
    
    boolean isConnected(Serializable accountId);
    
    List<ServiceProviderConnection<T>> getConnections(Serializable accountId);


}
