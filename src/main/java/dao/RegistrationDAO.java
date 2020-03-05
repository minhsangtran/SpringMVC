package dao;

import java.util.ArrayList;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import entity.Registration;
import implement.RegistrationImp;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class RegistrationDAO implements RegistrationImp{
	@Autowired
	SessionFactory sessionFactory;
	@Transactional
	public ArrayList<Registration> getRegistrations() {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from registration";
		ArrayList<Registration> registrations = (ArrayList<Registration>) session.createQuery(sql).getResultList();
		return registrations;
	}
	@Transactional
	public boolean insertRegistration(Registration reg) {
		try {
			Session session = sessionFactory.getCurrentSession();
			String id = (String) session.save(reg);
			if(id != null) return true;
		} catch(Exception ex) {
			ex.printStackTrace();
			System.out.println("error when insert new registration");
		}
		return false;
	}

	@Transactional
	public boolean updateRegistration(Registration reg) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.update(reg);
			return true;
		} catch(Exception ex) {
			ex.printStackTrace();
			System.out.println("error when update registration");
		}
		return false;
	}

	@Transactional
	public boolean isRegistrationExists(String id) {
		try {
			Session session = sessionFactory.getCurrentSession();
			Registration reg = session.get(Registration.class, id);
			if(reg != null)
				return true;
		} catch(Exception ex) {
			ex.printStackTrace();
			System.out.println("error when check registration");
		}
		return false;
	}
	public ArrayList<Registration> findRegistrations(String info) {
		try {
			Session session = sessionFactory.getCurrentSession();
			String sql = "from registration where title like '%"+info+"%'";
			ArrayList<Registration> registrations = (ArrayList<Registration>) session.createQuery(sql).getResultList();
			return registrations;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	
	

}
