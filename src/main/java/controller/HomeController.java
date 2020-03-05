package controller;

import java.util.ArrayList;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import entity.Notification;
import service.NotificationService;


@Controller
//@RequestMapping("/")
public class HomeController {

	
	@Autowired
	NotificationService notificationService;
	
	@GetMapping("/")
	public String Home(ModelMap modelMap) {
		ArrayList<Notification> notifications= notificationService.getAllNotification();
		modelMap.addAttribute("notifications",notifications);
		
		return "home";
	}
}
