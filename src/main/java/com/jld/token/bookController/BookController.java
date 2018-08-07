package com.jld.token.bookController;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jld.token.bookservice.BookService;

@Controller
public class BookController {
	
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	
	@Autowired
	BookService bookService;
	
	@RequestMapping(value = "/book",method = RequestMethod.GET)
	public String home(Model model) {
				
		logger.debug("Messag test");
		logger.info("[info] Messt test logger");		
		//logger.debug("try" , bookService.getBookList());
		
		/*BookVO bookVo = new BookVO();
		bookVo.setId("bjt1@naver.com");	*/
		
		Map<String, Object> hm = new HashMap<String,Object>();
		hm.put("id", "coin4@gmail.com");
		
		System.out.println("test loggger" + bookService.getBookList(hm));
		
		model.addAttribute("books",bookService.getBookList(hm));
		return "/book/book";
	}
	
	@RequestMapping(value = "/loadmap.do",method = RequestMethod.GET)
	public String loadmap(Model model) {
				
		logger.debug("Messag test");
		logger.info("[info] Messt test logger");		
		//logger.debug("try" , bookService.getBookList());
		
		/*BookVO bookVo = new BookVO();
		bookVo.setId("bjt1@naver.com");	*/
		
		Map<String, Object> hm = new HashMap<String,Object>();
		hm.put("id", "coin4@gmail.com");
		
		System.out.println("test loggger" + bookService.getBookList(hm));
		
		model.addAttribute("books",bookService.getBookList(hm));
		return "/menu/roadmap01";
	}

}
