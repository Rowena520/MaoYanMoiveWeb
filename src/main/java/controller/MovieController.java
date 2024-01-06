package controller;

import com.alibaba.fastjson.JSON;
import entity.Movie;
import service.MovieService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(urlPatterns =  "/movie")
public class MovieController extends BaseServlet{
    MovieService movieService = new MovieService();
    /*MovieController:表示这个类是专门用来处理movie表的控制类*/
    public void getMovieById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //从前端发送的请求中，获取传来的电影id参数
        String id=request.getParameter("id");
        String sql = "select * from  movie where id=?";
        Movie movie = movieService.getMovieById(sql,id);
        request .setAttribute("movie",movie);
        request.getRequestDispatcher("view/details.jsp").forward(request,response);
    }
    public void getMovieByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map data=JSON.parseObject(request.getParameter("data"));

        String name="%"+(String) data.get("movieName")+"%";
        Integer pageCurrent=Integer.valueOf(data.get("pageCur").toString());
        Integer pageSize=Integer.valueOf(data.get("pageSize").toString());
        String sql="select * from  movie where movieName like ? limit ?,?";

        List<Movie> movieList = movieService.getMovieByName(sql,name,pageCurrent,pageSize);
        //将用户输入的查询条件也要传输到前端
        request.setAttribute("movieName",data.get("movieName"));
        request.setAttribute("movieList",movieList);
        request.getRequestDispatcher("view/movieList.jsp").forward(request,response);
    }
}
