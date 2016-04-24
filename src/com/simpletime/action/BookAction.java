package com.simpletime.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.codehaus.jackson.map.util.JSONPObject;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.simpletime.pojo.Book;
import com.simpletime.pojo.Page;
import com.simpletime.service.BookService;

public class BookAction extends ActionSupport {
	@Autowired
	private BookService bookService;
	
	private Map<String, Object> jsonResult;
	
	public void setJsonResult(Map<String, Object> jsonResult) {
		this.jsonResult = jsonResult;
	}
	public Map<String, Object> getJsonResult() {
		return jsonResult;
	}

	public HttpServletRequest getRequest() {
		ActionContext context = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) context
				.get(ServletActionContext.HTTP_REQUEST);
		return request;
	}
	
	
	
	public String getIndexData(){
		/*获取参数*/
		HttpServletRequest request = getRequest();
		int pageNo = Integer.parseInt(request.getParameter("pageNo"));
		int pageSize = Integer.parseInt(request.getParameter("pageSize"));
		Page page = new Page();
		page.setPageNo(pageNo);
		page.setPageSize(pageSize);
		List<Book> list = bookService.getIndexData(page);
		Map<String, Object> result = new HashMap<String,Object>();
		result.put("data", list);
		System.out.println(list);
		//jsonResult = json.toString();
		setJsonResult(result);
		return "json";
	}
	

	public String add() {
		HttpServletRequest request = getRequest();

		String bookName = request.getParameter("bookName");
		String author = request.getParameter("author");
		Book book = new Book();
		book.setName(bookName);
		book.setAuthor(author);
		bookService.save(book);
		System.out.println(bookName);
		return SUCCESS;
	}

	public String find() {

		Book book = bookService.findById("402880e7542f0c9801542f0cb6b30000");
		System.out.println(book.getName());
		return SUCCESS;
	}

	public String findall() {

		List<Book> book = bookService.findAll();
		System.out.println(book.get(0).getName());
		return SUCCESS;
	}
}
