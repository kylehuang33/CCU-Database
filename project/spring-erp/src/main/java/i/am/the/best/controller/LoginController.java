package i.am.the.best.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("/showMyLoginPage")
	public String showMyLoginPage()
	{
//		return "login-page";
		return "fancy-login";
	}
	
	@GetMapping("/access-denied")
	public String showAccessDenied()
	{		
		return "access-denied";
	}
}
