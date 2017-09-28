package com.food.web.google.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.web.google.dao.GoogleDAO;
@Service
public class GoogleServiceImpl implements GoogleService{
	
	@Autowired
	GoogleDAO gd;
}
