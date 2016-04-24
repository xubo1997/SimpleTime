package com.simpletime.pojo;

public class Page {

	private int pageNo = 1;
	private int pageSize = 10;
	private int totalPage;
	private int totalRecord;
	public int getPageNo() {
		if(pageNo>totalPage){
			pageNo = totalPage;
		}
		if(pageNo<1){
			pageNo = 1;
		}
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
		this.totalPage = (totalRecord+this.pageSize-1)/this.pageSize;
	}
	//开始记录条数  
    public Integer getStartRow(){  
        return (getPageNo()-1)*getPageSize();  
    }  
    //结束记录条数  
    public Integer getEndRow(){  
        return getPageNo()*getPageSize();        
    }
	
}
