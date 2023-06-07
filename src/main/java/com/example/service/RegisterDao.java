package com.example.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.LinkedList;

import org.json.JSONArray;
import org.json.JSONObject;

import com.example.model.UserModel;

public class RegisterDao implements RegisterDaoImp {

	@Override
	public Boolean addUser(JSONObject userJson) {

		DBStoreDao dbImpl = new DBStoreDao();
		Connection con = dbImpl.DBconnection();
		// JSONObject userJson = new JSONObject(UserInfoJson);
		System.out.println("UserInfoJson----" + userJson);
		if (!userExist(userJson.getString("userName"), con)) {

			String inserQuery = "INSERT INTO userinfo (Firstname,Lastname,age,gender,Address,userid) VALUES (?,?,?,?,?,?)";
			PreparedStatement userInfoInsert;
			PreparedStatement userAccountInsert;
			int UserInfoAdded = 0;
			int accountAdded = 0;

			try {

				String query = "INSERT INTO users (username,password) VALUES (?,?)";
				userAccountInsert = con.prepareStatement(query);
				userAccountInsert.setString(1,
						userJson.getString("userName") != null ? userJson.getString("userName") : "");
				userAccountInsert.setString(2,
						userJson.getString("password") != null ? userJson.getString("password") : "");
				accountAdded = userAccountInsert.executeUpdate();
				if (accountAdded > 0) {
					userInfoInsert = con.prepareStatement(inserQuery);
					userInfoInsert.setString(1,
							userJson.getString("firstName") != null ? userJson.getString("firstName") : "");
					userInfoInsert.setString(2,
							userJson.getString("lastName") != null ? userJson.getString("lastName") : "");
					userInfoInsert.setInt(3, userJson.getString("age") != null ? userJson.getInt("age") : 0);
					userInfoInsert.setString(4,
							userJson.getString("gender") != null ? userJson.getString("gender") : "");
					userInfoInsert.setString(5,
							userJson.getString("address") != null ? userJson.getString("address") : "");
					userInfoInsert.setInt(6, accountAdded);

					UserInfoAdded = userInfoInsert.executeUpdate();
					System.out.println("INserttes");

				}

			} catch (SQLException e) {
				e.printStackTrace();
			}

			if (accountAdded > 0 && UserInfoAdded > 0) {
				return true;

			}
		}
		return false;

	}

	private boolean userExist(String userName, Connection con) {

		String checkQuery = "SELECT * from Users where userName=? ";
		PreparedStatement stmt;
		try {
			stmt = con.prepareStatement(checkQuery);
			stmt.setString(1, userName);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	
	
	
	@Override
	public Boolean editUser(String UserInfoJason) {
		return null;

	}

	@Override
	public void deleteUser(JSONObject UserInfoJason) {

	}

	@Override
	public LinkedList<LinkedHashMap<String, String>> listUser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserModel getUserById(int userId) {
		// TODO Auto-generated method stub
		return null;
	}

}
