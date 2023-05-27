package com.nossaTodoList.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.nossaTodoList.dao.DaoUserRepository;
import com.nossaTodoList.model.User;

@WebServlet (urlPatterns = {"/login"})
public class ServletLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ServletLoginController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		
		if(user != null) {
			DaoUserRepository userDao = new DaoUserRepository();
			User locatedUser = userDao.findUserByEmailAndPassword(user);
			
			if(locatedUser == null) {
				request.setAttribute("locatedUser", "Usuário não encontrado!");
			}
			else {
				request.getRequestDispatcher("home/home-page.jsp").forward(request, response);
			}
		}
		
	}

}
