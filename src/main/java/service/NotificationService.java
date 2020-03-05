package service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.NotificationDAO;
import entity.Notification;
import implement.NotificationImp;
@Service
public class NotificationService implements NotificationImp{

	@Autowired
	NotificationDAO notificationDAO;
	
	public boolean insertNotification(Notification notification) {
		return notificationDAO.insertNotification(notification);
	}

	public ArrayList<Notification> getAllNotification() {
		// TODO Auto-generated method stub
		return notificationDAO.getAllNotification();
	}

	public boolean updateNotification(Notification notification) {
		return notificationDAO.updateNotification(notification);
	}

	public boolean deleteThongBao(Integer id) {
		return notificationDAO.deleteThongBao(id);
	}

	public Notification getNotification(int id) {
		return notificationDAO.getNotification(id);
	}

	public ArrayList<Notification> findNotification(String info) {
		return notificationDAO.findNotification(info);
	}

}
