package de.hwg_lu.bw.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AppAdminAccountTable {

	Connection dbConn; // ist erst mal null
	
	public static void main(String[] args) throws SQLException {
		AppAdminAccountTable aaat = new AppAdminAccountTable();//erzeuge Anwendungsobjekt
		aaat.dbConn = new PostgreSQLAccess().getConnection();//setze dbConn
		aaat.doSomething();//springe nach doSomething()
	}

	public void doSomething() throws SQLException{//kann auf this.dbConn zugreifen
//		this.dropTableAccount();
//		this.createTableAccount();
//		this.dropTableMenus();
//		this.createTableMenus();
//		this.dropTableReservationt();
//		this.createTableReservation();

		
	}
	public void dropTableAccount() throws SQLException{
		String sql = "DROP table if exists account";
		System.out.println(sql);
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
		prep.executeUpdate();
		System.out.println("Tabelle account gedropped");
	}
	public void dropTableReservationt() throws SQLException{
		String sql = "DROP table if exists reservation";
		System.out.println(sql);
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
		prep.executeUpdate();
		System.out.println("Tabelle reservation gedropped");
	}
	public void dropTableMenus() throws SQLException{
		String sql = "DROP table if exists menus";
		System.out.println(sql);
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
		prep.executeUpdate();
		System.out.println("Tabelle menus gedropped");
	}
	
	//Gut
	public void createTableAccount() throws SQLException{
		String sql = "CREATE TABLE account(\r\n"
				+ "								userid serial NOT NULL ,\r\n"
				+ "								password CHAR(32) NOT NULL ,\r\n"
				+ "								active CHAR(1) NOT NULL DEFAULT 'Y',\r\n"
				+ "								admin CHAR(1) NOT NULL DEFAULT 'N',\r\n"
				+ "								name VARCHAR(456) NOT NULL ,"
				+ "								email VARCHAR(256) NOT NULL PRIMARY KEY );";
		System.out.println(sql);
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
		prep.executeUpdate();
		System.out.println("Tabelle account angelegt");
	}
	
	//Gut
	public void createTableReservation() throws SQLException{
		String sql = "CREATE TABLE reservation(\r\n"
				+ "								reservationid serial NOT NULL primary key ,\r\n"
				+ "								heur CHAR(32) NOT NULL ,\r\n"
				+ "								date CHAR(32) NOT NULL ,\r\n"
				+ "								message CHAR(1000) NOT NULL DEFAULT 'Nix',\r\n"
				+ "								nbPers CHAR(10) NOT NULL,\r\n"
				+ "								email VARCHAR(256) NOT NULL , \r\n"
				+ "								name VARCHAR(456) NOT NULL  );   ";
		System.out.println(sql);
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
		prep.executeUpdate();
		System.out.println("Tabelle account angelegt");
	}
	//Gut
	public void createTableMenus() throws SQLException{
		String sql = "create  table menus(nom_repas varchar (300) not null ,\r\n"
				+ "					description varchar (1000)  not null,\r\n"
				+ "				prix	float  not null ,\r\n"
				+ "				id_repas	serial  not null primary key);";
		System.out.println(sql);
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
		prep.executeUpdate();
		System.out.println("Tabelle account angelegt");
	}
	
	
	
	
	
}
