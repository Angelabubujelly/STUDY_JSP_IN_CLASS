package ch4;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ch04/servletTest2")
public class servletTest02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init()호출");
	}


	public void destroy() {
		System.out.println("destroy()호출");
	}

//			얘가 가지고 있는 주소를 가지고 있는 객체..↓
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service()호출");
	}


}
