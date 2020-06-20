package kr.co.ddokshik.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.board.dto.BoardDto;
import com.spring.board.form.BoardForm;

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

	@RequestMapping(value = "/signup", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	@ResponseBody
	public void signup(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HashMap param = new HashMap();
		mainService.signup(param);
	}

}