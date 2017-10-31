package com.food.web.api.dto;

public class MapInfo {

	private Object name;
	private Object formatted_address;
	private Object rating;
	
	

	public Object getName() {
		return name;
	}
	public void setName(Object name) {
		this.name = name;
	}
	public Object getFormatted_address() {
		return formatted_address;
	}
	public void setFormatted_address(Object formatted_address) {
		this.formatted_address = formatted_address;
	}

	public Object getRating() {
		return rating;
	}
	public void setRating(Object rating) {
		this.rating = rating;
	}
	@Override
	public String toString() {
		return "MapInfo [name=" + name + ", formatted_address=" + formatted_address + ", rating=" + rating + "]";
	}

	
}
