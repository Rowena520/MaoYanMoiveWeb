package service;

import dao.MovieDao;
import entity.Movie;

import java.util.List;

public class MovieService {//对moive的表数据进行逻辑处理
    MovieDao movieDao =  new MovieDao();
    public List<Movie> getMovie(String sql){
        return movieDao.getMovie(sql);
    }
    public Movie getMovieById(String sql,String id){
        return movieDao.getMovieById(sql,id);
    }
    public List<Movie> getMovieByName(String sql,String name,Integer pageCur,Integer pageSize){
        return movieDao.getMovieByName(sql,name,pageCur,pageSize);
    }
}
