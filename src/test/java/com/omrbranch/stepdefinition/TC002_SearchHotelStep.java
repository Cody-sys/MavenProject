package com.omrbranch.stepdefinition;

import com.omrbranch.objectmanager.PageObjectManager;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import junit.framework.Assert;

public class TC002_SearchHotelStep {

	PageObjectManager pom = new PageObjectManager();

	@When("User search hotel {string},{string},{string},{string},{string},{string},{string} and {string}")
	public void userSearchHotelAnd(String string, String string2, String string3, String string4, String string5, String string6, String string7, String string8) {
	}
	
	@Then("User should verify after search hotel success message {string}")
	public void userShouldVerifyAfterSearchHotelSuccessMessage(String expSuccessMessage) {
		String actSuccessMessage = pom.getSelectHotelPage().getSuccessMessage();
		Assert.assertEquals("verify search hotel success messgae",expSuccessMessage,actSuccessMessage);
	}

	@When("User search hotel {string},{string},{string},{string},{string} and {string}")
	public void userSearchHotelAnd(String string, String string2, String string3, String string4, String string5, String string6) {
	}

	@When("User click sort from low to high")
	public void userClickSortFromLowToHigh() {
	}
	@Then("User should verify after sorting that price are listed from low to high")
	public void userShouldVerifyAfterSortingThatPriceAreListedFromLowToHigh() {
	}


	@Then("User click Search button")
	public void userClickSearchButton() {
	}
	@Then("User should verify after search hotel error message {string} ,{string} ,{string} ,{string} ,{string} and {string}")
	public void userShouldVerifyAfterSearchHotelErrorMessageAnd(String string, String string2, String string3, String string4, String string5, String string6) {
	}


	@When("User click sort from Descending order")
	public void userClickSortFromDescendingOrder() {
	}
	@Then("User should verify after sorting that name in Descending order")
	public void userShouldVerifyAfterSortingThatNameInDescendingOrder() {
	}


	@Then("User should verify the header contains {string}")
	public void userShouldVerifyTheHeaderContains(String string) {
	}
	

	@When("User click Standard room type")
	public void userClickStandardRoomType() {
	}
	@Then("User should verify after sorting that Standard room type is listed")
	public void userShouldVerifyAfterSortingThatStandardRoomTypeIsListed() {
	}

	
}
