package com.exl.login.service;

import java.sql.Connection;
import java.sql.DriverManager;

/*
 * This class is used to create database connection using MySQL DB
 */
public class DBConnection {

	public static Connection getDBConnection() {

		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/test",
					"root", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;
	}
}
