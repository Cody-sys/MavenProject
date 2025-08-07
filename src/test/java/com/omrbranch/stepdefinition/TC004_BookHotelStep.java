package com.omrbranch.stepdefinition;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class TC004_BookHotelStep {
	

	@When("User add Guest Details {string},{string},{string},{string} and {string}")
	public void userAddGuestDetailsAnd(String string, String string2, String string3, String string4, String string5) {
	}
	@When("User add GST Details {string},{string} and {string}")
	public void userAddGSTDetailsAnd(String string, String string2, String string3) {
	}
	@When("User add Special Request {string}")
	public void userAddSpecialRequest(String string) {
	}
	@When("User enter payment details, procced with Card Type {string}")
	public void userEnterPaymentDetailsProccedWithCardType(String string, io.cucumber.datatable.DataTable dataTable) {
	}
	@When("User should verify after hotel booking success message {string} and save the order ID")
	public void userShouldVerifyAfterHotelBookingSuccessMessageAndSaveTheOrderID(String string) {
	}
	@Then("User should verify same selected Hotel is booked or not")
	public void userShouldVerifySameSelectedHotelIsBookedOrNot() {
	}

	@When("User click credit card")
	public void userClickCreditCard() {
	}
	@When("User click submit without entering payment details")
	public void userClickSubmitWithoutEnteringPaymentDetails() {
	}
	@Then("User should verify after payment details error message {string} ,{string} ,{string} ,{string} ,{string} and {string}")
	public void userShouldVerifyAfterPaymentDetailsErrorMessageAnd(String string, String string2, String string3, String string4, String string5, String string6) {
	}


	@When("User enter upi details {string} and click submit")
	public void userEnterUpiDetailsAndClickSubmit(String string) {
	}

	@When("User click upi")
	public void userClickUpi() {
	}
	@Then("User should verify after payment details error message {string}")
	public void userShouldVerifyAfterPaymentDetailsErrorMessage(String string) {
	}










}
