package com.example.controller;

import java.util.LinkedHashMap;
import java.util.LinkedList;

import org.json.JSONArray;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.UserModel;
import com.example.service.AdminDao;
import com.example.service.RegisterDaoImp;

@Controller
public class AdminController {

	@GetMapping("getuser")
	public ModelAndView getUserDetails() {

		RegisterDaoImp adminDao = new AdminDao();

		LinkedList<LinkedHashMap<String, String>> userArray = adminDao.listUser();

		ModelAndView model = new ModelAndView();
		model.addObject("userInfo", userArray);
		System.out.println(userArray);
		model.setViewName("users.jsp");
		return model;

	}

	@GetMapping("edituser")
	public ModelAndView getEditUserPage(@RequestParam("id") int id) {

		RegisterDaoImp adminDao = new AdminDao();
		UserModel userModel = adminDao.getUserById(id);
		ModelAndView model = new ModelAndView();
		model.addObject("userModel", userModel);
		model.setViewName("edituser.jsp");

		return model;

	}

	@PostMapping(value = "edituser", consumes = { "application/json", "application/json;charset=UTF-8",
			"application/x-www-form-urlencoded" })
	public ResponseEntity<String> editUser(@RequestBody String userInfo) {

		RegisterDaoImp adminDao = new AdminDao();
		ModelAndView model = new ModelAndView();
		
		System.out.println(userInfo);
		Boolean update =adminDao.editUser(userInfo);


		if (!update) {
			model.addObject("Error", "User Not Update");
			model.setViewName("redirect:/edituser");
		} else {
			model.addObject("Scuess", "User Added");
			model.setViewName("redirect:/getuser");
		}

		return null;

	}

}
