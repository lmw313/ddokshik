package kr.co.ddokshik.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ddokshik.dao.MenuDao;

@Service
public class MenuService {

	@Autowired
	private MenuDao menuDao;
}
