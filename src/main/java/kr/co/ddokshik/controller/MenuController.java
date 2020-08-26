package kr.co.ddokshik.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.ddokshik.service.MenuService;

@Controller
public class MenuController {

	@Autowired
	private MenuService menuService;

	@RequestMapping(value = "/about", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	public String index(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/about";
	}

	@RequestMapping(value = "/my_recipe", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	public String my_recipe(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/my_recipe";
	}

	@RequestMapping(value = "/recommend_recipe", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	public String recommend_recipe(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/recommend_recipe";
	}

	@RequestMapping(value = "/search_recipe", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	public String search_recipe(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/search_recipe";
	}

	@RequestMapping(value = "/shopping", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	public String shopping(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/shopping";
	}
}
