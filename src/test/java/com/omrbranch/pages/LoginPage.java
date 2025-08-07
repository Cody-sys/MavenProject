package com.omrbranch.pages;

import org.junit.Test;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.omrbranch.baseclass.BaseClass;

import junit.framework.Assert;

public class LoginPage extends BaseClass {
	
	public LoginPage() {
		PageFactory.initElements(driver, this);
	}
	
	
	@FindBy(id="email")
	private WebElement txtEmail ;
	
	@FindBy(id="pass")
	private WebElement txtPass ;
	
	@FindBy(xpath="//button[@value='login']")
	private WebElement btnLogin ;
	
	@FindBy(xpath="//b[contains(text(),'Invalid')]")
	private WebElement textLoginErrorMsg;
	
	public void login(String uname, String pword) {
		elementSendKeys(txtEmail, uname);
		elementSendKeys(txtPass, pword);
		elementClick(btnLogin);
	}
	
	public void loginWithEnter(String uname, String pword) {
		elementSendKeys(txtEmail, uname);
		elementSendKeysEnter(txtPass, pword);
	}
	
	public String getErrorMessage() {
		String elementGetText = elementGetText(textLoginErrorMsg);
		return elementGetText;
	}
	
}
