package implement;

import java.util.ArrayList;

import entity.Registration;

public interface RegistrationImp {
	boolean insertRegistration(Registration reg);
	boolean isRegistrationExists(String id);
	ArrayList<Registration> getRegistrations();
	ArrayList<Registration> findRegistrations(String info);
}
