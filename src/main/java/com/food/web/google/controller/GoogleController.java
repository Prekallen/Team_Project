package com.food.web.google.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.food.web.google.service.GoogleService;

@Controller
public class GoogleController {
	
	@Autowired
	GoogleService gs;
}
