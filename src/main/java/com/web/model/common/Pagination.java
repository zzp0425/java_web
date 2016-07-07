package com.web.model.common;

/**
 * Created by zzp on 2016/5/4.
 * 分页信息
 */
public class Pagination {
    private int totalCount; //总记录数
    private int startIndex; //当前记录索引
    private int pageSize;   //每页记录数
    private int pageCount;  //页数
    private int currentPage;//当前页

    public Pagination(){

    }
    public Pagination(int startIndex, int pageSize){
        this.startIndex = startIndex;
        this.pageSize = pageSize;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getStartIndex() {
        return startIndex;
    }

    public void setStartIndex(int startIndex) {
        this.startIndex = startIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
}
