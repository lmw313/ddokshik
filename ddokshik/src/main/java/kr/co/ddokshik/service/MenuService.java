package kr.co.ddokshik.service;

import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.ddokshik.dao.MenuDao;

@Service
public class MenuService {
	@Autowired
	private MenuDao menuDao;
	public void about(HashMap<String, Object> param) throws Exception {
		menuDao.about(param);
	}
}
