package entity;


public class PlayingTime {
    private int id;
    private String playtime;
    private int yingtingId;
    private int movieId;
    private double discount;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPlaytime() {
        return playtime;
    }

    public void setPlaytime(String playtime) {
        this.playtime = playtime;
    }

    public int getYingtingId() {
        return yingtingId;
    }

    public void setYingtingId(int yingtingId) {
        this.yingtingId = yingtingId;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }
}
