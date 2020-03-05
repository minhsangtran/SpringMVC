package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import entity.Registration;
import service.RegistrationService;
import service.UserService;

@Controller

public class DangKyLichHoc {
	@Autowired
	RegistrationService registrationService;
	@Autowired
	UserService UserService;
	
	@GetMapping("/dangkylichhoc")
	public String dangkylichhoc() {
		return "DangKyLichHoc";
	}
	
	@PostMapping("/dangkylichhoc")
	public String xyLyDangKy(String s2, String c2, String s3, String c3, String s4, String c4,
			String s5, String c5, String s6, String c6, String s7, String c7, String s8, String c8,
			HttpSession httpSession) {
		String email = (String) httpSession.getAttribute("idUser");
		if(email == null) {
			return "redirect:/dangnhap";
		}
		Registration registration = new Registration();
		if(s2!=null)
			registration.setMorning2(true);
		else
			registration.setMorning2(false);
		if(c2!=null)
			registration.setAfternoon2(true);
		else
			registration.setAfternoon2(false);
		
		if(s3!=null)
			registration.setMorning3(true);
		else
			registration.setMorning3(false);
		if(c3!=null)
			registration.setAfternoon3(true);
		else
			registration.setAfternoon3(false);
		
		if(s4!=null)
			registration.setMorning4(true);
		else
			registration.setMorning4(false);
		if(c4!=null)
			registration.setAfternoon4(true);
		else
			registration.setAfternoon4(false);
		
		if(s5!=null)
			registration.setMorning5(true);
		else
			registration.setMorning5(false);
		if(c5!=null)
			registration.setAfternoon5(true);
		else
			registration.setAfternoon5(false);
		
		if(s6!=null)
			registration.setMorning6(true);
		else
			registration.setMorning6(false);
		if(c6!=null)
			registration.setAfternoon6(true);
		else
			registration.setAfternoon6(false);
		
		if(s7!=null)
			registration.setMorning7(true);
		else
			registration.setMorning7(false);
		if(c7!=null)
			registration.setAfternoon7(true);
		else
			registration.setAfternoon7(false);
		
		if(s8!=null)
			registration.setMorning8(true);
		else
			registration.setMorning8(false);
		if(c8!=null)
			registration.setAfternoon8(true);
		else
			registration.setAfternoon8(false);
		UserService.getUser(email);
		registration.setUsers(UserService.getUser(email));
		registration.setIdUser(email);
		registration.setIsRegister(false);
		registrationService.insertRegistration(registration);
		return "redirect:/";
	}
}
