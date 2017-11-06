package com.food.web.board.dto;

public class BoardInfo {
	private int bNum;
	private String bTitle;
	private String bName;
	private String credat;
	private String bContents;
	
	public String getbContents() {
		return bContents;
	}
	public void setbContents(String bContents) {
		this.bContents = bContents;
	}
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
	public String getCredat() {
		return credat;
	}
	public void setCredat(String credat) {
		this.credat = credat;
	}
	@Override
	public String toString() {
		return "BoardInfo [bNum=" + bNum + ", bTitle=" + bTitle + ", bName=" + bName + ", credat=" + credat
				+ ", bContents=" + bContents + "]";
	}
	
	
	
}