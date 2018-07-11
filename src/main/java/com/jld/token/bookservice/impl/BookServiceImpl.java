package com.jld.token.bookservice.impl;

import java.awt.print.Book;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jld.token.bookservice.BookService;
import com.jld.token.dao.BookDao;

@Service("bookService")
public class BookServiceImpl implements BookService{
	
	@Resource(name="bookDao")
	private BookDao bookDao;
	
	@Override
	public List<Book> getBookList(Map<String,Object> mapInfo){
		return bookDao.getBookList(mapInfo);
	}
		
}
