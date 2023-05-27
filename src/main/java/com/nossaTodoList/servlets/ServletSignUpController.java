package com.nossaTodoList.servlets;

import java.io.IOException;

import com.nossaTodoList.dao.DaoUserRepository;
import com.nossaTodoList.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/signUp"})
public class ServletSignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletSignUpController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String name = request.getParameter("name");
		String lastName = request.getParameter("lastName");
		String day = request.getParameter("day");
		String month = request.getParameter("month");
		String year = request.getParameter("year");
		String birthDate = day + "/" + month + "/" + year;
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User user = new User();
		user.setName(name);
		user.setLastName(lastName);
		user.setBirthDate(birthDate);
		user.setGender(gender);
		user.setEmail(email);
		user.setPassword(password);
		
		if (user != null) {
			DaoUserRepository userDao = new DaoUserRepository();
			userDao.insertUser(user);
			
			request.setAttribute("succssesSignUp", "Cadastro realizado com sucesso!");
			request.getRequestDispatcher("/sign-up.jsp").forward(request, response);
		}
		
	}
	
}
