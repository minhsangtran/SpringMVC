package implement;

import java.util.ArrayList;

import entity.Notification;
import entity.Registration;

public interface NotificationImp {
	boolean insertNotification (Notification notification);
	ArrayList<Notification> getAllNotification ();
	ArrayList<Notification> findNotification(String info);
	boolean updateNotification (Notification notification);
	boolean deleteThongBao(Integer id);
	Notification getNotification(int id);
}
