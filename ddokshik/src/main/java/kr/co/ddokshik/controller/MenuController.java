package kr.co.ddokshik.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.ddokshik.dao.MenuDao;
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
	
	@RequestMapping(value = "/insertTest", method = RequestMethod.POST, produces = "application/json;charset=utf8")
	public String insertTest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/insertTest";
	}
	
	@RequestMapping(value = "/insertTestForm", method = RequestMethod.GET, produces = "application/json;charset=utf8")
	public String insertTestForm(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/insertTestForm";
	}
	
	@RequestMapping(value = "/selectTest", method = RequestMethod.GET, produces = "application/json;charset=utf8")
	public String selectTest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/selectTest";
	}
	
	@RequestMapping(value = "/updateFormTest", method = RequestMethod.GET, produces = "application/json;charset=utf8")
	public String updateFormTest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/updateFormTest";
	}
	
	@RequestMapping(value = "/updateTest", method = RequestMethod.POST, produces = "application/json;charset=utf8")
	public String updateTest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/updateTest";
	}
	
	@RequestMapping(value = "/deleteForm", method = RequestMethod.GET, produces = "application/json;charset=utf8")
	public String deleteForm(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/deleteForm";
	}
	
	@RequestMapping(value = "/delete_list", method = RequestMethod.POST, produces = "application/json;charset=utf8")
	public String delete_list(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "menu/delete_list";
	}
}
