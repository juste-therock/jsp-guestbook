package sample.tomcat.jsp;

public interface ServiceProviderConnection<T> {

	T getServiceApi();

    void disconnect();
}
