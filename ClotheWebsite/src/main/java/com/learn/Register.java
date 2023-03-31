package com.learn;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("psw");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        
        response.setContentType("text/html");
		PrintWriter out = response.getWriter();
        out.print("<h1>hello this is post serevlet page</h1>");
		out.println(name);
		out.println(email);
		out.println(password);
		out.println(address);
		out.println(phone);

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/company", "root", "toothpaste");

            String sql = "insert into company(Username, Email, Address, Phone, Password) values(?, ?, ?, ?, ?)";;
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, password);
            statement.setString(4, phone);
            statement.setString(3, address);
            

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("A new user was inserted successfully!");
            }

            conn.close();
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
        }
    }
}
