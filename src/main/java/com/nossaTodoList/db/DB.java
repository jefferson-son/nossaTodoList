package com.nossaTodoList.db;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import com.nossaTodoList.db.exceptions.DbExceptions;

public class DB implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private static Connection conn = null;

	// 1 - Carregamento das propriedades de conexão
	public static Properties loadProperties() {
		try(FileInputStream fs = new FileInputStream("db.properties")) {
			Properties props = new Properties();
			props.load(fs);
			return props;
		}
		catch(IOException e) {
			throw new DbExceptions("Erro ao carregar propriedades de conexão: " + e.getMessage());
		}
	}
	
	public static Connection getConnection() {
		if(conn == null) {
			try {
				Properties props = loadProperties();
				String url = props.getProperty("dburl");
				conn = DriverManager.getConnection(url, props);
			}
			catch(SQLException e) {
				throw new DbExceptions("Erro ao connectar: " + e.getMessage());
			}
		}
		return conn;
	}
	
	public static Connection closeConnection() {
		if(conn != null) {
			try {
				conn.close();
			}
			catch(SQLException e) {
				throw new DbExceptions("Erro ao fechar conexão: " + e.getMessage());
			}
		}
		return conn;
	}
}
