<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("val");
	if (name == null || name.trim().equals("")) {
		out.print("<p>Please enter Email</p>");
	} else {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/trainreserve","root","");
			PreparedStatement pst = conn.prepareStatement("select * from reserve_data where email=?");
			pst.setString(1, name);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				out.print("<p>Email Id Already Use</p>");
			}
			conn.close();
		} catch (Exception e) {
			out.print(e);
		}
	}
%>