package kr.co.ddokshik.controller;

import java.util.Map;

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
public class TestController {

	@Autowired
	private MainService mainService;

	@RequestMapping(value = "/minwoo", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	public String minwoo1(HttpServletRequest request, HttpServletResponse response,
			@RequestParam Map<String, Object> param) throws Exception {

		return "main/index2";
	}

	@RequestMapping(value = "/minwoo", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	@ResponseBody
	public DdokshikResult minwoo2(HttpServletRequest request, HttpServletResponse response,
			@RequestParam Map<String, Object> param) throws Exception {
		DdokshikResult ddokshikResult = new DdokshikResult();
		System.out.println("민우 : " + param.toString());
		ddokshikResult.setResultData(param);
		return ddokshikResult;
	}
}
