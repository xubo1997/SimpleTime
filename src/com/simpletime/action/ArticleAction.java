package com.simpletime.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.simpletime.service.ArticleService;

public class ArticleAction extends ActionSupport {
    
    private ArticleService articleService;
    
    public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

}
