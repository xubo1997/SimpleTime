package com.simpletime.action;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.simpletime.pojo.Book;
import com.simpletime.pojo.Movie;
import com.simpletime.pojo.Page;
import com.simpletime.service.MovieService;

public class MovieAction extends ActionSupport {
    @Autowired
    private MovieService movieService;
    
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
		List<Movie> list = movieService.getIndexData(page);
		Map<String, Object> result = new HashMap<String,Object>();
		result.put("data", list);
		setJsonResult(result);
		return "json";
	}
    
    public String add(){
    	Movie m = new Movie();
    	m.setBuileTime(new Date());
    	m.setPhotoUrl("upload/img/movie/");
    	for(int i=0;i<10;i++){
    		movieService.save(m);
    		
    	}
    	return SUCCESS;
    }

}
