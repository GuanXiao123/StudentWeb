package com.gaoxin;
import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DBManage {
		
	static Connection conn = null;
		
	public  Connection getConn(){
		
		
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://107.170.239.139:3306/stu_info";
			String user = "root";
			String passwd = "rootpasswd";
			conn = DriverManager.getConnection(url,user,passwd);
			
			
		}catch (Exception e){
			
			e.printStackTrace();
		}
		return conn;
	}
	public void closeConn(){
		try {
			conn.close();
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}

}
