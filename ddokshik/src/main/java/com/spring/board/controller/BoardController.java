package com.spring.board.controller;

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
import com.spring.board.service.BoardService;

@Controller
@RequestMapping(value = "/menu")

public class BoardController {

	@Autowired
	private BoardService boardService;

	@RequestMapping( value = "/food_list")
	public String getMaList(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		return "menu/food_list";
	}

	@RequestMapping(value = "/getMaList")
	@ResponseBody
	public List<BoardDto> getMaList(HttpServletRequest request, HttpServletResponse response, BoardForm boardForm) throws Exception {

		List<BoardDto> food_list = boardService.getMaList(boardForm);

		return food_list;
	}
	
	@Controller
	@RequestMapping("/")
	public class RootController{
		@RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.POST})
		public String getMain() {
			return "food_list";
		}
	}
}

