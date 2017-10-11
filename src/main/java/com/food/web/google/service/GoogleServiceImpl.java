package com.food.web.google.service;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.web.google.dao.GoogleDAO;
import com.food.web.google.dto.GoogleInfo;
import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.gdata.client.spreadsheet.SpreadsheetService;
import com.google.gdata.data.spreadsheet.SpreadsheetEntry;
import com.google.gdata.data.spreadsheet.SpreadsheetFeed;
import com.google.gdata.util.ServiceException;
@Service
public class GoogleServiceImpl implements GoogleService{
	
	@Autowired
	GoogleDAO gd;

	@Override
	public List<GoogleInfo> searchInGoogle(GoogleInfo gi) {
		https://maps.googleapis.com/maps/api/place/textsearch/output?parameters
		return null;
	}
	
}
