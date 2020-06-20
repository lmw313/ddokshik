package kr.co.ddokshik.dao;

import java.util.HashMap;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MainDao {

	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static final String NAMESPACE = "kr.co.ddokshik.mainMapper";

	public void signup(HashMap param) throws Exception {

		sqlSession.insert(NAMESPACE + ".singup", param);
	}
	
	public void checklogin(HashMap param) throws Exception {

		sqlSession.insert(NAMESPACE + ".checklogin", param);
	}
}
