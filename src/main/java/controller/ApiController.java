package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import service.NotificationService;
import service.UserService;



@Controller
@RequestMapping("api/")
public class ApiController {
	
	@Autowired
	UserService user;
	
	@PostMapping("user/delete")
	@ResponseBody
	public String deleteUser(@RequestParam String id) {
		user.deleteUser(id);
		return "true";
	}
	
	@PostMapping("user/duyet")
	@ResponseBody
	public String duyetUser(@RequestParam String id) {
		user.duyetUser(id);
		return "true";
	}
	
	
	@Autowired 
	NotificationService notificationService;
	
	@PostMapping("admin/xoaThongBao")
	@ResponseBody
	public String deleteThongBao(@RequestParam Integer id){
		notificationService.deleteThongBao(id);
		return "true";
	}
}
