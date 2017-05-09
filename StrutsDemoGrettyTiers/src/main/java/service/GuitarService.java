package service;

import java.util.List;

import dao.GuitarDao;
import daoJDBCImpl.GuitarDaoJDBCImpl;
import domain.Guitar;

public class GuitarService {
	
	private GuitarDao guitarDao=new GuitarDaoJDBCImpl();
	
	public GuitarService(){
		super();
	}
	
	public void setGuitarDao(GuitarDao guitarDao) {
		this.guitarDao = guitarDao;
	}
	
	public GuitarService(GuitarDao guitarDao){
		this.guitarDao = guitarDao;
	}
	
	public List<Guitar> getAllGuitars(String serialNumber){
		return guitarDao.getAllGuitars(serialNumber);
	}
}
