package kr.co.ddokshik.dao;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MenuDao {
	

	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static final String NAMESPACE = "kr.co.ddokshik.listMapper";

	public void about(HashMap<String, Object> param) {
		// TODO Auto-generated method stub
		MenuDao dao = sqlSession.getMapper(MenuDao.class);
		
	}
	
}
