package img;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/ImageTest2UploadServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
				maxFileSize = 1024 * 1024 * 10,
				maxRequestSize = 1024 * 1024 * 50)

public class ImageTest2UploadServlet extends HttpServlet {
   
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");//set html code in servlet
		PrintWriter out = response.getWriter();
		
		int id = Integer.parseInt(request.getParameter("id"));
		Part part = request.getPart("file");		
		String fileName = extractFileName(part);
		String savePath = "D:/projects/NewPartner/WebContent/images/" + File.separator + fileName;
		File fileSaveDir = new File(savePath);
		
		part.write(savePath + File.separator);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/imageupload?autoReconnect=true&useSSL=false","root","Rumeshi123");
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("insert into image_table values(?,?,?)");
			ps.setInt(1, id);
			ps.setString(2, fileName);
			ps.setString(3, savePath);
			ps.executeUpdate();
			
			out.println("<center><h1>Image Inserted Successfully........</h1></center>");
			out.println("<center><a href='ImageTest2Display.jsp?id=" + id + "'>Display</a><center>");
			
		}catch(Exception e){
			System.out.println(e);
		}
	}

	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		
		for(String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() -1);
			}
		}
		return "";
	}

}