package dao;

import java.util.ArrayList;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import entity.Notification;
import entity.Schedule;
import implement.ScheduleImp;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ScheduleDAO implements ScheduleImp{
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public ArrayList<Schedule> getScheduleByIdWeek(String idTuan) {
		try {
			Session session=sessionFactory.getCurrentSession();
			String sql="from Schedule where idTuanvaBuoi like '"+idTuan+"%'";
			ArrayList<Schedule> schedule= (ArrayList<Schedule>) session.createQuery(sql).getResultList();
			
			return schedule;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Lỗi lấy lịch theo tuần");
		}
		return null;
		
	}
	@Transactional
	public boolean insertSchedule(Schedule s) {
		try {
			Session session=sessionFactory.getCurrentSession();
			session.save(s);
			return true;
		} catch (Exception e) {
			System.out.println("Lỗi ở thêm Lich");
		}
		return false;
	}
}
