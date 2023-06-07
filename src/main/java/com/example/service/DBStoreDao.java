package com.example.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBStoreDao implements DBStoreImpl {

	@Override
	public Connection DBconnection() {
		Connection con = null;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
		//	String connectionUrl = "user=sa;password=your_password";
			 con=DriverManager.getConnection(  
					"jdbc:sqlserver://MAVCHN1121184:1433;databaseName=master;encrypt=true;trustServerCertificate=true","sa","Demo@123"); 
		} catch ( SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;  
		
		
	}

}
