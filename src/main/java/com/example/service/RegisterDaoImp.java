package com.example.service;

import java.util.LinkedHashMap;
import java.util.LinkedList;

import org.json.JSONArray;
import org.json.JSONObject;

import com.example.model.UserModel;

public interface RegisterDaoImp  {
	
	public Boolean addUser (JSONObject UserInfoJason);
	
	public Boolean editUser(String UserInfoJason);
	
	public void deleteUser (JSONObject UserInfoJason);
	
	public LinkedList<LinkedHashMap<String, String>>  listUser();
	
	public UserModel getUserById(int userId);

}
