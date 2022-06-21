package com.dao;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;

import com.bean.LoginBean;
@SuppressWarnings("unused")
public class ADAO {

	 private String jdbcURL = "jdbc:mysql://localhost:3306/xyz";
	    private String jdbcUsername = "root";
	    private String jdbcPassword = "456123";
	    private ResultSet count=null;
	
	private static final String select="select * from user where user=? and pass=?";
	private static final String register1="select * from user where user=?";
	private static final String register2="insert into user values(?,?,?,?,?)";
	public ADAO() {}
	protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);}
        catch(Exception e) {
     
            e.printStackTrace();
        }
        return connection;
    }
	 public String countUser(String u,String s) throws Exception {
         String k=null;
         try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(select);)
         {statement.setString(1, u);
         	statement.setString(2, s);
             ResultSet count =statement.executeQuery();
            
             if(count.next())
             {
            	 k="username:"+count.getString("user")+"::"+"name:"+count.getString("name")+"::"+"email:"+count.getString("email")+"::"+"country:"+" "+count.getString("country");
             }
             else {
             	return "";
             }
         }
         return k;
     }
	public  boolean checkAvail(String x) throws Exception  {
		try(Connection connect =getConnection(); PreparedStatement statement = connect.prepareStatement(register1);)
		{
			statement.setString(1, x);
			ResultSet count=statement.executeQuery();
			if(count.next())
			{
				return false;
			}
			else {
				return true;
			}
		}
	
	}
	public String registerUser(String name,String un,String pass,String email,String coun) throws Exception{
		boolean x=false;
		x=checkAvail(un);
		if(x) {
		try(Connection connection = getConnection(); PreparedStatement st = connection.prepareStatement(register2);)
		{
			st.setString(1, un);
			st.setString(2, name);
			
			st.setString(3, pass);
			st.setString(4, email);
			st.setString(5, coun);
		 int k=st.executeUpdate();
			return "true";
		}
		}
		else {
			return "false";
		}
	}
}
