package sample.tomcat.jsp;

import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.social.oauth2.AbstractOAuth2ServiceProvider;
import org.springframework.social.oauth2.OAuth2Template;

public final class FacebookServiceProvider extends AbstractOAuth2ServiceProvider<FacebookApi> {

	 public FacebookServiceProvider(String clientId, String clientSecret, ConnectionRepository connectionRepository) {
	        super("facebook", connectionRepository, 
	            new OAuth2Template(appId, appSecret,
	                "https://graph.facebook.com/oauth/authorize?client_id={client_id}&redirect_uri={redirect_uri}&scope={scope}", 
	                "https://graph.facebook.com/oauth/access_token"));
	    }

	    @Override
	    protected FacebookApi getApi(String accessToken) {
	        return new FacebookTemplate(accessToken);
	    }
}
