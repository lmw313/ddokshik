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

		// SHA-256 蹂��솚 硫붿냼�뱶 �궗�슜 �삁�젣 �떆�옉
		String passwordToSHA256 = "password";
		String passwordBySHA256 = CommonUtil.strToSHA256(passwordToSHA256);
		// SHA-256 蹂��솚 �떎�뙣�븳 寃쎌슦 �냼�뒪 �떆�옉
		if (TextUtils.isEmpty(passwordBySHA256)) {
			System.out.println("鍮꾨�踰덊샇 SHA256 �빐�떛 媛� : 蹂��솚 �떎�뙣 濡쒖쭅�씠 �엳�떎硫� 異붽��빐二쇱꽭�슂");
		}
		// SHA-256 蹂��솚 �떎�뙣�븳 寃쎌슦 �냼�뒪 �걹
		System.out.println("鍮꾨�踰덊샇 SHA256 �빐�떛 媛� : " + passwordBySHA256);
		// SHA-256 蹂��솚 硫붿냼�뱶 �궗�슜 �삁�젣 �걹

		return "home";
	}
}
