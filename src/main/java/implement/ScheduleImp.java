package implement;

import java.util.ArrayList;

import entity.Schedule;

public interface ScheduleImp {
	
	ArrayList<Schedule> getScheduleByIdWeek(String idTuan);
	boolean insertSchedule(Schedule s);
}
