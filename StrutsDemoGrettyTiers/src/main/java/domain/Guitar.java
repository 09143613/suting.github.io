package domain;

import java.util.List;

public class Guitar {
	public String serialNumber,model,type,backwood,topwood;
	
	public double price;
	
	private List guitar;
	
	
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
	public List getGuitar() {
		return guitar;
	}
	public void setGuitar(List guitar) {
		this.guitar = guitar;
	}
	
	public Guitar() {}
	
}
