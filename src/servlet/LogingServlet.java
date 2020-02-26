package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.fasterxml.jackson.databind.ObjectMapper;

import dao.UserDao;
import domain.LogingUser;

@WebServlet("/LogingServlet")
public class LogingServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/**1.设置编码*/
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		/**2.进入domain包的LogingUser类获取前台输入的参数*/
		LogingUser logingUser = new LogingUser();
		/**3.把获得的参数放入集合当中*/
		
		
		try {
			BeanUtils.populate(logingUser, request.getParameterMap());
			
			/**4.数据查询操作，引入UserDao*/
			UserDao userDao = new UserDao();
			String password = userDao.getMatch(logingUser);
			ObjectMapper om=new  ObjectMapper();
			response.getWriter().print(om.writeValueAsString(password));
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
