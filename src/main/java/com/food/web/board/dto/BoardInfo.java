package com.food.web.board.dto;

public class BoardInfo {
	private int bNum;
	private String bTitle;
	private String bName;
	private String cradat;
	
	public int getbNum() {
		return bNum;
	}
	public void setbNum(int bNum) {
		this.bNum = bNum;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getCradat() {
		return cradat;
	}
	public void setCradat(String cradat) {
		this.cradat = cradat;
	}
	@Override
	public String toString() {
		return "BoardInfo [bNum=" + bNum + ", bTitle=" + bTitle + ", bName=" + bName + ", cradat=" + cradat + "]";
	}
	
	
}
