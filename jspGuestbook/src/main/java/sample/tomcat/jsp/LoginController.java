package sample.tomcat.jsp;

import javax.validation.Valid;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("login.jsp")
public class LoginController {
	@RequestMapping(method = RequestMethod.GET)
    public String init(ModelMap modelMap) {
        modelMap.put("info", "Hello User");
        return "Login";
    }
 
    @RequestMapping(method = RequestMethod.POST)
    public String submit(ModelMap modelMap, @ModelAttribute("loginModel") @Valid LoginModel loginModel) {
        System.out.println("in submit" + loginModel);
        String password = loginModel.getPassword();
        if (password != null && password.equals("onlinetutorialspoint")) {
            modelMap.put("userInfo", loginModel.getUserName());
            return "Home";
        } else {
            modelMap.put("error", "Invalid UserName / Password");
            return "Login";
        }
 
    }
}
