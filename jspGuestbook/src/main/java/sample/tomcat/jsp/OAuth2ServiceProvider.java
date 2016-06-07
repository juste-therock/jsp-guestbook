package sample.tomcat.jsp;

import java.io.Serializable;

import org.springframework.social.oauth2.AccessGrant;
import org.springframework.social.oauth2.OAuth2Operations;

public interface OAuth2ServiceProvider<T> extends ServiceProvider<T> {

	OAuth2Operations getOAuthOperations();

    ServiceProviderConnection<T> connect(Serializable accountId, AccessGrant accessGrant);

}
