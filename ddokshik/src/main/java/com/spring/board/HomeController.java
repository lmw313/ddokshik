package com.spring.board;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.apache.http.util.TextUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.ddokshik.common.CommonUtil;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		// SHA-256 변환 메소드 사용 예제 시작
		String passwordToSHA256 = "password";
		String passwordBySHA256 = CommonUtil.strToSHA256(passwordToSHA256);
		// SHA-256 변환 실패한 경우 소스 시작
		if (TextUtils.isEmpty(passwordBySHA256)) {
			System.out.println("비밀번호 SHA256 해싱 값 : 변환 실패 로직이 있다면 추가해주세요");
		}
		// SHA-256 변환 실패한 경우 소스 끝
		System.out.println("비밀번호 SHA256 해싱 값 : " + passwordBySHA256);
		// SHA-256 변환 메소드 사용 예제 끝

		return "home";
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/shopping", method = RequestMethod.GET)
	public String shopping(Locale locale, Model model) {

		return "shopping";
	}
}
