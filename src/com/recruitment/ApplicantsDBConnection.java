package com.recruitment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ApplicantsDBConnection {
	
	public static Connection getConnection(){
		Connection conn = null;
		try{
			String driver = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/ERPSystem";
			String username = "root";
			String pasword = "nikhil20#";
			
			Class.forName(driver);
			
			conn = DriverManager.getConnection(url,username,pasword);
			//System.out.println("Connected");
		}catch(Exception e){
			System.out.println(e);
		}
		return conn;
	}

	public static int save(Applicant e) {
		int status = 0;
		try {
			Connection con = ApplicantsDBConnection.getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into ApplicantInfo(name,email,profile,address,mob,country) values (?,?,?,?,?,?)");
			ps.setString(1, e.getName());
			ps.setString(2, e.getEmail());
			ps.setString(3, e.getProfile());
			ps.setString(4, e.getAddress());
			ps.setInt(5, e.getMob());
			ps.setString(6, e.getCountry());

			status = ps.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public static int update(Applicant e) {
		int status = 0;
		try {
			Connection con = ApplicantsDBConnection.getConnection();
			PreparedStatement ps = con
					.prepareStatement("update EmployeeInfo set name =?,email=?,profile=?,address=?,mob=?,country=? where id=?");
			ps.setString(1, e.getName());
			ps.setString(2, e.getEmail());
			ps.setString(3, e.getProfile());
			ps.setString(4, e.getAddress());
			ps.setInt(5, e.getMob());
			ps.setString(6, e.getCountry());
			ps.setInt(7, e.getId());

			status = ps.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public static int delete(int id) {
		int status = 0;
		try {
			Connection con = ApplicantsDBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("delete from ApplicantInfo where id=?");
			ps.setInt(1, id);
			status = ps.executeUpdate();

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public static Applicant getEmployeeById(int id) {
		Applicant e = new Applicant();

		try {
			Connection con = ApplicantsDBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from ApplicantInfo where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setPassword(rs.getString(3));
				e.setEmail(rs.getString(4));
				e.setCountry(rs.getString(5));
			}
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return e;
	}

	public static List<Applicant> getAllApplicants() {
		List<Applicant> list = new ArrayList<Applicant>();

		try {
			Connection con = ApplicantsDBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from ApplicantInfo");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Applicant e = new Applicant();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setPassword(rs.getString(3));
				e.setEmail(rs.getString(4));
				e.setCountry(rs.getString(5));
				list.add(e);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
}
