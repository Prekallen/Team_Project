package com.food.web.api.service;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.List;

import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;

import com.food.web.api.dto.MapInfo;

@Service
public class PhotoServiceImpl implements PhotoService {

	@Override
	public List<String> getPhotoList(List<MapInfo> pht) throws UnsupportedEncodingException, IOException {
		
		try{
			for(int i=0; i<pht.size(); i++){
			URL url = new URL("https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&key=AIzaSyDhaT80ZtktlPWKNSklWxzIVcCx6OfgtJA&photoreference=" + pht.get(i)) ;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	
}
