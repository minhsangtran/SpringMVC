package service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ScheduleDAO;
import entity.Schedule;
import implement.ScheduleImp;
@Service
public class ScheduleService implements ScheduleImp{
	@Autowired
	ScheduleDAO scheduleDAO;
	
	public ArrayList<Schedule> getScheduleByIdWeek(String idTuan) {
		return scheduleDAO.getScheduleByIdWeek(idTuan);
	}

	public boolean insertSchedule(Schedule s) {
		return scheduleDAO.insertSchedule(s);
	}

}
