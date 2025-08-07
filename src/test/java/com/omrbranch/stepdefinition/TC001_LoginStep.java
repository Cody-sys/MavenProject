package com.omrbranch.stepdefinition;

import java.io.FileNotFoundException;
import java.io.IOException;


import com.omrbranch.baseclass.BaseClass;
import com.omrbranch.objectmanager.PageObjectManager;
import io.cucumber.java.Before;
import io.cucumber.java.After;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import junit.framework.Assert;

public class TC001_LoginStep extends BaseClass  {
	
	PageObjectManager pom = new PageObjectManager();
	
	@Before
	public void before(Scenario s) {
		BaseClass.scenario = s;
	}
	@After
	public void afterStep() {
		closeWindow();
	}
	
	@Given("User is on the OMR Branch hotel page")
	public void userIsOnTheOMRBranchHotelPage() throws FileNotFoundException, IOException {
		applnLaunch(getPropertyFileValue("chrome"), getPropertyFileValue("url"));
		maximizeWindow();
		implicitWait(10);screenshot();
	}
		
	@When("User login {string} and {string}")
	public void userLoginAnd(String uname, String pword) {
		pom.getLoginPage().login(uname,pword);screenshot();
	}
		
	@Then("User should verify success message after login {string}")
	public void userShouldVerifySuccessMessageAfterLogin(String expSuccessMessage) {
		String actSuccessMessage = pom.getExploreHotelPage().getWelcomeText();
		Assert.assertEquals("verify welcome text", expSuccessMessage , actSuccessMessage);screenshot();
	}

		@When("User login {string} and {string} with enter key")
	public void userLoginAndWithEnterKey(String uname, String pword) {
		pom.getLoginPage().login(uname,pword);screenshot();
	}
	
	@Then("User should verify error message after login {string}")
	public void userShouldVerifyErrorMessageAfterLogin(String expErrorMessage) {
		String actErrorText = pom.getLoginPage().getErrorMessage();
		Assert.assertTrue("verify Error text",actErrorText.contains(expErrorMessage));screenshot();
	}

}
