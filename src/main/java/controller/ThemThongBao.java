package controller;

import java.sql.Date;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Notification;
import service.NotificationService;

@Controller

public class ThemThongBao {
	@Autowired
	NotificationService notificationService;
	
	
	@GetMapping("/themthongbao")
	public String themthongbao(ModelMap modelMap) {
		ArrayList<Notification> notifications= notificationService.getAllNotification();
		modelMap.addAttribute("notifications",notifications);
		
		
		return "ThemThongBao";
	}
	
	@GetMapping("/searchthongbao")
	public String themthongbao2(String info, ModelMap modelMap) {
		ArrayList<Notification> notifications= notificationService.findNotification(info);
		modelMap.addAttribute("notifications",notifications);
		
		
		return "ThemThongBao";
	}
	
	
	
	@PostMapping("/themthongbao")
	public String xuLyThemThongBao(String tieuDe, String noiDung, Date thoiHan,String luuY, String loaiThongBao) {
		
		Notification notification =new Notification();
		notification.setTitle(tieuDe);
		notification.setContent(noiDung);
		notification.setDeadline(thoiHan);
		notification.setNote(luuY);
		if(loaiThongBao.equals("true"))
		{
			notification.setIsRegister(true);
		}
		else
		{
			notification.setIsRegister(false);
		}
		notificationService.insertNotification(notification);
			return "redirect:/themthongbao";
		
	}
	@PostMapping("/suathongbao")
	public String suathongbao(Integer idThongBao, String tieuDe, String noiDung, Date thoiHan,String luuY, String loaiThongBao) {
		System.out.println(idThongBao);
		Notification notification =new Notification();
		notification.setId(idThongBao);
		notification.setTitle(tieuDe);
		notification.setContent(noiDung);
		notification.setDeadline(thoiHan);
		notification.setNote(luuY);
		if(loaiThongBao.equals("dangkylich"))
		{
			notification.setIsRegister(true);
		}
		else
		{
			notification.setIsRegister(false);
		}
		notificationService.updateNotification(notification);
			return "redirect:/themthongbao";
	}
	
	
	

}
