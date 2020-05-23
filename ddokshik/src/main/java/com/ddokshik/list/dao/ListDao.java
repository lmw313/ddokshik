package com.ddokshik.list.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.ddokshik.list.dto.ListDto;
import com.ddokshik.list.form.ListForm;

@Repository
public class ListDao extends SqlSessionDaoSupport {

	@Resource(name = "sqlSessionFactory")
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	private static final String NAMESPACE = "com.ddokshik.list.listMapper";

	public List<ListDto> getFoodList(ListForm ListForm) throws Exception {

		return this.getSqlSession().selectList(NAMESPACE + ".getFoodList");
	}
}
