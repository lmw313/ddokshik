package kr.co.ddokshik.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ddokshik.dao.MainDao;

@Service
public class MainService {

	@Autowired
	private MainDao mainDao;

	public void signup(HashMap<String, Object> param) throws Exception {

		mainDao.signup(param);
	}
}
