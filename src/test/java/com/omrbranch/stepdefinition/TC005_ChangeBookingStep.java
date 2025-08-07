package com.omrbranch.stepdefinition;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class TC005_ChangeBookingStep {


	@When("User navigate to My Booking page")
	public void userNavigateToMyBookingPage() {
	}
	@Then("User should verify after navigate to My Booking page success message as {string}")
	public void userShouldVerifyAfterNavigateToMyBookingPageSuccessMessageAs(String string) {
	}
	@When("User search the Order ID")
	public void userSearchTheOrderID() {
	}
	@Then("User should verify same booked Order ID is present or not")
	public void userShouldVerifySameBookedOrderIDIsPresentOrNot() {
	}
	@Then("User should verify same booked Hotel Name is present or not")
	public void userShouldVerifySameBookedHotelNameIsPresentOrNot() {
	}
	@Then("User should verify same booked Hotel Price is present or not")
	public void userShouldVerifySameBookedHotelPriceIsPresentOrNot() {
	}
	@When("User edit the Check-in Date {string}")
	public void userEditTheCheckInDate(String string) {
	}
	@Then("User should verify after modify check-in date success message {string}")
	public void userShouldVerifyAfterModifyCheckInDateSuccessMessage(String string) {
	}

	@When("User search the Order ID {string}")
	public void userSearchTheOrderID(String string) {
	}

	@When("User edit the Check-in Date for the first displayed Order ID {string}")
	public void userEditTheCheckInDateForTheFirstDisplayedOrderID(String string) {
	}


	@When("User edit the Check-in Date for the last displayed Order ID {string}")
	public void userEditTheCheckInDateForTheLastDisplayedOrderID(String string) {
	}



}
