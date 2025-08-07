package com.omrbranch.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.omrbranch.baseclass.BaseClass;

public class MyBookingPage extends BaseClass{
	
	public MyBookingPage() {
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath="//h4[contains(text(),'Bookings')]")
	WebElement textBookings ;
	
	@FindBy(name="search")
	WebElement txtSearch ;
	
	@FindBy(xpath="//strong[@class='total-prize']")
	WebElement textPriceAmount ;
	
	@FindBy(xpath="//button[text()='Edit']")
	WebElement btnEdit ;
	
	@FindBy(name="check_in")
	WebElement btnCheckIn ;
	
	@FindBy(xpath="//a[@title='Next']")
	WebElement btnNextMonth;
	
	@FindBy(xpath="//a[text()='1']")
	WebElement btnDateOne;
	
	@FindBy(xpath="//button[text()='Confirm']")
	WebElement btnConfirm;
	
	@FindBy(xpath="//li[@class='alertMsg']")
	WebElement txtAlertMessage ;
	
	@FindBy(xpath="//a[text()='Cancel']")
	WebElement btnCancel;
	
	@FindBy(xpath="//button[text()='Cancelled']")
	WebElement textCancelled;
			

}
