package entity;

import java.math.BigDecimal;

/*movie类的作用是和数据库中的movie类表关系，类是表的映射*/
public class Movie {//此处的类叫做：movie表的实体类
    private int id;
    private String movieName;
    private String movieImg;
    private BigDecimal price;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getMovieImg() {
        return movieImg;
    }

    public void setMovieImg(String movieImg) {
        this.movieImg = movieImg;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }
    public BigDecimal getPriceByDiscount(double discount){
        // 将duoble转换为BigDecimal,然后再做数学运算
        BigDecimal decimalDis = new BigDecimal(discount);
        return this.price.multiply(decimalDis).setScale(2,BigDecimal.ROUND_HALF_UP);
    }
}
