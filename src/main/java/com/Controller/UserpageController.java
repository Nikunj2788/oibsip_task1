package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.Userpage;
import com.Dao.Userpagedao;


/**
 * Servlet implementation class signupcontroller
 */
@WebServlet("/UserpageController")
public class UserpageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    PrintWriter out = response.getWriter();
	    String action  = request.getParameter("action");
	    
	    if(action.equalsIgnoreCase("signup")) {
	    	Userpage c = new Userpage();
	    	c.setFname(request.getParameter("fname"));
	    	c.setLname(request.getParameter("lname"));
	    	c.setContactno(request.getParameter("contactno"));	    	
	    	c.setBirthdate(request.getParameter("birthdate"));	    		    	
	    	c.setAddress(request.getParameter("address"));
	    	c.setEmail(request.getParameter("email"));
	    	c.setPassword(request.getParameter("password"));
	    	c.setConfirm_password(request.getParameter("confirm_password"));
	    	
	    	System.out.println(request.getParameter("fname"));
	    	System.out.println(request.getParameter("lname"));
	    	System.out.println(request.getParameter("contactno"));	    	    	
	    	System.out.println(request.getParameter("birthdate"));
	    	System.out.println(request.getParameter("address"));
	    	System.out.println(request.getParameter("email"));
	    	System.out.println(request.getParameter("password"));
	    	System.out.println(request.getParameter("confirm_password"));
	    	Userpagedao.insertinreserve_train(c);
	    	
		    response.sendRedirect("Userloginpage.jsp"); 
	    	
	    }
	    
	    if(action.equalsIgnoreCase("login")) {
	    	Userpage c = new Userpage();
	    	c.setEmail(request.getParameter("email"));
	    	c.setPassword(request.getParameter("password"));
	    	String email = request.getParameter("email");
	    	String pass = request.getParameter("password");
	   
	    	Userpage cc = Userpagedao.checklogin(c);
	    	if(email.equalsIgnoreCase("") || pass.equalsIgnoreCase("")) {
	    		out.print("Email and password is blank");
	    		request.getRequestDispatcher("login.jsp").include(request, response);
	    	}
	    	else {
	    		HttpSession seesion = request.getSession();
	    		seesion.setAttribute("abc", cc);
	    		
	    		request.getRequestDispatcher("UserBookingpage.jsp").forward(request, response);
	    	}
	    }
	    
	}
}

