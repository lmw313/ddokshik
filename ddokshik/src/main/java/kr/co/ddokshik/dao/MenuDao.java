package kr.co.ddokshik.dao;

import java.util.HashMap;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MenuDao {

	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static final String NAMESPACE = "com.spring.board.boardMapper";
}
