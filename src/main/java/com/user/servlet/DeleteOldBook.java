package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;

@WebServlet("/delete_old_book")
public class DeleteOldBook extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email=req.getParameter("email");
			int id=Integer.parseInt(req.getParameter("id"));
			
			BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
			
			boolean f=dao.oldBookDelete(email, "Old",id);
			
			HttpSession session=req.getSession();
			
			if(f) 
			{
				session.setAttribute("succMsg", "Your Added Book Deleted Successfully !!!");
				resp.sendRedirect("old_book.jsp");
			}else {
				session.setAttribute("failedMsg", "Something Went Wrong...");
				resp.sendRedirect("old_book.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
