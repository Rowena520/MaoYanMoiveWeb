package controller;

import com.alipay.api.AlipayApiException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/test")
public class testController extends BaseServlet{
    public void doTest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, AlipayApiException {
        String form=alipayApplication.pay(1232,520,"爱你呦！！！");
        request.setAttribute("form",form);
        request.getRequestDispatcher("/view/test.jsp").forward(request,response);
    }
}
