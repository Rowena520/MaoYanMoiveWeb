package controller;
//import javax.servlet.ServletException;
import com.alipay.api.AlipayApiException;
import entity.Movie;
import service.MovieService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

//接受请求和响应请求
@WebServlet(urlPatterns = {"/"})
public class MainController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        MovieService movieService=new MovieService();
        String sql="select * from movie";
        List<Movie> list=movieService.getMovie(sql);
        request.setAttribute("list",list);
        for(Movie m:list)
        {
            System.out.println(m.getMovieName()+m.getMovieImg());
        }
        request.getRequestDispatcher("view/main.jsp").forward(request, response);
    }
}
