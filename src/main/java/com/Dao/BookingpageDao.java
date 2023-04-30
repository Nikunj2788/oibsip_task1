package com.Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Bean.Bookingpage;
import com.util.ConnectionUtil;

public class BookingpageDao {

	public static void insertinbooking_data(Bookingpage c) {
		// TODO Auto-generated method stub
		try {
			Connection con = ConnectionUtil.createConnection();
			String sql ="insert into booking_data(fname,lname,contactno,trainno,trainname,from_where,to_where,depart,adults,children,tclass) values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, c.getFname());
			pst.setString(2, c.getLname());
			pst.setString(3, c.getContactno());
			pst.setString(4, c.getTrainno());			
			pst.setString(5, c.getTrainname());
			pst.setString(6, c.getFrom_where());
			pst.setString(7, c.getTo_where());
			pst.setString(8, c.getDepart());
			pst.setString(9, c.getAdults());
			pst.setString(10, c.getChildren());
			pst.setString(11, c.getTclass());
			
			
			pst.executeUpdate();
			System.out.println("data inserted");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }	
	public static List<Bookingpage> getAllData(){
		List <Bookingpage> list = new ArrayList<Bookingpage>();
		try {
			Connection conn = ConnectionUtil.createConnection();
			String sql = "select * from booking_data";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Bookingpage d = new Bookingpage();
				d.setId(rs.getInt("id"));
		      
				d.setFname(rs.getString("fname"));
				d.setLname(rs.getString("lname"));
				d.setContactno(rs.getString("contactno"));
				d.setTrainno(rs.getString("trainno"));
				d.setTrainname(rs.getString("trainname"));
				d.setFrom_where(rs.getString("from_where"));
				d.setTo_where(rs.getString("to_where"));
				d.setDepart(rs.getString("depart"));
				d.setAdults(rs.getString("adults"));
				d.setChildren(rs.getString("children"));
				d.setTclass(rs.getString("tclass"));
				list.add(d);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	public static Bookingpage getDataById(int id) {
		Bookingpage d = null;
		try {
			Connection conn = ConnectionUtil.createConnection();
			String sql = "select * from booking_data where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				d = new Bookingpage();
				d.setId(rs.getInt("id"));
				
				d.setFname(rs.getString("fname"));
				d.setLname(rs.getString("lname"));
				d.setContactno(rs.getString("contactno"));
				d.setAdults(rs.getString("adults"));
				d.setChildren(rs.getString("children"));
				d.setDepart(rs.getString("depart"));
				d.setFrom_where(rs.getString("from_where"));
				d.setTo_where(rs.getString("to_where"));
				d.setTrainname(rs.getString("trainname"));
				d.setTrainno(rs.getString("trainno"));
				d.setTclass(rs.getString("tclass"));
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return d;
	}
	public static void Cancelticket(int id) {
		try {
			Connection conn= ConnectionUtil.createConnection();
			String sql="delete from booking_data where id=?";
			PreparedStatement pst= conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.executeUpdate();
			System.out.println("data deleted");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public static void updateBooking(Bookingpage d) {
		// TODO Auto-generated method stub
		try {
			Connection conn = ConnectionUtil.createConnection();
			String sql="update booking_data set fname=?,lname=?,contactno=?,trainno=?,trainname=?,from_where=?,to_where=?,depart=?,adults=?,children=?,tclass=? where id=?";
			PreparedStatement pst= conn.prepareStatement(sql);
			
			pst.setString(1, d.getFname());
			pst.setString(2, d.getLname());	
			pst.setString(3, d.getContactno());
			pst.setString(4, d.getTrainno());
			pst.setString(5, d.getTrainname());
			pst.setString(6, d.getFrom_where());
			pst.setString(7, d.getTo_where());
			pst.setString(8, d.getDepart());
			pst.setString(9, d.getAdults());
			pst.setString(10, d.getChildren());
			pst.setString(11, d.getTclass());		         
			pst.setInt(12, d.getId());
			pst.executeUpdate();
			System.out.println("data updated");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();			
		}		
	}	
}
