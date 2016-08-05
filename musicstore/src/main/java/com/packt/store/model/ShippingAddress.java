package com.packt.store.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class ShippingAddress implements Serializable {
	private static final long serialVersionUID = 989191150380037359L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int shippingAddressId;
	private String streetName;
	private String streetNumber;
	private String city;
	private String country;
	private String zipCode;

	@OneToOne(cascade = CascadeType.REMOVE)
	private Customer customer;

	public int getShippingAddressId() {
		return shippingAddressId;
	}

	public void setShippingAddressId(int shippingAddressId) {
		this.shippingAddressId = shippingAddressId;
	}

	public String getStreetName() {
		return streetName;
	}

	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}

	public String getStreetNumber() {
		return streetNumber;
	}

	public void setStreetNumber(String streetNumber) {
		this.streetNumber = streetNumber;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	@Override
	public String toString() {
		return "ShippingAddress{" + "streetName='" + streetName + '\'' + ", apartmentNumber='" + streetNumber + '\''
				+ ", city='" + city + '\'' + ", state='" + '\'' + ", country='" + country + '\'' + ", zipCode='"
				+ zipCode + '\'' + '}';
	}

}
