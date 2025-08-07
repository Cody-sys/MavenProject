package com.omrbranch.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.omrbranch.baseclass.BaseClass;

public class ExploreHotelPage extends BaseClass {
	
	public ExploreHotelPage() {
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath="//a[@class='icoTwitter mr-2 dropdown-toggle']")
	private WebElement textWelcome ;
	
	@FindBy(xpath="//h5[text()='Explore Hotels']")
	WebElement textExploreHotels ;
	
	@FindBy(id="state")
	WebElement ddnState ;
	
	@FindBy(id="city")
	WebElement ddnCity ;
	
	@FindBy(id="room_type")
	WebElement ddnRoomType ;	
	
	@FindBy(name="check_in")
	WebElement dpkCheckIn ;
	
	@FindBy(name="check_out")
	WebElement dpkCheckOut ;
	
	@FindBy(id="no_rooms")
	WebElement ddnNoOfRooms ;
	
	@FindBy(id="no_adults")
	WebElement ddnNoOfAdults ;
	
	@FindBy(id="no_child")
	WebElement txtNoOfChild ;
	
	@FindBy(id="searchBtn")
	WebElement btnSearch ;
	
	public String getWelcomeText() {
		String elementGetText = elementGetText(textWelcome);
		return elementGetText;
	}

}
