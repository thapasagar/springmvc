package com.bootcamp.ektha.rewardsprogram.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Random;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * The persistent class for the ckmember database table.
 * 
 */
@Entity
@Table(name = "ckmember")
public class Member implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "MEMBER_ID")
	private String memberId;

	private String email;

	@Column(name = "FIRST_NAME")
	private String firstName;

	@Column(name = "LAST_NAME")
	private String lastName;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "MEMBERSHIP_DATE")
	private Date membershipDate;

	private String phone;

	@Column(name = "PREFERRED_STORE")
	private String preferredStore;

	private String username;

	// uni-directional one-to-one association to Address
	@OneToOne(cascade = { CascadeType.ALL })
	@JoinColumn(name = "MEMBER_ID")
	private Address ckmemberAddress;

	// uni-directional one-to-one association to User
	@OneToOne(cascade = { CascadeType.ALL })
	@JoinColumn(name = "MEMBER_ID")
	private User loginInfo;

	// uni-directional one-to-one association to User
	@OneToOne(cascade = { CascadeType.ALL })
	@JoinColumn(name = "MEMBER_ID")
	private MemberPersonalDetails memberPersonalDetails;

	public Member() {
		memberId = "PM" + (new Random().nextInt(9000000) + 1000000);
	}

	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", email=" + email + ", firstName=" + firstName + ", lastName="
				+ lastName + ", membershipDate=" + membershipDate + ", phone=" + phone + ", preferredStore="
				+ preferredStore + ", username=" + username + ", ckmemberAddress=" + ckmemberAddress + ", loginInfo="
				+ loginInfo + ", memberPersonalDetails=" + memberPersonalDetails + "]";
	}

	/**
	 * @return the memberPersonalDetails
	 */
	public MemberPersonalDetails getMemberPersonalDetails() {
		return memberPersonalDetails;
	}

	/**
	 * @param memberPersonalDetails
	 *            the memberPersonalDetails to set
	 */
	public void setMemberPersonalDetails(MemberPersonalDetails memberPersonalDetails) {
		this.memberPersonalDetails = memberPersonalDetails;
	}

	public String getMemberId() {
		return this.memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getMembershipDate() {
		return this.membershipDate;
	}

	public void setMembershipDate(Date membershipDate) {
		this.membershipDate = membershipDate;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPreferredStore() {
		return this.preferredStore;
	}

	public void setPreferredStore(String preferredStore) {
		this.preferredStore = preferredStore;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Address getCkmemberAddress() {
		return this.ckmemberAddress;
	}

	public void setCkmemberAddress(Address ckmemberAddress) {
		this.ckmemberAddress = ckmemberAddress;
	}

	public User getLoginInfo() {
		return this.loginInfo;
	}

	public void setLoginInfo(User loginInfo) {
		this.loginInfo = loginInfo;
	}

}