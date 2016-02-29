package com.bootcamp.ektha.rewardsprogram.form;

import java.util.ArrayList;
import java.util.List;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class RegistrationFormDTO {

	private String storeCountries;
	@NotNull(message = "Please Select State")
	private String storeStates;
	@NotNull(message = "Please Select Preferred Store")
	private String preferredStore; // preferred store location
	@NotBlank(message = "Must provide Username")
	private String username;
	@NotBlank(message = "Must provide Password")
	private String password;
	@NotBlank(message = "Must Confirm Password")
	private String confirmPassword;
	@NotBlank 
	private String firstName;
	@NotNull 
	private String lastName;
	private String memberCountry;
	private String memberStates;
	private String addressOne;
	private String addressTwo;
	private String memberCity;
	private String memberZip;
	@NotBlank @Email(message = "Must provide Email")
	private String email;
	@NotBlank @Email(message = "Must provide Email")
	private String confirmEmail;
	private String phoneNumber;
	private String gender;
	private String maritialStatus;
	private String birthMonth;
	private String birthDay;
	private String householdIncome;
	private ArrayList<String> emailPreferences;

	@Override
	public String toString() {
		return "RegistrationFormDTO [storeCountries=" + storeCountries + ", storeStates=" + storeStates
				+ ", preferredStore=" + preferredStore + ", username=" + username + ", password=" + password
				+ ", confirmPassword=" + confirmPassword + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", memberCountry=" + memberCountry + ", memberStates=" + memberStates + ", addressOne=" + addressOne
				+ ", addressTwo=" + addressTwo + ", memberCity=" + memberCity + ", memberZip=" + memberZip + ", email="
				+ email + ", confirmEmail=" + confirmEmail + ", phoneNumber=" + phoneNumber + ", gender=" + gender
				+ ", maritialStatus=" + maritialStatus + ", birthMonth=" + birthMonth + ", birthDay=" + birthDay
				+ ", householdIncome=" + householdIncome + ", emailPreferences=" + emailPreferences + "]";
	}

	/**
	 * @return the storeCountries
	 */
	public String getStoreCountries() {
		return storeCountries;
	}

	/**
	 * @return the memberStates
	 */
	public String getMemberStates() {
		return memberStates;
	}

	/**
	 * @param memberStates
	 *            the memberStates to set
	 */
	public void setMemberStates(String memberStates) {
		this.memberStates = memberStates;
	}

	/**
	 * @param storeCountries
	 *            the storeCountries to set
	 */
	public void setStoreCountries(String storeCountries) {
		this.storeCountries = storeCountries;
	}

	/**
	 * @return the storeStates
	 */
	public String getStoreStates() {
		return storeStates;
	}

	/**
	 * @param storeStates
	 *            the storeStates to set
	 */
	public void setStoreStates(String storeStates) {
		this.storeStates = storeStates;
	}

	/**
	 * @return the locations
	 */
	public String getPreferredStore() {
		return preferredStore;
	}

	/**
	 * @param locations
	 *            the locations to set
	 */
	public void setPreferredStore(String preferredStore) {
		this.preferredStore = preferredStore;
	}

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username
	 *            the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the confirmPassword
	 */
	public String getConfirmPassword() {
		return confirmPassword;
	}

	/**
	 * @param confirmPassword
	 *            the confirmPassword to set
	 */
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}

	/**
	 * @param firstName
	 *            the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * @param lastName
	 *            the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	/**
	 * @return the memberCountry
	 */
	public String getMemberCountry() {
		return memberCountry;
	}

	/**
	 * @param memberCountry
	 *            the memberCountry to set
	 */
	public void setMemberCountry(String memberCountry) {
		this.memberCountry = memberCountry;
	}

	/**
	 * @return the addressOne
	 */
	public String getAddressOne() {
		return addressOne;
	}

	/**
	 * @param addressOne
	 *            the addressOne to set
	 */
	public void setAddressOne(String addressOne) {
		this.addressOne = addressOne;
	}

	/**
	 * @return the addressTwo
	 */
	public String getAddressTwo() {
		return addressTwo;
	}

	/**
	 * @param addressTwo
	 *            the addressTwo to set
	 */
	public void setAddressTwo(String addressTwo) {
		this.addressTwo = addressTwo;
	}

	/**
	 * @return the memberCity
	 */
	public String getMemberCity() {
		return memberCity;
	}

	/**
	 * @param memberCity
	 *            the memberCity to set
	 */
	public void setMemberCity(String memberCity) {
		this.memberCity = memberCity;
	}

	/**
	 * @return the memberZip
	 */
	public String getMemberZip() {
		return memberZip;
	}

	/**
	 * @param memberZip
	 *            the memberZip to set
	 */
	public void setMemberZip(String memberZip) {
		this.memberZip = memberZip;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the confirmEmail
	 */
	public String getConfirmEmail() {
		return confirmEmail;
	}

	/**
	 * @param confirmemail
	 *            the confirmEmail to set
	 */
	public void setConfirmEmail(String confirmemail) {
		this.confirmEmail = confirmemail;
	}

	/**
	 * @return the phoneNumber
	 */
	public String getPhoneNumber() {
		return phoneNumber;
	}

	/**
	 * @param phoneNumber
	 *            the phoneNumber to set
	 */
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}

	/**
	 * @param gender
	 *            the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}

	/**
	 * @return the maritialStatus
	 */
	public String getMaritialStatus() {
		return maritialStatus;
	}

	/**
	 * @param maritialStatus
	 *            the maritialStatus to set
	 */
	public void setMaritialStatus(String maritialStatus) {
		this.maritialStatus = maritialStatus;
	}

	/**
	 * @return the birthMonth
	 */
	public String getBirthMonth() {
		return birthMonth;
	}

	/**
	 * @param birthMonth
	 *            the birthMonth to set
	 */
	public void setBirthMonth(String birthMonth) {
		this.birthMonth = birthMonth;
	}

	/**
	 * @return the birthDay
	 */
	public String getBirthDay() {
		return birthDay;
	}

	/**
	 * @param birthDay
	 *            the birthDay to set
	 */
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}

	/**
	 * @return the householdIncome
	 */
	public String getHouseholdIncome() {
		return householdIncome;
	}

	/**
	 * @param householdIncome
	 *            the householdIncome to set
	 */
	public void setHouseholdIncome(String householdIncome) {
		this.householdIncome = householdIncome;
	}

	/**
	 * @return the emailPreferences
	 */
	public List<String> getEmailPreferences() {
		return emailPreferences;
	}

	/**
	 * @param emailPreferences
	 *            the emailPreferences to set
	 */
	public void setEmailPreferences(ArrayList<String> emailPreferences) {
		this.emailPreferences = emailPreferences;
	}

}
