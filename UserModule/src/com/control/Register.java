package com.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.bean.*;
import com.dao.*;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected LoginBean l=null;   
    protected ADAO a=null;
 public Register() {
     super();
    l=new LoginBean();
    a=new ADAO();
    
 }


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String n=request.getParameter("f1");
		String un=request.getParameter("f2");
		String p=request.getParameter("f3");
		String em=request.getParameter("f4");
		String cou=request.getParameter("f5");
		

		
		try {
			
		String s=	a.registerUser(n,un,p,em,cou);
		HttpSession session =request.getSession();
		session.setAttribute("s", s);
			if(s=="true")
			{
			
				request.getRequestDispatcher("extendReg.jsp").forward(request, response);
				
			}
			else
			{
	
				response.sendRedirect("extendReg.jsp");
			}
		
		
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	}

