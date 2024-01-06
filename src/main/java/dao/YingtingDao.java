package dao;

import entity.Yingting;

import java.util.List;

public class YingtingDao {
    public List<Yingting> getYingtingByCinema(String sql, String cinemaId){
        return jdbc2.selectList(Yingting.class, sql, cinemaId);
    }
    public List getPlayingTime(String sql,int yingtingId,int moviedId){
        return jdbc2.selectList(sql,yingtingId,moviedId);
    }
}
