package com.iu.utils;

import java.sql.DriverManager;
import java.sql.Connection;

public class DbConnection {
	static Connection con = null;
	
public static Connection getConnection() {
	try {
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/itp","root","Rumeshi123");
	}catch(Exception e) {
		System.out.println(e);
	}
	return con;
}
}
