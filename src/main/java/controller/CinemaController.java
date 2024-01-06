package controller;

import entity.Cinema;
import entity.Movie;
import service.CinemaService;
import service.MovieService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/cinema")
public class CinemaController extends BaseServlet{
    CinemaService cinemaService=new CinemaService();
    public void getCinema(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        //从请求中获取电影id
        MovieService movieService=new MovieService();
        String sql2="select * from movie where id=?";
        Movie movie=movieService.getMovieById(sql2,id);
        //将查询到的电影数据传输到页面中
        request.setAttribute("movie",movie);

        //将分页功能整合
        int pageIndex=Integer.parseInt(request.getParameter("pageIndex"));
        int pageSize=Integer.parseInt(request.getParameter("pageSize"));

        String sql="select * from cinema limit ?,?";
        //根据sql获取对应的影院列表
        List<Cinema> cinemaList=cinemaService.getCinema(sql,pageIndex,pageSize);
        //将电影列表数据传给前端
        request.setAttribute("cinemaList",cinemaList);
        //跳转页面
        request.getRequestDispatcher("view/cinema.jsp").forward(request,response);
    }
}
