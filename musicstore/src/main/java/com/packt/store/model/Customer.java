package com.packt.store.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Customer implements Serializable {

	private static final long serialVersionUID = 5140900014886997914L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int customerId;

	@NotEmpty(message = "Nazwa u¿ytkownika nie mo¿e pozostaæ pusta!")

	private String customerName;

	@NotEmpty(message = "Uzupe³nij adres email!")
	private String customerEmail;
	private String customerPhone;

	@NotEmpty(message = "Nazwa u¿ytkownika nie mo¿e pozostaæ pusta!")
	private String username;

	@NotEmpty(message = "Uzupe³nij has³o!")
	@Size(min = 6, max = 16, message = "Has³o musi zawieraæ od 6 do 16 znaków!")
	private String password;

	private boolean enabled;

	@OneToOne(mappedBy = "customer", cascade = CascadeType.REMOVE)
	@JoinColumn(name = "billingAddressId")
	private BillingAddress billingAddress;

	@OneToOne(mappedBy = "customer", cascade = CascadeType.REMOVE)
	@JoinColumn(name = "shippingAddressId")
	private ShippingAddress shippingAddress;

	@OneToOne(cascade = CascadeType.REMOVE, mappedBy = "customer")
	@JoinColumn(name = "cartId")
	@JsonIgnore
	private Cart cart;

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerPhone() {
		return customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public BillingAddress getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}

	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

}
