package controller;

import com.alibaba.fastjson.JSON;
import entity.User;
import service.UserService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns="/user")
public class UserController extends BaseServlet{
    UserService userService=new UserService();
    public  void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String userName=request.getParameter("userName");
        String password=request.getParameter("password");
        String sql="select * from user where userName=?";
        User user=userService.getUserByUserName(sql,userName,password);
        /*session：回话个跟踪技术，就是与个缓存技术，可以将一下数据以缓存的形式保存到session里去
        * 保存在session中的数据就是全局都可以使用*/
        HttpSession session=request.getSession();
        session.setAttribute("user",user);
        PrintWriter printWriter=response.getWriter();
        printWriter.write(JSON.toJSONString(user));

    }
    public void loginOut(HttpServletRequest request, HttpServletResponse response) throws IOException {
        boolean result=false;//后端响应给前端的数据
        try{
            //尝试运行此处的代码
            request.getSession().removeAttribute("user");
            result=true;
        }catch (Exception e){
            //如果上面的try代码运行保存，或者发生异常，就会被catch到，然后你可以catch到的错误进行后续处理
            result=false;
        }
        //request作为响应的参数，返回给前端
        PrintWriter printWriter=response.getWriter();
        printWriter.write(JSON.toJSONString(result));
    }
    public void register(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //用户注册
        //从前端获取用户输入的内容
        String userName=request.getParameter("userName");
        String password=request.getParameter("password");
        String sql = "insert into user values (null,?,?)";
        int id= userService.register(sql,userName,password);
        PrintWriter printWriter=response.getWriter();
        printWriter.write(""+id);
    }
}
