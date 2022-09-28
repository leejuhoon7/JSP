package co.jtrip.common;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DataSource {
   private static SqlSessionFactory sqlSessionFactory;
   private DataSource() {};
   
   public static SqlSessionFactory getInstance() {  //My batis연결
      String resource="config/config-mybatis.xml";
      InputStream inputStream;
      try {
         inputStream = Resources.getResourceAsStream(resource);
         sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);         
      }catch(Exception e) {
         e.printStackTrace();
      }
      System.out.println("연결체크");
      return sqlSessionFactory;
   }
}