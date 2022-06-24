package ch4;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ch04/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			String id = request.getParameter("id");
			String pw = request.getParameter("pwd");
			
//			둘 다 null이 아니묜 session에다 setAttribute를 넣으라능겨죠...?
			if(id != null && pw != null) {
				HttpSession session = request.getSession();
				session.setAttribute("idKey", id);
			} 
//			무조건 실행하는거야 response는!
			response.sendRedirect("03.login.jsp");
	}

}
