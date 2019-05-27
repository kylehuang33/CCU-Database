package i.am.the.best.controller;

import org.springframework.web.bind.annotation.GetMapping;

public class LoginController {

	@GetMapping("/showMyLoginPage")
	public String showMyLoginPage()
	{
		return "login-page";
	}
}
