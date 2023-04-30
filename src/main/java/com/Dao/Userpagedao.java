package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Bean.Bookingpage;
import com.Bean.Userpage;
import com.util.ConnectionUtil;

public class Userpagedao {

	public static void insertinreserve_train(Userpage c) {
		// TODO Auto-generated method stub
		try {
			Connection con = ConnectionUtil.createConnection();
			String sql ="insert into reserve_data(fname,lname,contactno,birthdate,address,email,password,confirm_password) values(?,?,?,?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, c.getFname());
			pst.setString(2, c.getLname());
			pst.setString(3, c.getContactno());
		    pst.setString(4, c.getBirthdate());				   
		    pst.setString(5, c.getAddress());
			pst.setString(6, c.getEmail());
			pst.setString(7, c.getPassword());
			pst.setString(8, c.getConfirm_password());
			
			pst.executeUpdate();
			System.out.println("data inserted");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
}

	public static Userpage checklogin(Userpage c) {
		// TODO Auto-generated method stub
		Userpage c1 = null;
		try {
			Connection conn = ConnectionUtil.createConnection();
			String sql = "select * from reserve_data where email=? and password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, c.getEmail());
			pst.setString(2, c.getPassword());
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				c1 = new Userpage();
				c1.setId(rs.getInt("id"));
				c1.setFname(rs.getString("fname"));
				c1.setLname(rs.getString("lname"));
				c1.setContactno(rs.getString("contactno"));			
		        c1.setBirthdate(rs.getString("birthdate"));
				c1.setAddress(rs.getString("address"));
				c1.setEmail(rs.getString("email"));
				c1.setPassword(rs.getString("password"));
				c1.setConfirm_password(rs.getString("confirm_password"));
			}	
			}
			catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return c1;		
	}
	
	public static void updateUser(Userpage d) {
		try {
			Connection conn = ConnectionUtil.createConnection();
			String sql="update reserve_data set fname=?,lname=?,email=?,contactno=?,address=?,birthdate=? where id=?";
			PreparedStatement pst= conn.prepareStatement(sql);
			
			pst.setString(1, d.getFname());
			pst.setString(3, d.getLname());
			pst.setString(4, d.getEmail());
			pst.setString(5, d.getContactno());
			pst.setString(6, d.getAddress());
			pst.setString(8, d.getBirthdate());
			pst.setInt(13, d.getId());
			pst.executeUpdate();
			System.out.println("data updated");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}
		
	}

}

	
