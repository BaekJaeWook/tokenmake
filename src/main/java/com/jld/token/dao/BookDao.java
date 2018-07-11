package com.jld.token.dao;

import java.awt.print.Book;
import java.util.List;
import java.util.Map;

public interface BookDao {
	
	List<Book> getBookList(Map<String,Object> mapInfo);
	
}
