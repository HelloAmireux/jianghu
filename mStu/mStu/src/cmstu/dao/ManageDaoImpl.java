package cmstu.dao;

import cmstu.bean.Person;
import cmstu.service.ManageService;
import cmstu.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ManageDaoImpl implements ManageDao {
    @Override
    public List<Person> getAllPerson() {
        String sql="select * from person where userIdentify!=2";
        return getAllPerson(sql);
    }

    private List<Person> getAllPerson(String sql) {

        Connection connection = ConnectionFactory.getConnection();
        PreparedStatement pre = null;
        ResultSet res =null;
        List<Person> list = new ArrayList<>();
        try{

            pre = connection.prepareStatement(sql);
            res = pre.executeQuery();
            while(res.next()){
              Person  newPerson =new Person();
                newPerson.setUserAccount(res.getString("UserAccount"));
                newPerson.setUserName(res.getString("UserName"));
                newPerson.setUserSex(res.getString("UserSex"));
                newPerson.setUserBirthday(res.getString("UserBirthday"));
                newPerson.setUserIdCard(res.getString("UserIdCard"));
                newPerson.setUserPassword(res.getString("UserPassword"));
                newPerson.setUserIdentify(res.getInt("UserIdentify"));
                newPerson.setUserOtherName(res.getString("UserOtherName"));
                list.add(newPerson);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {

        }
        return list;


    }
}
