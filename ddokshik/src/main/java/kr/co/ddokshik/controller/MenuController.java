package kr.co.ddokshik.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.ddokshik.service.MenuService;

@Controller
public class MenuController {

	@Autowired
	private MenuService menuService;

	@RequestMapping(value = "/about")
	public String index(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/about";
	}

	@RequestMapping(value = "/my_receipe")
	public String my_receipe(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/my_receipe";
	}

	@RequestMapping(value = "/recommend_receipe")
	public String recommend_receipe(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/recommend_receipe";
	}

	@RequestMapping(value = "/search_receipe")
	public String search_receipe(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/search_receipe";
	}

	@RequestMapping(value = "/shopping")
	public String shopping(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/shopping";
	}
}
