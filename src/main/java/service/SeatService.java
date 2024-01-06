package service;

import com.alibaba.fastjson.JSON;
import dao.SeatDao;
import dao.jdbc2;
import entity.Seat;

import java.util.List;
import java.util.Map;

public class SeatService {
    SeatDao seatDao =new SeatDao();
    public Seat getSeatByPlayingId(String sql, String playingId){
        Seat seat =seatDao.getSeatByPlayingId(sql,playingId);
        if(seat!=null && seat.getSeat()!=null){
            //将seat字段的字符串转换为二维数组结构
            String str =seat.getSeat();
            seat.setSeatList(JSON.parseArray(str));
        }
        return seat;
    }
    public int updateSeat(String sql, List<String> chooseList,String seatId){
        String sql2="select * from seat where id=?";
        Seat seat=seatDao.getSeatById(sql2,seatId);
        List<List> newSeatList=null;
        if(seat!=null&&seat.getSeat()!=null){
            String str=seat.getSeat();
            List<List> oldSeatList=JSON.parseArray(str,List.class);
            System.out.println(oldSeatList);

            newSeatList=oldSeatList;
            //循环用户选择的座位的数组
            for(int i=0;i<chooseList.size();i++){
                if(chooseList.get(i)!=null) {
                    //获取当前用户选择的座位字符串
                    String seats = chooseList.get(i);
                    //拆分这个字符串，取第一位，就是用户选择的行
                    int row = Integer.valueOf(seats.split(",")[0]);
                    //取第二位，就是用户选择的列
                    int col = Integer.valueOf(seats.split(",")[1]);
                    //将对应的行和列，在集合中把座位状态从0改为1
                    newSeatList.get(row).set(col, 1);
                    }
                }
            }
            //将更新后的seatList保存到数据库中
            return seatDao.updateSeat(sql,JSON.toJSONString(newSeatList),seatId);
    }
    public Map<String,Object> query(String sql, String playingId){
        return seatDao.query(sql,playingId);
    }
}
