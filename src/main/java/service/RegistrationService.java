package service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.RegistrationDAO;
import entity.Registration;
import implement.RegistrationImp;
@Service
public class RegistrationService implements RegistrationImp{
	@Autowired
	RegistrationDAO registrationDao;
	public boolean insertRegistration(Registration reg) {
		if(registrationDao.isRegistrationExists(reg.getIdUser()))
			return registrationDao.updateRegistration(reg);
		return registrationDao.insertRegistration(reg);
	}

	public boolean isRegistrationExists(String id) {
		return false;
	}

	public ArrayList<Registration> getRegistrations() {
		return registrationDao.getRegistrations();
	}

	public ArrayList<Registration> findRegistrations(String info) {
		return registrationDao.findRegistrations(info);
	}

}
