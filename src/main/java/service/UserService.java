package service;

import dao.UserDao;
import entity.User;

public class UserService {
    UserDao userDao=new UserDao();
    public User getUserByUserName(String sql, String userName, String password){
        User user1=userDao.getUserByUserName(sql, userName);
        if(user1!=null && user1.getUserName()!=null){
            if(user1.getPassword().equals(password)){
                //user1.getPassword()数据库中查询到的密码
                //password 是用户输入的密码
                return user1;
            }
        }else{
            return null;
        }
        return null;
    }
    public  int register(String sql,String userName,String password){
        String sql2="select * from user where userName=?";
        User user =userDao.getUserByUserName(sql2,userName);
        if(user!=null&&user.getUserName()!=null)
        {
            return  0;
        }else {
            int id=userDao.insertUser(sql,userName,password);
            return id;
        }
    }
}
