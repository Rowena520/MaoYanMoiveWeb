package controller;

import com.alibaba.fastjson.JSON;
import entity.Seat;
import service.SeatService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

@WebServlet(urlPatterns = "/seat")
public class SeatController extends  BaseServlet{
    SeatService seatService=new SeatService();
    public void getSeat(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //从请求中获取观影时间id
        String playingId =request.getParameter("playingId");
        //根据观影时间获取当前用户选择的电影，影厅，以及观影时间等数据
        String sql2 = "SELECT p.*,y.yingting,c.id cinemaId,c.cinema,m.movieName,m.movieImg from playingtime p,yingting y,cinema c,movie m where p.id=? and p.yingtingId = y.id and y.cinemaId=c.id and p.movieId=m.id";
        Map<String,Object> allMap=seatService.query(sql2,playingId);
        request.setAttribute("allMap",allMap);

        String sql="select * from seat where playingId=?";
        Seat seat=seatService.getSeatByPlayingId(sql,playingId);
        //将查询出的数据传给前端
        request.setAttribute("seat",seat);

        String price=request.getParameter("price");
        request.setAttribute("price",price);
        request.getRequestDispatcher("view/buyTicket.jsp").forward(request,response);
    }
    public void updateSeat(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("seatId");
        String chooseArray=request.getParameter("chooseArray");
        //将座位编号字符串转为集合
        List<String> chooseList= JSON.parseArray(chooseArray,String.class);
        //System.out.println(chooseList.toString());
        String sql="update seat set seat=? where id=?";
        //根据前端传来的数据和该sql语句更新数据库的数据
        int count=seatService.updateSeat(sql,chooseList,id);
        //将更新后的数据传给前端
        PrintWriter printWriter=response.getWriter();
        printWriter.write(count+"");
    }
}
