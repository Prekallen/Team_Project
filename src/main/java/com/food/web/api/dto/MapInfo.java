package com.food.web.api.dto;

public class MapInfo {

	private Object name;
	private Object formatted_address;
	private Object rating;
	private Object next_page_token;
	private Object photos;
	private Object photo_reference;
	private Object place_id;
	public Object getPlace_id() {
		return place_id;
	}
	public void setPlace_id(Object place_id) {
		this.place_id = place_id;
	}
	public Object getPhotos() {
		return photos;
	}
	public void setPhotos(Object photos) {
		this.photos = photos;
	}
	public Object getPhoto_reference() {
		return photo_reference;
	}
	public void setPhoto_reference(Object photo_reference) {
		this.photo_reference = photo_reference;
	}
	public Object getNext_page_token() {
		return next_page_token;
	}
	public void setNext_page_token(Object next_page_token) {
		this.next_page_token = next_page_token;
	}
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
		return "MapInfo [name=" + name + ", formatted_address=" + formatted_address + ", rating=" + rating
				+ ", next_page_token=" + next_page_token + ", photos=" + photos + ", photo_reference=" + photo_reference
				+ ", place_id=" + place_id + "]";
	}
	

}
