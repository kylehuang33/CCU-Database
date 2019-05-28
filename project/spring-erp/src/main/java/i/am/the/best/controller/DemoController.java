package i.am.the.best.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

	@GetMapping(value= {"/", "home"})
	public String showHome(ModelMap model)
	{
		model.addAttribute("user", getPrinciple());
		return "home";
	}
	
	@GetMapping("/leaders")
	public String showLeaders(ModelMap model)
	{
		model.addAttribute("user", getPrinciple());
		return "leaders";
	}
	
	@GetMapping("/systems")
	public String showSystems(ModelMap model)
	{
		model.addAttribute("user", getPrinciple());
		return "systems";
	}
	
	private String getPrinciple()
	{
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
		if(principal instanceof UserDetails)
		{
			userName = ((UserDetails)principal).getUsername();
		}
		else
		{
			userName = principal.toString();
		}
	
		return userName;
	}
}



