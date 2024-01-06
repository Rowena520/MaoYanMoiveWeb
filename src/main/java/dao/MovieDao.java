package dao;

import entity.Movie;

import java.util.List;

public class MovieDao {//movie类的数据库访问层
    public List<Movie> getMovie(String sql){
        return jdbc2.selectList(Movie.class,sql);
    }
    public Movie getMovieById(String sql,String id){
        Movie movie=null;
        try {
            return jdbc2.selectOne(Movie.class,sql,id);
        } catch (InstantiationException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }
    public List<Movie> getMovieByName(String sql,String moiveName,Integer pageCur,Integer pageSize){
        return jdbc2.selectList(Movie.class,sql,moiveName,pageCur,pageSize);
    }
}
