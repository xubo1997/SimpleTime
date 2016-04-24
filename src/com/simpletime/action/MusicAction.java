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
import com.simpletime.pojo.Movie;
import com.simpletime.pojo.Music;
import com.simpletime.pojo.Page;
import com.simpletime.service.MusicService;

public class MusicAction extends ActionSupport {
    @Autowired
    private MusicService musicService;
    
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
		List<Music> list = musicService.getIndexData(page);
		Map<String, Object> result = new HashMap<String,Object>();
		result.put("data", list);
		setJsonResult(result);
		return "json";
	}
    
    public String add(){
    	Music m = new Music();
    	m.setBuileTime(new Date());
    	m.setPhotoUrl("upload/img/music/");
    	m.setLyric("啊啊啊啊");
    	for(int i=0;i<10;i++){
    		musicService.save(m);
    		
    	}
    	return SUCCESS;
    }

}
