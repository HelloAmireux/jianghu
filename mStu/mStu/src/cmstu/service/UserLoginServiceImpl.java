package cmstu.service;

import cmstu.bean.Person;
import cmstu.dao.UserLoginDao;
import cmstu.dao.UserLoginDaoImpl;

public class UserLoginServiceImpl implements UserLoginService{

    UserLoginDao ud = new UserLoginDaoImpl();
    @Override
    public Person getLogin(Person person) {
        return ud.getLogin(person);
    }
}
