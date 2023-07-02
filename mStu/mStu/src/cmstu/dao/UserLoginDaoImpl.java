package cmstu.dao;

import cmstu.bean.Person;
import cmstu.service.UserLoginService;
import cmstu.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserLoginDaoImpl implements UserLoginDao {
    @Override
    public Person getLogin(Person person) {
        String sql = "select * from person where userAccount='"+person.getUserAccount()+"'and userPassword='"+person.getUserPassword()+"'";
        Connection connection = ConnectionFactory.getConnection();
        PreparedStatement pre = null;
        ResultSet res =null;
        Person newPerson =null;
        try{

            pre = connection.prepareStatement(sql);
            res = pre.executeQuery();
            while(res.next()){
                newPerson =new Person();
                newPerson.setUserAccount(res.getString("UserAccount"));
                newPerson.setUserName(res.getString("UserName"));
                newPerson.setUserSex(res.getString("UserSex"));
                newPerson.setUserBirthday(res.getString("UserBirthday"));
                newPerson.setUserIdCard(res.getString("UserIdCard"));
                newPerson.setUserPassword(res.getString("UserPassword"));
                newPerson.setUserIdentify(res.getInt("UserIdentify"));
                newPerson.setUserOtherName(res.getString("UserOtherName"));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {

        }

        return newPerson;
    }
}
