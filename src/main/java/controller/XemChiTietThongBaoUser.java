package controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Notification;
import service.NotificationService;

@Controller

public class XemChiTietThongBaoUser {
	@Autowired
	NotificationService notificationService;
	
	@GetMapping("/xemchitietthongbaouser")
	public String xemchitietthongbaouser(@RequestParam int idThongBao, ModelMap modelMap) {
		ArrayList<Notification> notifications= notificationService.getAllNotification();
		modelMap.addAttribute("notifications",notifications);
		Notification notification = notificationService.getNotification(idThongBao);
		modelMap.addAttribute("chitietthongbao", notification);
		return "XemChiTietThongBaoUser";
	}
}
