package com.nossaTodoList.db;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.nossaTodoList.db.exceptions.DbExceptions;

public class DB implements Serializable {
	private static final long serialVersionUID = 1L;

	private static Connection conn = null;
	private static String url = "jdbc:postgresql://localhost:5432/nossaTodoList?autoReconnect=true";
	private static String user = "postgres";
	private static String password = "desenvolvimento";

	public static Connection getConnection(){
		try {
			if(conn == null) {
				try {
					Class.forName("org.postgresql.Driver");
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
				conn = DriverManager.getConnection(url, user, password);
				conn.setAutoCommit(false);
			}
		}
		catch(SQLException e) {
			throw new DbExceptions("Erro ao realizar conexão com banco de dados: " + e.getMessage());
		}
		
		return conn;
	}

	
	
	public static Connection closeConnection() {
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				throw new DbExceptions("Erro ao fechar conexão: " + e.getMessage());
			}
		}
		return conn;
	}
}
