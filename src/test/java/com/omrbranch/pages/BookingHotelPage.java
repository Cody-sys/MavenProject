package com.omrbranch.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.omrbranch.baseclass.BaseClass;

public class BookingHotelPage extends BaseClass{
	
	public BookingHotelPage() {
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath="//h2[contains(text(),'Book Hotel')]")
	WebElement textBookHotel ;

	@FindBy(id="own")
	WebElement rdoBookingFor ;
	
	@FindBy(id="user_title")
	WebElement ddnSalutation ;
	
	@FindBy(id="first_name")
	WebElement txtFirstName ;
	
	@FindBy(id="last_name")
	WebElement txtLastName ;
	
	@FindBy(id="user_phone")
	WebElement txtPhone ;
	
	@FindBy(id="user_email")
	WebElement txtEmail ;
	
	@FindBy(id="gst")
	WebElement chkGst ;
	
	@FindBy(id="gst_registration")
	WebElement txtGstReg ;
	
	@FindBy(id="company_name")
	WebElement txtCompName ;
	
	@FindBy(id="company_address")
	WebElement txtCompAddress ;
	
	@FindBy(id="step1next")
	WebElement btnNext ;
	
	@FindBy(id="bed")
	WebElement chkBed ;
	
	@FindBy(id="other_request")
	WebElement txtOtherRequest ;
	
	@FindBy(id="step2next")
	WebElement btnNext2 ;
	
	@FindBy(xpath="//h5[contains(text(),'Credit/Debit/ATM Card')]")
	WebElement btnPayment ;
	
	@FindBy(id="payment_type")
	WebElement ddnPaymentType ;
	
	@FindBy(id="card_type")
	WebElement ddnCardType ;
	
	@FindBy(id="card_no")
	WebElement txtCardNumber ;
	
	@FindBy(id="card_name")
	WebElement txtCardName ;
	
	@FindBy(id="card_month")
	WebElement ddnCardMonth ;
	
	@FindBy(id="card_year")
	WebElement ddnCardYear ;
	
	@FindBy(id="cvv")
	WebElement txtCvv ;
	
	@FindBy(id="submitBtn")
	WebElement btnSubmit ;
	


}
