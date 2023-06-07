package com.example.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.service.LoginDaoImp;
import com.example.service.RegisterDao;
import com.example.service.RegisterDaoImp;
import com.example.service.loginDao;

@Controller
public class LoginController {
	
	@GetMapping("login")
	public ModelAndView login() {
		ModelAndView model = new ModelAndView();
		model.setViewName("login.jsp");
		return model;
	}

	@PostMapping("login")
	public ModelAndView doLogin(@RequestParam("username") String username, @RequestParam String password) {

		ModelAndView model = new ModelAndView();
		LoginDaoImp loginDao = new loginDao();
		JSONObject loginObj = loginDao.loginValidation(username, password);
		if (!loginObj.isEmpty()) {
			model.addObject("username", loginObj.getString("userName"));
			model.setViewName("redirect:/dashboard");
		} else {
			model.addObject("error", "invalid user");
			model.setViewName("login.jsp");
		}
		return model;
	}

	@GetMapping("dashboard")
	public ModelAndView WelcomePage(@RequestParam("username") String username) {
		ModelAndView model = new ModelAndView();
		model.addObject("username", username);
		model.setViewName("dashboard.jsp");
		return model;
	}

	@GetMapping("register")
	public ModelAndView registerUser() {
		ModelAndView model = new ModelAndView();
		model.setViewName("register.jsp");
		return model;
	}

	@PostMapping(value = "register", consumes = { "application/json", "application/json;charset=UTF-8",
			"application/x-www-form-urlencoded" })
	public ResponseEntity<String> userRegister(@RequestBody String userInfo) {
		System.out.println(userInfo);
		System.out.println("11111111111111111111111");
		ModelAndView model = new ModelAndView();
		RegisterDaoImp addUserDao = new RegisterDao();
		JSONObject uderInfoJson = new JSONObject(userInfo);
		System.out.println("uderInfoJson111111111---"+uderInfoJson);
		Boolean added = addUserDao.addUser(uderInfoJson);

		if (!added) {
			model.addObject("Error", "User Not Added");
			model.setViewName("redirect:/register");
		} else {
			model.addObject("Scuess", "User Added");
			model.setViewName("redirect:/register");
		}

		return null;
	}
}
