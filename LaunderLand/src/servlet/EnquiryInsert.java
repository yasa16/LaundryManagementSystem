package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.EnquiryDBUtil;

//Inquiry insert servlet

@WebServlet("/EnquiryInsert")
public class EnquiryInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("fullname");
		String bill_no = request.getParameter("billNo");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String type = request.getParameter("enquiry type");
		String desc = request.getParameter("description");
		String status = request.getParameter("status");
		
		boolean isTrue;

		isTrue = EnquiryDBUtil.insertCustomer(name, bill_no, address, phone, email, type, desc, status);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("successInquiry.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccessInquiry.jsp");
			dis2.forward(request, response);
		}
		
		

	}

}
