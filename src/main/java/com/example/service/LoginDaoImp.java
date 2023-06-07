package com.example.service;

import org.json.JSONObject;

public interface LoginDaoImp {

	public JSONObject loginValidation(String userName,String password);
	
}
