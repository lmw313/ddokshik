package kr.co.ddokshik.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.ddokshik.common.DdokshikResult;
import kr.co.ddokshik.service.MainService;

@Controller
public class MainController {

	@Autowired
	private MainService mainService;

	@RequestMapping(value = "/index", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	public String index(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "main/index";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	public String getsignup(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "main/signup";

	}
	
	@RequestMapping(value = "/login_main", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	public String login_main(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "main/login_main";

	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	@ResponseBody
	public DdokshikResult signup(HttpServletRequest request, HttpServletResponse response,
			@RequestParam HashMap<String, Object> param) throws Exception {
		DdokshikResult ddokshikResult = new DdokshikResult();
		mainService.signup(param);

		ddokshikResult.setResultMsg("success");
		return ddokshikResult;
	}

}
