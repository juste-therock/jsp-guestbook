package sample.tomcat.jsp;

import org.springframework.social.oauth2.AccessGrant;

public interface OAuth2Operations {

	String buildAuthorizeUrl(String redirectUri, String scope);

    AccessGrant exchangeForAccess(String authorizationGrant, String redirectUri);
}
