package sample.tomcat.jsp;

import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.social.oauth2.AbstractOAuth2ServiceProvider;
import org.springframework.social.oauth2.OAuth2Template;

public final class FacebookServiceProvider extends AbstractOAuth2ServiceProvider<Facebook> {

	public FacebookServiceProvider(String clientId, String clientSecret, ConnectionRepository connectionRepository) {
		super(new OAuth2Template(clientId, clientSecret,
				"https://graph.facebook.com/oauth/authorize?client_id={client_id}&redirect_uri={redirect_uri}&scope={scope}",
				"https://graph.facebook.com/oauth/access_token"));
	}

	@Override
	public Facebook getApi(String accessToken) {
		return new FacebookTemplate(accessToken);
	}
}
