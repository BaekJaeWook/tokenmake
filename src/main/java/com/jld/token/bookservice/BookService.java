package com.jld.token.bookservice;

import java.awt.print.Book;
import java.util.List;
import java.util.Map;

public interface BookService {
	
	List<Book> getBookList(Map<String,Object> mapInfo);
}
