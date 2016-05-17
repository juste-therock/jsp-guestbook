package sample.tomcat.jsp;

public interface ServiceProviderConnection<S> {
	
	S getServiceApi();
    void disconnect();
}
