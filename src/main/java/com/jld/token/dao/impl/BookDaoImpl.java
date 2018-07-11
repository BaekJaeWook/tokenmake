package com.jld.token.dao.impl;

import java.awt.print.Book;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jld.token.dao.BookDao;

@Repository("bookDao")
public class BookDaoImpl implements BookDao{
	
	@Autowired
	private SqlSession sqlSession;	
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	/* (non-Javadoc)
	 * @see com.jld.token.dao.BookDao#getBookList(java.util.Map)
	 */
	@Override
	public List<Book> getBookList(Map<String,Object> mapInfo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("getBookList",mapInfo);
	}	
	
}
