package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

@PropertySource("classpath:mydb.properties")
public class Testjdbc {

	@Autowired
	private  Environment env;
	
	public static void main(String[] args)
	{
		String jdbcUrl = "jdbc:mysql://localhost:3306/my_security?useSSL=false";
		String user = "dbstudent";
		String pass = "dbstudent";
		
		try 
		{
			System.out.println("Connecting to database: " + jdbcUrl);
			
			Connection myConn = 
					DriverManager.getConnection(jdbcUrl, user, pass);
			
			System.out.println("Connection successful");
		}
		
		catch(Exception exc)
		{
			exc.printStackTrace();
		}

	}
	
	
}
