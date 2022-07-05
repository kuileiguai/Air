package base.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

//背诵
/*
public class SqlSessionUtil{
	private SqlSessionUtil();
	private static SqlSessionFactory factory;
	static{
		String config="mybatis-config";
		InputStream in = Resource.getResourceAsStream(config);
		factory = new SqlSessionFactoryBuilder.build(in);
	}
	ThreadLocal<SqlSession> t = new ThreadLocal<>();
	public static SqlSession getSqlSession(){
		SqlSession sqlSession = t.get();
		if(sqlSession != null){
			sqlSession = factory.openSession();
			t.setSession();
		}
		return sqlSession;
	}
	public static closeSqlSession(SqlSession sqlSession){
		if(sqlSession!=null){
			sqlSession.close();
			t.remove();
		}
	}


}

* */
public class SqlSessionUtil {
	
	private SqlSessionUtil(){}
	private static SqlSessionFactory factory;
	static{
		String resource = "mybatis.xml";
		InputStream inputStream = null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			e.printStackTrace();
		}
		factory =
		 new SqlSessionFactoryBuilder().build(inputStream);
	}
	
	private static ThreadLocal<SqlSession> t = new ThreadLocal<SqlSession>();
	
	public static SqlSession getSqlSession(){
		
		SqlSession session = t.get();
		
		if(session==null){
			
			session = factory.openSession();
			t.set(session);
		}
		
		return session;
		
	}
	
	public static void myClose(SqlSession session){
		
		if(session!=null){
			session.close();
			t.remove();
		}
		
	}
	
	
}
