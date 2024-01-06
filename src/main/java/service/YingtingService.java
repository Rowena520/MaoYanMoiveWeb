package service;

import dao.YingtingDao;
import entity.Yingting;

import java.util.ArrayList;
import java.util.List;

public class YingtingService{
    YingtingDao yingtingDao=new YingtingDao();
    public List getYingtingList(String sql,String cinemaId,String movieId){
        //根据影院id和电影id查询电影场次
        List<Yingting> yingtingList=yingtingDao.getYingtingByCinema(sql,cinemaId);
        List allList=new ArrayList();
        for(Yingting y:yingtingList)
        {
            String sql2="SELECT p.*,y.yingting,y.cinemaId FROM yingting y,playingtime p where y.id=p.yingtingId and y.id=? and p.movieId=?";
            List list=yingtingDao.getPlayingTime(sql2,y.getId(),Integer.parseInt(movieId));
            allList.add(list);

        }
        return allList;
    }

}
