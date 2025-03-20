package com.system.util;

public class SearchModel {

	private int pageIndex = 1;  // 현재 페이지 번호
    private int pageSize  = 10; // 페이지당 게시글 수
    private int totalCount  = 0; // 전체 데이터 개수

    private String searchType = "";
    private String searchText = "";

    private String columnNm = "";
    private String columnValue = "";

    private String subPath;

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	public String getColumnNm() {
		return columnNm;
	}

	public void setColumnNm(String columnNm) {
		this.columnNm = columnNm;
	}

	public String getColumnValue() {
		return columnValue;
	}

	public void setColumnValue(String columnValue) {
		this.columnValue = columnValue;
	}

	public String getSubPath() {
		return subPath;
	}

	public void setSubPath(String subPath) {
		this.subPath = subPath;
	}
	
	 // Limit 시작 위치 계산
    public int getLimitStart() {
        return (this.pageIndex - 1) * this.pageSize;
    }

    // 총 페이지 수 계산
    public int getTotalPages() {
        return (int) Math.ceil((double) totalCount / pageSize);
    }

    // 이전 페이지 존재 여부
    public boolean hasPreviousPage() {
        return pageIndex > 1;
    }

    // 다음 페이지 존재 여부
    public boolean hasNextPage() {
        return pageIndex < getTotalPages();
    }

}
