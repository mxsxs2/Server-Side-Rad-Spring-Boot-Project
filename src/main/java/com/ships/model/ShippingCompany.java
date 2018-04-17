package com.ships.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.DynamicUpdate;
import org.springframework.stereotype.Component;

@Entity
@Component
@DynamicUpdate // So only the updated fields will save rather than the whole entity
public class ShippingCompany {

	@Id
	@GeneratedValue
	private int scid;
	@NotNull
	@Size(min = 1, max = 250)
	private String name;
	@NotNull
	@Size(min = 1, max = 250)
	private String homePort;
	@NotNull
	@Min(value = 1)
	private BigDecimal balance;
	@OneToMany(mappedBy = "shippingCompany")
	private List<Ship> ships = new ArrayList<Ship>();

	@OneToMany(mappedBy = "shippingCompany")
	private List<OrderInfo> orders = new ArrayList<OrderInfo>();

	public int getScid() {
		return scid;
	}

	public void setScid(int scid) {
		this.scid = scid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHomePort() {
		return homePort;
	}

	public void setHomePort(String homePort) {
		this.homePort = homePort;
	}

	public BigDecimal getBalance() {
		return balance;
	}

	public void setBalance(BigDecimal balance) {
		this.balance = balance;
	}

	public List<Ship> getShips() {
		return ships;
	}

	public void setShips(List<Ship> ships) {
		this.ships = ships;
	}

	@Override
	public String toString() {
		return "ShippingCompany [scid=" + scid + ", name=" + name + ", homePort=" + homePort + ", balance=" + balance
				+ "]";
	}

}
