package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Notification;
import service.NotificationService;

@Controller

public class XemChiTietThongBaoAdmin {
	@Autowired
	NotificationService notificationService;
	@GetMapping("/xemchitietthongbaoadmin")
	public String xuLyChiTietThongBao(@RequestParam int idThongBao, ModelMap modelMap) {
		Notification notification = notificationService.getNotification(idThongBao);
		modelMap.addAttribute("chitietthongbao", notification);
		return "XemChiTietThongBaoAdmin";
	}
}
