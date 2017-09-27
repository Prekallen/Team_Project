package com.food.web.google.dto;

public class GoogleInfo {
	private int rNum;
	private String address;
	private String name;
	private double lat;
	private double lng;
	private float rating;
	
	@Override
	public String toString() {
		return "GoogleInfo [rnum=" + rNum + ", address=" + address + ", name=" + name + ", lat=" + lat + ", lng=" + lng
				+ ", rating=" + rating + "]";
	}
	
	public int getrNum() {
		return rNum;
	}

	public void setrNum(int rNum) {
		this.rNum = rNum;
	}

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLng() {
		return lng;
	}
	public void setLng(double lng) {
		this.lng = lng;
	}
	public float getRating() {
		return rating;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
}
