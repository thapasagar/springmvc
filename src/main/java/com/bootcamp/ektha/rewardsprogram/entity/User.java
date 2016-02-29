package com.bootcamp.ektha.rewardsprogram.entity;

import java.io.Serializable;
import javax.persistence.*;

import org.hibernate.validator.constraints.NotBlank;

/**
 * The persistent class for the login_info database table.
 * 
 */
@Entity
@Table(name="login_info")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@NotBlank(message = "Must provide Username")
	private String username;
	@NotBlank(message = "Must provide Password")
	private String password;

	public User() {
	}
	
	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + "]";
	}



	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}