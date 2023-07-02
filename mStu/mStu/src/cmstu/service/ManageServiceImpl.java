package cmstu.service;

import cmstu.bean.Person;
import cmstu.dao.ManageDao;
import cmstu.dao.ManageDaoImpl;

import java.util.List;

public class ManageServiceImpl implements ManageService{
    ManageDao md = new ManageDaoImpl();
    @Override
    public List<Person> getAllPerson() {
        return md.getAllPerson();
    }
}
