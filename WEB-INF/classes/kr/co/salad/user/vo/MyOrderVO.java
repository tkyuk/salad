package kr.co.salad.user.vo;

public class MyOrderVO {
	private int orderNum, startNum, endNum, currentPage;
	private String id;

	public MyOrderVO() {
	}

	public MyOrderVO(int orderNum, int startNum, int endNum, int currentPage, String id) {
		this.orderNum = orderNum;
		this.startNum = startNum;
		this.endNum = endNum;
		this.currentPage = currentPage;
		this.id = id;
	}

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "MyOrderVO [orderNum=" + orderNum + ", startNum=" + startNum + ", endNum=" + endNum + ", currentPage="
				+ currentPage + ", id=" + id + "]";
	}

}// MyCancelVO
