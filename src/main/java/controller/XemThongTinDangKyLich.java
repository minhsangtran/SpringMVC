package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import service.RegistrationService;

@Controller

public class XemThongTinDangKyLich {
	@Autowired
	RegistrationService registrations;
	@GetMapping("/xemthongtindangkylich")
	public String xemthongtindangkylich(ModelMap modelMap) {
		modelMap.addAttribute("registrations", registrations.getRegistrations());
		return "XemThongTinDangKyLich";
	}
}
