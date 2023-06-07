package com.example.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.json.JSONArray;
import org.json.JSONObject;

import com.example.model.UserModel;

public class AdminDao implements RegisterDaoImp {

	@Override
	public Boolean addUser(JSONObject UserInfoJason) {

		DBStoreDao dbImpl = new DBStoreDao();
		Connection con = dbImpl.DBconnection();

		return null;
	}

	@Override
	public Boolean editUser(String userJsonString) {

		DBStoreDao dbImpl = new DBStoreDao();
		Connection con = dbImpl.DBconnection();
		JSONObject userJson = new JSONObject(userJsonString);
		int update = 0;
		String inserQuery = "UPDATE  userinfo  SET Firstname =?,Lastname=?,age=?,gender=?,Address=? Where userid=? ";
		System.out.println(userJsonString);
		PreparedStatement userInfoInsert;
		try {
			userInfoInsert = con.prepareStatement(inserQuery);
			userInfoInsert.setString(1, userJson.getString("firstName") != null ? userJson.getString("firstName") : "");
			userInfoInsert.setString(2, userJson.getString("lastName") != null ? userJson.getString("lastName") : "");
			userInfoInsert.setInt(3, userJson.getString("age") != null ? userJson.getInt("age") : 0);
			userInfoInsert.setString(4, userJson.getString("gender") != null ? userJson.getString("gender") : "");
			userInfoInsert.setString(5, userJson.getString("address") != null ? userJson.getString("address") : "");
			userInfoInsert.setString(5, userJson.getString("userid") != null ? userJson.getString("userid") : "");
			update = userInfoInsert.executeUpdate();
			
			System.out.println(update);

		} catch (Exception e) {

			e.getStackTrace();
		}
		if (update == 0) {
			return false;

		}

		return true;
	}

	@Override
	public void deleteUser(JSONObject UserInfoJason) {

	}

	@Override
	public LinkedList<LinkedHashMap<String, String>> listUser() {

		DBStoreDao dbImpl = new DBStoreDao();
		Connection con = dbImpl.DBconnection();

		String listQuery = "SELECT * FROM userinfo";
		LinkedList<LinkedHashMap<String, String>> userList = new LinkedList<LinkedHashMap<String, String>>();
		try {
			PreparedStatement stmt = con.prepareStatement(listQuery);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				LinkedHashMap<String, String> hasMap = new LinkedHashMap<String, String>();
				hasMap.put("userId", rs.getString("userid"));
				hasMap.put("firstName", rs.getString("firstName"));
				hasMap.put("lasttName", rs.getString("lastName"));
				hasMap.put("age", rs.getString("age"));
				hasMap.put("gender", rs.getString("gender"));
				hasMap.put("address", rs.getString("address"));

				userList.add(hasMap);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userList;
	}

	@Override
	public UserModel getUserById(int userId) {
		DBStoreDao dbImpl = new DBStoreDao();
		Connection con = dbImpl.DBconnection();
		String query = "select * from users us Join userinfo usi ON us.ID=usi.userid where us.ID=?";
		UserModel userModel = new UserModel();
		try {
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setInt(1, userId);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				LinkedHashMap<String, String> hasMap = new LinkedHashMap<String, String>();
				userModel.setUserId(rs.getInt("userid"));
				userModel.setUserName(rs.getString("username"));
				userModel.setFirstName(rs.getString("FirstName"));
				userModel.setLastName(rs.getString("LastName"));
				userModel.setFullName(rs.getString("FullName"));
				userModel.setAge(rs.getString("age"));
				userModel.setGender(rs.getString("gender"));
				userModel.setAddress(rs.getString("Address"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return userModel;
	}

}
