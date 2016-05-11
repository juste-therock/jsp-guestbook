package sample.tomcat.jsp;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@RestController
@RequestMapping("login.jsp")
final class LoginController extends WebMvcConfigurerAdapter {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public void welcome(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.sendRedirect("login");
	}
	static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	@RequestMapping(method = RequestMethod.GET)
    public String init(ModelMap modelMap) {
        modelMap.put("info", "Hello User");
        return "login";
    }
 
    @RequestMapping(method = RequestMethod.POST)
    public String submit(ModelMap modelMap, @ModelAttribute("loginModel") @Valid LoginModel loginModel) {
        System.out.println("in submit" + loginModel);
        String password = loginModel.getPassword();
        if (password != null && password.equals("onlinetutorialspoint")) {
            modelMap.put("userInfo", loginModel.getUserName());
            return "home";
        } else {
            modelMap.put("error", "Invalid UserName / Password");
            return "login";
        }
 
    }
}
