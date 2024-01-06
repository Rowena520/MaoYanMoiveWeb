package service;

import dao.CinemaDao;
import entity.Cinema;

import java.util.List;

public class CinemaService {
    CinemaDao cinemaDao=new CinemaDao();
    public List<Cinema> getCinema(String sql,int pageIndex,int pageSize){
        return cinemaDao.getCinema(sql,pageIndex,pageSize);
    }
}
