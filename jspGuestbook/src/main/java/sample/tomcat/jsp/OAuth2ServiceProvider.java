package sample.tomcat.jsp;

import java.io.Serializable;

public interface OAuth2ServiceProvider<S> extends ServiceProvider<S> {
	
	OAuth2Operations getOAuthOperations();
	ServiceProviderConnection<S> connect(Serializable accountId, AccessGrant accessGrant);

}
