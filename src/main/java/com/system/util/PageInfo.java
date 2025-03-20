package com.system.util;

import java.io.Serializable;
import java.util.List;

public class PageInfo<T> implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 생성자.
	 */
	public PageInfo() {
	}
	/**
	 * @param data
	 */
	public PageInfo(List<T> data) {
		this.data = data;
	}

	/**
	 * @param pageIndex - 현재 페이지 번호
	 * @param pageSize - 한 페이지 조회 수(pageSize)
	 * @param totalCount - 총 페이지 수
	 */
	public PageInfo(int pageIndex, int pageSize, int totalCount, List<T> data) {
		this.pageIndex = pageIndex;
		this.pageSize = pageSize;
		this.totalCount = totalCount;
		this.data = data;

		itempageend = totalCount / pageSize;

		if(totalCount % pageSize == 0) {
			itempageend--;
		}
		if(pageIndex < 0) {
			pageIndex = 0;
		}

		itemtotalpage = totalCount / pageSize;

		if(totalCount % pageSize != 0 || totalCount == 0) {
			itemtotalpage++;
		}

		if(itempageend < pageIndex) {
			pageIndex = itempageend;
		}

		itempagestart = (pageIndex / pageSize) * pageSize;

		int send = itempagestart + 9;

		if(send < itempageend) {
			itempageend = send;
		} else {
			itempagenext = false;
		}


	}

	private int itempageend;

	private boolean itempagenext;

	private int itempagestart;

	private int itemtotalpage;

	private int totalCount;

	private int pageIndex;

	private int pageSize;

	private List<T> data;


	public int getItempageend() {
		return itempageend;
	}
	public void setItempageend(int itempageend) {
		this.itempageend = itempageend;
	}
	public boolean isItempagenext() {
		return itempagenext;
	}
	public void setItempagenext(boolean itempagenext) {
		this.itempagenext = itempagenext;
	}
	public int getItempagestart() {
		return itempagestart;
	}
	public void setItempagestart(int itempagestart) {
		this.itempagestart = itempagestart;
	}
	public int getItemtotalpage() {
		return itemtotalpage;
	}
	public void setItemtotalpage(int itemtotalpage) {
		this.itemtotalpage = itemtotalpage;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public void setData(List<T> data) {
		this.data = data;
	}
	/**
	 * get 현재 페이지 번호.
	 *
	 * @return pageIndex
	 */
	public int getPageIndex() {
		return this.pageIndex;
	}

	/**
	 * get 한 페이지 조회 수.
	 *
	 * @return pageSize
	 */
	public int getPageSize() {
		return this.pageSize;
	}

	/**
	 * get 총 페이지 수.
	 *
	 * @return totalCount
	 */
	public int getTotalCount() {
		return this.totalCount;
	}

	/**
	 * List<데이터 테이블>.
	 *
	 * @return List<T>
	 */
	public List<T> getData() {
		return this.data;
	}

}
