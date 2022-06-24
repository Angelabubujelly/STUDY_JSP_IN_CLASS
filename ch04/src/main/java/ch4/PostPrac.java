package ch4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ch04/PostPrac")
public class PostPrac extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
//		servlet에서 화면에 데이터를 출력하는 응답을 위해서 out.print를 사용하느데에
//		utf-8문자 코드를 사용하니까 이걸 해석하라고 전해주는게 23줄입니당.
		response.setContentType("text/html; charset=utf-8");
//		out.print를 쓰기 위해 PrintWriter 메서드를 선언
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>Post Servlet방식</h1>");
		out.print("<h3>"+name +"님 어서오세요♡</h3>");
		out.print("<h3>"+phone +"번 이시죠♥</h3>");
		out.print("</body>");
		out.print("</html>");
	}
}
