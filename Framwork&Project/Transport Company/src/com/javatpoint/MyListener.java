package com.javatpoint;
import javax.servlet.*;
import java.sql.*;

public class MyListener implements ServletContextListener{

	public void contextInitialized(ServletContextEvent arg0) {
		
		Connection con=null;
	try{
		ResultSet rs;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
		
		PreparedStatement ps2= con.prepareStatement("CREATE SEQUENCE JAVATPOINT MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE");
		ps2.executeUpdate();
		
		PreparedStatement ps4=con.prepareStatement("CREATE TABLE PAYREGISTER(ID NUMBER,USERNAME VARCHAR2(4000), USERPASS VARCHAR2(4000), BRANCH VARCHAR2(4000),DATEOFJOINING VARCHAR2(4000), DATEOFBIRTH VARCHAR2(4000), SALARY VARCHAR2(4000),CONSTRAINT PAYREGISTER_PK PRIMARY KEY (ID) ENABLE)");
		ps4.executeUpdate();		
			
		
		ps4= con.prepareStatement("CREATE TABLE  TINSTALL(ID NUMBER,TMODEL VARCHAR2(4000), TNO VARCHAR2(4000), INSURANCE VARCHAR2(4000),INAME VARCHAR2(4000), MALIK VARCHAR2(4000),TFROM VARCHAR2(4000), TTO VARCHAR2(4000), IDATE DATE, MOBILE NUMBER,STATUS VARCHAR2(4000),CONSTRAINT TINSTALL_PK PRIMARY KEY (ID) ENABLE)");
		ps4.executeUpdate();
		
		ps4= con.prepareStatement("CREATE TABLE  QUIZCONTACT(NAME VARCHAR2(4000),EMAIL VARCHAR2(4000),PHONE NUMBER NOT NULL ENABLE, MESSAGE VARCHAR2(4000))");
		ps4.executeUpdate();
		
		
		
		Statement stmt=con.createStatement();
		stmt.executeUpdate("CREATE TRIGGER  BI_PAYREGISTER before insert on PAYREGISTER for each row begin select JAVATPOINT.nextval into :NEW.ID from dual;end");
		stmt.executeUpdate("CREATE TRIGGER  BI_TINSTALL before insert on TINSTALL for each row begin select JAVATPOINT.nextval into :NEW.ID from dual;end");
			
	}
		
	    catch(Exception e){
	    	e.printStackTrace();
	    	
	    }
	    }
	    
	    public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("project undeployed");
		
	}
}
