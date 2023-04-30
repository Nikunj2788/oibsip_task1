package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionUtil {
	public static Connection createConnection() {
		Connection conn=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/trainreserve","root","");
			System.out.println("Connected");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
