package com.food.web.google.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.food.web.google.dao.GoogleDAO;

public class GoogleServiceImpl implements GoogleService{
	
	@Autowired
	GoogleDAO gd;
}
