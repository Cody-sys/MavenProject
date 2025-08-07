package com.omrbranch.pages;

import java.util.List;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.omrbranch.baseclass.BaseClass;

public class SelectHotelPage extends BaseClass{
	
	public SelectHotelPage() {
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath="//h5[text()='Select Hotel']")
	WebElement txtHeader ;
	
	@FindBy(xpath="//strong[@class='total-prize']")
	List<WebElement> hotelPriceList ;
	
	@FindBy(tagName="h5")
	List<WebElement> textHotelNames ;
	
	@FindBy(xpath="//a[@class='btn filter_btn']")
	List<WebElement> btnContinue ;
	
	
	public String getSuccessMessage() {
		String elementGetText = elementGetText(txtHeader);
		return elementGetText;

	}

}
