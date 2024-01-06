package dao;

import entity.Cinema;

import java.util.List;


public class CinemaDao{
    public List<Cinema> getCinema(String sql,int pageIndex,int pageSize){
        return jdbc2.selectList(Cinema.class,sql,pageIndex,pageSize);
    }
}
