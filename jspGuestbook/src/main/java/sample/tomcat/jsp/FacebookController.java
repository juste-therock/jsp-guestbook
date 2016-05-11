/*package sample.tomcat.jsp;

import javax.inject.Inject;

import org.springframework.social.facebook.api.Facebook;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/fb")
public class FacebookController {
private Facebook facebook;
    
    @Inject
    public FacebookController(Facebook facebook) {
        this.facebook = facebook;
    }
    
    @RequestMapping(method=RequestMethod.GET)
    public String helloFacebook(Model model) {
        if (!facebook.isAuthorized()) {
            return "redirect:/connect/facebook";
        }
            
        model.addAttribute("feed", facebook.feedOperations().getFeed());
        
        return "hellofb";
    }

}
*/