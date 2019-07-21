package com.exl.login.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.ws.rs.core.MediaType;

import org.springframework.stereotype.Service;

import sun.misc.BASE64Encoder;

import com.exl.login.bean.LoginBean;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.WebResource.Builder;

/*
 * This class is used to fetch Login Webservice url and return string on successful login  
 */
@Service
public class LoginServiceImpl implements LoginService {

	String output = "";

	private static final String loginUrl = "http://localhost:9090/LoginWs/login/doLogin";

	public String loginFromWS(LoginBean loginBean) {

		if (loginBean != null && loginBean.getUserName() != null
				& loginBean.getPassword() != null) {

			try {
				String name = loginBean.getUserName();
				String password = loginBean.getPassword();
				String authString = name + "|" + password;
				String authStringEncoded = new BASE64Encoder()
						.encode(authString.getBytes());

				Client restClient = Client.create();

				WebResource webResource = restClient.resource(loginUrl);

				Builder builder = webResource.accept(MediaType.TEXT_PLAIN);

				ClientResponse resp = builder.header("Authorization",
						"Basic " + authStringEncoded).get(ClientResponse.class);

				if (resp.getStatus() != 200) {
					System.out.println("Not connect to the server");
				}
				output = resp.getEntity(String.class);

				System.out.println(output);
			} catch (Exception e) {
				e.printStackTrace();
				return "exp";
			}
			if ("Success".equals(output)) {
				return "welcome";
			}
		}

		return "login2";
	}

	public String loginFromDB(LoginBean loginBean) {

		String username = loginBean.getUserName();
		String password = loginBean.getPassword();

		PreparedStatement pstmt = null;
		Connection dbCon = null;

		dbCon = DBConnection.getDBConnection();

		try {
			String sql = "SELECT user_name FROM user_details where user_name = ? "
					+ "and user_password = ?";

			pstmt = (PreparedStatement) dbCon.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				return "welcome";
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return "login";
		}

		return "login";
	}

}
