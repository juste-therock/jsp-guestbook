package sample.tomcat.jsp;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.social.connect.ConnectionRepository;

@Configuration
public class ServiceProviderConfig {

	/*@Bean
    public TwitterServiceProvider twitter(@Value("${twitter.consumerKey}") String consumerKey,
            @Value("${twitter.consumerSecret}") String consumerSecret, ConnectionRepository connectionRepository) {
        return new TwitterServiceProvider(consumerKey, consumerSecret, connectionRepository);
    }*/

    @Bean
    public FacebookServiceProvider facebook(@Value("${facebook.appId}") String appId,
            @Value("${facebook.appSecret}") String appSecret, ConnectionRepository connectionRepository) {
        return new FacebookServiceProvider(appId, appSecret, connectionRepository);
    }
}
