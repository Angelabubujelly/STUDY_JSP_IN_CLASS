package ch4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetPrac
 */
@WebServlet("/ch04/GetPrac")
public class GetPrac extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.print("<html>");
				out.print("<body>");
				out.print("<h1>Get Servlet방식</h1>");
				out.print("<h3>"+ name+"님 어서오세용♡</h3>");
				out.print("<h3> "+phone+"번 이시네용♥</h3>");
				out.print("</body>");
				out.print("</html>");
	}

}
