package rusal.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rusal.service.Service;


@WebServlet("*.do")
public class FrontServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		System.out.println("path : " + path);
		
		
		if("/main.do".equals(path)){
			request.setAttribute("classNo", 1);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
			dispatcher.forward(request, response);
		}
		
		if("/textToClass.do".equals(path)){
			Service service = new Service();
			service.ttc(request,response);
 			
			RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
