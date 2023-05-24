package com.nossaTodoList.db.exceptions;

public class DbExceptions extends RuntimeException{
	private static final long serialVersionUID = 1L;

	public DbExceptions(String msg) {
		super(msg);
	}
}
