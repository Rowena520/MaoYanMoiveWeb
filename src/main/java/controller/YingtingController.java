package controller;

import entity.Movie;
import service.MovieService;
import service.YingtingService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/yingting")
public class YingtingController extends BaseServlet{
    YingtingService yingtingService=new YingtingService();
    MovieService movieService = new MovieService();
    public void getYingting(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cinemaId=request.getParameter("cinemaId");
        String movieId=request.getParameter("movieId");
        //根据电影id查询电影信息
        String sql2="select * from movie where id=?";

        Movie movie=movieService.getMovieById(sql2,movieId);
        request.setAttribute("movie",movie);


        //根据获取的参数，将数据查询出来
        String sql="select * from yingting where cinemaId=?";
        List list=yingtingService.getYingtingList(sql,cinemaId,movieId);
        request.setAttribute("list",list);
        request.getRequestDispatcher("view/playing.jsp").forward(request,response);
    }
}
