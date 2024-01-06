package dao;

import entity.User;

public class UserDao {
    public User getUserByUserName(String sql,String userName) {
        User user = null;
        try {
            user=jdbc2.selectOne(User.class,sql,userName);
        } catch (InstantiationException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
        return user;
    }
    public int insertUser(String sql,String userName,String password) {
        return jdbc2.doInsert(jdbc2.connection,sql,userName,password);

    }
}
