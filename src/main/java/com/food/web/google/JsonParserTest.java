package com.food.web.google;
import java.net.URL;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
 
public class JsonParserTest {
 
    public static void main(String[] args) throws UnsupportedEncodingException, IOException {

 
        try {
 
        	URL url = new URL("https://maps.googleapis.com/maps/api/place/textsearch/json?key=AIzaSyDhaT80ZtktlPWKNSklWxzIVcCx6OfgtJA&query=강남구일식");

        	InputStreamReader isr = new InputStreamReader(url.openConnection().getInputStream(), "UTF-8");
        	
        	

            JSONParser jsonParser = new JSONParser();
             
            //JSON데이터를 넣어 JSON Object 로 만들어 준다.
            JSONObject jsonObject = (JSONObject) jsonParser.parse(isr);
             
            //books의 배열을 추출
            JSONArray bookInfoArray = (JSONArray) jsonObject.get("results");
 
            for(int i=0; i<bookInfoArray.size(); i++){
 
                System.out.println("=가게들"+i+" ===========================================");
                 
                //배열 안에 있는것도 JSON형식 이기 때문에 JSON Object 로 추출
                JSONObject bookObject = (JSONObject) bookInfoArray.get(i);
                 
                //JSON name으로 추출
                System.out.println("위치 : "+bookObject.get("formatted_address"));
                System.out.println("이름 : "+bookObject.get("name"));
                System.out.println("레이팅 : "+bookObject.get("rating"));
 
            }
 
        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
 
    }
 
}