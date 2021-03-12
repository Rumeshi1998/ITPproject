package com.iu.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iu.utils.DbConnection;
//import com.mysql.cj.xdevapi.PreparableStatement;
import java.sql.PreparedStatement;

@WebServlet("/imageUpload")
public class imageUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get three values
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String image = request.getParameter("image");
		
		//take a image file from given path
		FileInputStream fis = new FileInputStream(new File(image));
		
		//fis contains bits and binaries of the image
		//now we store these data into database
		
		Connection con=DbConnection.getConnection();
		try {
		PreparedStatement ps=con.prepareStatement("insert into imageupload(id,name,image)values(?,?,?)");
		ps.setString(1, id);
		ps.setString(2, name);
		ps.setBinaryStream(3, fis);
		
		int n=ps.executeUpdate();
		if(n>0) {
			response.getWriter().println("successfully uploaded");
		}
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
