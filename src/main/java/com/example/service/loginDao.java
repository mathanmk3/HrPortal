package com.example.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.json.JSONObject;

public class loginDao implements LoginDaoImp {

	@Override
	public JSONObject loginValidation(String userName, String password) {
		DBStoreDao dbImpl = new DBStoreDao();
		Connection con = dbImpl.DBconnection();
		JSONObject jsonObj = new JSONObject();
		try {
			String checkQuery = "SELECT username,id FROM users WHERE username =? AND password=?";
			PreparedStatement stmt = con.prepareStatement(checkQuery);
			stmt.setString(1, userName);
			stmt.setString(2, password);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				jsonObj.put("userName", rs.getString("username"));
				jsonObj.put("UserId", rs.getString("id"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}  
		return jsonObj;
		
	}

}



