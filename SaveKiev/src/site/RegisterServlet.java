package site;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;

public class RegisterServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String n = request.getParameter("userName");
		String p1 = request.getParameter("userPass1");
		String p2 = request.getParameter("userPass2");		
		String e = request.getParameter("userEmail");
		String s = request.getParameter("userSex");

		try {
			DatastoreService datastore = DatastoreServiceFactory
					.getDatastoreService();
			Entity user = new Entity("User");
			user.setProperty("Name", n);
			
			if(p1.equals(p2)){
			user.setProperty("Password", p1);}
			
			user.setProperty("E-mail", e);
			user.setProperty("Sex", s);
			datastore.put(user);
		
			//out.print("You are successfully registered...");
		} catch (Exception e2) {
			System.out.println(e2);
		}
		out.close();
	}

}
