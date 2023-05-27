package com.nossaTodoList.dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nossaTodoList.db.DB;
import com.nossaTodoList.db.exceptions.DbExceptions;
import com.nossaTodoList.model.User;

public class DaoUserRepository implements Serializable {
	private static final long serialVersionUID = 1L;

	private static Connection conn = DB.getConnection();

	// DAO inserção de usuário
	public boolean insertUser(User obj) {
		PreparedStatement st = null;
		try {
			st = conn.prepareStatement(
			"INSERT INTO model_user(name, lastname,birthdate,gender,email,password) VALUES(?,?,?,?,?,?)");

			st.setString(1, obj.getName());
			st.setString(2, obj.getLastName());
			st.setString(3, obj.getBirthDate());
			st.setString(4, obj.getGender());
			st.setString(5, obj.getEmail());
			st.setString(6, obj.getPassword());

			int arrowAffected = st.executeUpdate();
			if (arrowAffected > 0) {
				conn.commit();
				return true;
			}

		} catch (SQLException e) {
			throw new DbExceptions("Erro ao tentar cadastrar usuário: " + e.getMessage());
		}

		return false;
	}

	// DAO busca de usuário
	public User findUserByEmailAndPassword(User obj) {
		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			st = conn.prepareStatement("SELECT * FROM model_user WHERE email = ? AND password = ?");
			st.setString(1, obj.getEmail());
			st.setString(2, obj.getPassword());
			
			rs = st.executeQuery();
			
			if(rs.next()) {
				User user = new User();
				user.setId(rs.getLong("id"));
				user.setName(rs.getString("name"));
				user.setLastName(rs.getString("lastname"));
				user.setBirthDate(rs.getString("birthdate"));
				user.setGender(rs.getString("gender"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setProfile(rs.getString("profile"));
				
				return user;
			}
		}
		catch(SQLException e) {
			throw new DbExceptions("Usuário não encontrado: " + e.getMessage());
		}
		return null;
	}
}
