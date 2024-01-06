package dao;

import entity.Seat;

import java.util.Map;

public class SeatDao {
    public Seat getSeatByPlayingId(String sql,String playingId){
        Seat seat=null;
        try {
            seat = jdbc2.selectOne(Seat.class,sql,playingId);
        } catch (InstantiationException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
        return seat;
    }
    public Seat getSeatById(String sql,String id){
        Seat seat=null;
        try {
            seat=jdbc2.selectOne(Seat.class,sql,id);
        } catch (InstantiationException e) {
            throw new RuntimeException(e);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        }
        return seat;
    }
    public int updateSeat(String sql,String seat,String id){
        return jdbc2.doUpdate(jdbc2.connection,sql,seat,id);
    }
    public Map<String,Object> query(String sql,String playingId){
        return jdbc2.selectOne(sql,playingId);
    }
}
