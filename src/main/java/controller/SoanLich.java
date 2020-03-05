package controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import entity.Schedule;
import service.ScheduleService;

@Controller

public class SoanLich {
	@Autowired
	ScheduleService scheduleService;
	
	
	
	@GetMapping("/soanlich")
	public String soanlich(ModelMap modelMap) {
		Calendar cal = Calendar.getInstance();
		String week="";
		if(cal.get(Calendar.WEEK_OF_YEAR) < 10)
			week = "0"+cal.get(Calendar.WEEK_OF_YEAR);
		else 
			week = cal.get(Calendar.WEEK_OF_YEAR) + "";
		String weekSoanLich = cal.get(Calendar.YEAR)+"-W"+week;
		ArrayList<Schedule> schedules = scheduleService.getScheduleByIdWeek(weekSoanLich);
		Map<String, Schedule> map = new HashMap<String, Schedule>();
		for(Schedule s:schedules)
		{
			map.put(s.getIdBuoi(),s);
		}
		modelMap.addAttribute("schedule",map); 
		return "SoanLich";
	}
	
	 @PostMapping("/themlich")
	 public String soanlich(String noiDung, int soLuong, String phong, String ghiChu,String idTuan, String idBuoi)
	 { 
		 Schedule s =new Schedule();
		 
		 s.setIdTuanvaBuoi(idTuan+idBuoi);
		 s.setIdTuan(idTuan);
		 s.setIdBuoi(idBuoi);
		 s.setNoiDung(noiDung);
		 s.setPhong(phong);
		 s.setSoLuong(soLuong);
		 s.setGhiChu(ghiChu);
		 scheduleService.insertSchedule(s); 
		 return "redirect:/soanlich"; 
	 }

	 @PostMapping("/xemlich")
	 public String soanlich(String weekSoanLich,  ModelMap modelMap)
	 { 
		 ArrayList<Schedule> schedules = scheduleService.getScheduleByIdWeek(weekSoanLich);
		 Map<String, Schedule> map = new HashMap<String, Schedule>();
		 for(Schedule s:schedules)
		 {
			 map.put(s.getIdBuoi(),s);
		 }
		 modelMap.addAttribute("schedule",map); 
		 return "SoanLich"; }

}
