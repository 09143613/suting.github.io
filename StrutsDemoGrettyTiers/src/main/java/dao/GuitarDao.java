package dao;

import java.net.InterfaceAddress;
import java.util.List;

import domain.Guitar;

public interface GuitarDao  {
	
	public List<Guitar> getAllGuitars(String serialNumber);
}
