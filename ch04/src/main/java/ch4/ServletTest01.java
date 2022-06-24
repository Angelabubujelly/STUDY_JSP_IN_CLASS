package ch4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ch04/ServletTest01")
public class ServletTest01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		한글을 한글로 쓸 수 있게, 문서로 보낼 수 있게 한다는 뜻임
		response.setContentType("text/html; charset=UTF-8");
//		가져와서 그 안에 있는애에다가 출력을 한다.
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>서블릿으로 html문서 만들기</h1>");
		out.print("</body>");
		out.print("</html>");
	

	
	}

}
