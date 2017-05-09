package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import daoJDBCImpl.GuitarDaoJDBCImpl;
import service.GuitarService;

public class GuitarAction extends ActionSupport{

	private GuitarService guitarService=new GuitarService();
	
	public String searchGuitar() throws Exception{
		
		GuitarService guitarService = new GuitarService();
		GuitarDaoJDBCImpl guitarDao=new GuitarDaoJDBCImpl();
		guitarService.setGuitarDao(guitarDao);
		
		guitars = guitarService.getAllGuitars(serialNumber);
		
		//System.out.println(guitars);
		/*HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("guitars",guitars);*/
		
		return SUCCESS;
	}
	
	//---------------------------------
	private String serialNumber,model, type, backwood, topwood;
	
	private double price;
	
	private List guitars;

	public GuitarService getGuitarService() {
		return guitarService;
	}

	public void setGuitarService(GuitarService guitarService) {
		this.guitarService = guitarService;
	}

	public String getSerialNumber() {
		return serialNumber;
	}

	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getBackwood() {
		return backwood;
	}

	public void setBackwood(String backwood) {
		this.backwood = backwood;
	}

	public String getTopwood() {
		return topwood;
	}

	public void setTopwood(String topwood) {
		this.topwood = topwood;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public List getGuitars() {
		return guitars;
	}

	public void setGuitars(List guitars) {
		this.guitars = guitars;
	}
	
	
}
