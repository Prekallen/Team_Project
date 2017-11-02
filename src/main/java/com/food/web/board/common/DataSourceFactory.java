package com.food.web.board.common;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import com.food.web.board.dto.BoardInfo;



@Service
public class DataSourceFactory{
	BasicDataSource bds;
	SqlSessionFactoryBean ssf ;
	SqlSession ss;
	
	private void setDataSource(BoardInfo db){
		bds = new BasicDataSource();
		
		
			}

	private SqlSessionFactoryBean getSsf(){
		ssf = new SqlSessionFactoryBean();
		ssf.setDataSource(bds);
		ssf.setConfigLocation(new ClassPathResource("db/mybatis-config.xml"));
		return ssf;
	}
	
	private void closeSession(){
		if(ss!=null){
			ss.close();
			ss = null;
		}
	}
	
	public SqlSession getSession() throws Exception{
		closeSession();
		ss = getSsf().getObject().openSession();
		return ss;
	}


	public boolean isConnecteDB(BoardInfo db) throws Exception {
		setDataSource(db);
		ss = getSession();
		return true;
	}

	public SqlSession getSqlSession() throws Exception{
		return getSession();
	}
}
