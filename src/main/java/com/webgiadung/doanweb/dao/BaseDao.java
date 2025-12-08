package com.webgiadung.doanweb.dao;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Properties;

import static javax.management.remote.JMXConnectorFactory.connect;

public abstract class BaseDao {
    private Jdbi jdbi;
    protected Jdbi get(){
        if(jdbi==null) connect();
        return jdbi;
    }
    private void connect(){
        MysqlDataSource dataSource=new MysqlDataSource();
        System.out.println("jdbi:mysql://"+DBProperties.host+":"+DBProperties.port+"/"+DBProperties.dbname);
        dataSource.setURL("jdbc:mysql://" + DBProperties.host + ":" + DBProperties.port + "/" + DBProperties.dbname);
        dataSource.setUser(DBProperties.username);
        dataSource.setPassword(DBProperties.password);
        try{
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);
            jdbi = Jdbi.create(dataSource);
        }catch(SQLException e){
            throw new RuntimeException(e);
        }
    }
    static class DBProperties {
        public static Properties prop = new Properties();

        static {
            try {
                File f = new File("D:\\DoAnLapTrinh\\DoAnWeb\\src\\test\\resources\\db.properties"); // dùng relative path
                if (f.exists()) {
                    prop.load(new FileInputStream(f));
                } else {
                    prop.load(DBProperties.class.getClassLoader().getResourceAsStream("db.properties"));
                }
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        public static String host=prop.getProperty("db.host");

        public static String port =prop.getProperty("db.port");

        public static String username=prop.getProperty("db.username");

        public static String password=prop.getProperty("db.pass");

        public static String dbname= prop.getProperty("db.name");

        public static Properties getProp() {
            return prop;
        }
        /*public static void main(String[] args) {
            System.out.println(host);
            System.out.println(port);
            System.out.println(username);
            System.out.println(password);
            System.out.println(dbname);
        }*/
    }
}