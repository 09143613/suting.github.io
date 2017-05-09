package daoJDBCImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.GuitarDao;
import dbutil.SQLiteJDBC;
import domain.Guitar;

public class GuitarDaoJDBCImpl implements GuitarDao{

	@Override
	public List<Guitar> getAllGuitars(String serialNumber) {
		// TODO Auto-generated method stub
		ResultSet rs=SQLiteJDBC.executeQuery("select * from guitar where serialNumber=?",
				new Object[]{serialNumber});
		List<Guitar> guitarsList=new ArrayList<Guitar>();
		try{
			while(rs.next()){
				Guitar guitars = new Guitar();
				
				guitars.setSerialNumber(rs.getString(1));
				guitars.setPrice(rs.getDouble(2));
				guitars.setModel(rs.getString(3));
				guitars.setType(rs.getString(4));
				guitars.setBackwood(rs.getString(5));
				guitars.setBackwood(rs.getString(6));
				
				guitarsList.add(guitars);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return guitarsList;
	}
}
