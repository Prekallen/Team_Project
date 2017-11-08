package com.food.web.rank.service;

import java.io.IOException;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

import com.food.web.rank.dto.Container;
import com.google.gson.Gson;

@Service
public class rankServiceImpl implements rankService {

	public Container getKeywordList() {
		Document document = null;
		Container c = null;
		try {
			String url = "http://www.diningcode.com/index.php";
			document = Jsoup.connect(url).get();

			Elements elements = document.select(".realtime_keyword>.realtime_header");
			for (int i = 0; i < elements.size(); i++) {
				Element element = elements.get(i);
				int sIdx = element.toString().indexOf("keyword-list=\"");

				String keyWordListStr = element.toString().substring(sIdx + 14);
				int eIdx = keyWordListStr.indexOf("\" title");
				keyWordListStr = "{keyWordList:" + keyWordListStr.substring(0, eIdx) + "}";
				System.out.println(keyWordListStr);
				Gson gson = new Gson();
				c = gson.fromJson(keyWordListStr, Container.class);
				
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return c;
	}
}
