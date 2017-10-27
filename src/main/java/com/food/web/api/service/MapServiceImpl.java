package com.food.web.api.service;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URL;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;

import com.food.web.api.dto.MapInfo;

@Service
public class MapServiceImpl implements MapService{

	@Override
	public String getMapList(MapInfo mi) throws UnsupportedEncodingException, IOException{

    	String query = "";
 
        try {
 
        	URL url = new URL("https://maps.googleapis.com/maps/api/place/textsearch/json?key=AIzaSyDhaT80ZtktlPWKNSklWxzIVcCx6OfgtJA&query="+ query);
        	
        	InputStreamReader isr = new InputStreamReader(url.openConnection().getInputStream(), "UTF-8");
        	
            JSONParser jsonParser = new JSONParser();
            
            //JSON데이터를 넣어 JSON Object 로 만들어 준다.
            JSONObject jsonObject = (JSONObject) jsonParser.parse(isr);
             
            //books의 배열을 추출
            JSONArray storeArray = (JSONArray) jsonObject.get("results");
            
            for(int i=0; i<storeArray.size(); i++){
            	
            	JSONObject storeObject = (JSONObject) storeArray.get(i);
            	
            	mi.setFormatted_address(storeObject.get("formatted_address"));
            	mi.setName(storeObject.get("name"));
            	mi.setRating(storeObject.get("rating"));
            	
            	
//                //JSON name으로 추출
//                System.out.println("위치 : "+storeObject.get("formatted_address"));
//                System.out.println("이름 : "+storeObject.get("name"));
//                System.out.println("레이팅 : "+storeObject.get("rating"));
            }
//            System.out.println("다음페이지 : "+jsonObject.get("next_page_token"));
 
        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
		return query;
    }
    
}