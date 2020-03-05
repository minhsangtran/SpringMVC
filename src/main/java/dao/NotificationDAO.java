package dao;

import java.util.ArrayList;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;


import entity.Notification;
import implement.NotificationImp;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class NotificationDAO implements NotificationImp {

	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public boolean insertNotification(Notification notification) {
		try {
			Session session=sessionFactory.getCurrentSession();
			session.save(notification);
			return true;
		} catch (Exception e) {
			System.out.println("Lỗi ở thêm thông báo");
		}
		return false;
	}
	@Transactional
	public ArrayList<Notification> getAllNotification() {
		try {
			Session session=sessionFactory.getCurrentSession();
			String sql="from notification";
			ArrayList<Notification> notification= (ArrayList<Notification>) session.createQuery(sql).getResultList();
			return notification;

		} catch (Exception e) {
			System.out.println("Lỗi ở lấy tất cả thông báo");
		}
		return null;
	}
	
	@Transactional
	public boolean updateNotification(Notification notification) {
		try {
			Session session=sessionFactory.getCurrentSession();
			session.update(notification);
			return true;
		} catch (Exception e) {
			System.out.println("Lỗi ở sửa thông báo");
		}
		return false;
	}
	@Transactional
	public boolean deleteThongBao(Integer id) {
		try {
			Session session=sessionFactory.getCurrentSession();
			String sql="delete from notification where id="+id;
			session.createQuery(sql).executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println("Lỗi ở xoa thông báo");
		}
		return false;
	}
	
	@Transactional
	public Notification getNotification(int id) {
		try {
			Session session=sessionFactory.getCurrentSession();
			Notification notification = session.get(Notification.class, id);
			return notification;
		} catch (Exception e) {
			System.out.println("Lỗi ở get chi tiết thông báo");
		}
		return null;
	}
	
	@Transactional
	public ArrayList<Notification> findNotification(String info) {
		try {
			Session session = sessionFactory.getCurrentSession();
			String sql = "from notification where title like '%"+info+"%'";
			Query query = session.createQuery(sql);
			ArrayList<Notification> notifications = (ArrayList<Notification>) query.getResultList();
			return notifications;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
