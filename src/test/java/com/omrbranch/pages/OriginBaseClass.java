package com.omrbranch.pages;

import java.io.IOException;
import java.time.Duration;
import java.time.LocalDate;
import java.util.List;

import org.jspecify.annotations.Nullable;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.google.common.collect.EnumHashBiMap;
import com.omrbranch.baseclass.BaseClass;

public class OriginBaseClass extends BaseClass{
	
	
	public static void main(String[] args) throws InterruptedException {
		WebDriver driver;
		Select select;
		String hotelName = "ITC Grand Chola Hotel Studio";
		String bookingId;
		WebDriverWait wait;
		LocalDate currentDate = LocalDate.now();
		
		OriginBaseClass hB = new OriginBaseClass();
		
		//hB.launchBrowser();
		browserLaunch();
		enterApplnUrl("https://www.omrbranch.com/");
		maximizeWindow();
		implicitWait(60);
		hB.webDriverWait(60);
		
		//hB.login();
		hB.elementSendKeys(hB.findLocatorById("email"),"glittermurali@gmail.com");
		hB.elementSendKeys(hB.findLocatorById("pass"),"PassHack1!");
		hB.elementClick(hB.findLocatorByXpath("//button[@value='login']"));
		System.out.println(hB.elementGetText(hB.findLocatorByXpath("//a[@class=\"icoTwitter mr-2 dropdown-toggle\"]")));
		
		
		//hB.exploreHotels();
		System.out.println(hB.elementGetText(hB.findLocatorByXpath("//h5[text()=\"Explore Hotels\"]")));
		hB.selectOptionByValue(hB.findLocatorById("state"),"Tamil Nadu");
		hB.selectOptionByValue(hB.findLocatorById("city"),"Chennai");
		
		List<String> options = hB.getAllOptionsValue(hB.findLocatorById("room_type"));
		for (String  domProperty: options) {
			if(!domProperty.isEmpty())
				hB.selectOptionByValue(hB.findLocatorById("room_type"),domProperty);			
		}
		
		
		hB.elementClick(hB.findLocatorByName("check_in"));
		
		
		int dateOfMonthCheckIn = currentDate.getDayOfMonth();
		hB.elementClick(hB.findLocatorByXpath("//a[text()='"+dateOfMonthCheckIn+"']"));
		
		hB.elementClick(hB.findLocatorByName("check_out"));
		int dateOfMonthCheckOut = dateOfMonthCheckIn+1;
		hB.elementClick(hB.findLocatorByXpath("//a[text()='"+dateOfMonthCheckOut+"']"));
				
		hB.selectOptionByIndex(hB.findLocatorById("no_rooms"), 1);
		hB.selectOptionByValue(hB.findLocatorById("no_adults"),"2");	
		hB.elementSendKeys(hB.findLocatorById("no_child"),"1");
		
		hB.frameSwitch(hB.findLocatorById("hotelsearch_iframe"));
		hB.elementClick(hB.findLocatorById("searchBtn"));
		hB.frameSwitch();
		
		//hB.selectHotel();
		Thread.sleep(5000);
		
		System.out.println(hB.elementGetText(hB.findLocatorByXpath("//h5[text()='Select Hotel']")));
		
		List<WebElement> hotelPriceList = hB.findListLocatorByXpath("//strong[@class='total-prize']");
		List<WebElement> txtHotelNames = hB.findListLocatorByTagName("h5");
		List<WebElement> btnContinue = hB.findListLocatorByXpath("//a[@class='btn filter_btn']");
		//System.out.println(hotelPriceList.size());
		int index = 0;
		for (WebElement hotelPrice : hotelPriceList) {
			System.out.println(hB.elementGetText(txtHotelNames.get(++index))+" - "+hB.elementGetText(hotelPrice));
		}index = 0;
		for (WebElement hotelPrice : hotelPriceList) {
			if(hB.elementGetText(txtHotelNames.get(++index)).equalsIgnoreCase(hotelName)) 
				{
				//System.out.println(--index);
				hB.elementClick(btnContinue.get(--index));
				break;
				}
		}
		Thread.sleep(1000);
		hB.acceptAlert();
		
		//hB.bookingGuestDetails();
		System.out.println(hB.elementGetText(hB.findLocatorByXpath("//h2[contains(text(),'Book Hotel')]")));
		hB.elementClick(hB.findLocatorById("own"))	;	
		hB.selectOptionByValue(hB.findLocatorById("user_title"), "Mr");
		hB.elementSendKeys(hB.findLocatorById("first_name"), "Java");
		hB.elementSendKeys(hB.findLocatorById("last_name"), "Developer");
		hB.elementSendKeys(hB.findLocatorById("user_phone"), "1234567890");
		hB.elementSendKeys(hB.findLocatorById("user_email"), "123@123.com");
		hB.elementClick(hB.findLocatorById("gst"));
		hB.elementSendKeys(hB.findLocatorById("gst_registration"), "9043592058");
		hB.elementSendKeys(hB.findLocatorById("company_name"), "Greens Tech OMR Branch");
		hB.elementSendKeys(hB.findLocatorById("company_address"), "Thoraipakkam");
		hB.elementClick(hB.findLocatorById("step1next"));
		
		hB.elementClick(hB.findLocatorById("bed"));
		hB.elementSendKeys(hB.findLocatorById("other_request"), "Need large bed");
		hB.elementClick(hB.findLocatorById("step2next"));		
		
		hB.elementClick(hB.findLocatorByXpath("//h5[contains(text(),'Credit/Debit/ATM Card')]"));
		hB.selectOptionByValue(hB.findLocatorById("payment_type"), "debit_card");
		hB.selectOptionByValue(hB.findLocatorById("card_type"), "visa");
		hB.elementSendKeys(hB.findLocatorById("card_no"), "5555555555552222");
		hB.elementSendKeys(hB.findLocatorById("card_name"), "OMR");
		
		hB.selectOptionByValue(hB.findLocatorById("card_month"), "01");
		hB.selectOptionByValue(hB.findLocatorById("card_year"), "2027");
		hB.elementSendKeys(hB.findLocatorById("cvv"), "123");
		hB.elementClick(hB.findLocatorById("submitBtn"));
		
		
		
		//hB.bookingConfirmation();
		
		bookingId = hB.elementGetText(hB.findLocatorByTagName("strong")).substring(1);
		System.out.println(bookingId);
		String bookedHotelName = hB.elementGetText(hB.findLocatorByXpath("//strong[contains(text(),'"+hotelName.substring(0, 7)+"')]"));
		System.out.println(bookedHotelName);
		hB.elementClick(hB.findLocatorByXpath("//button[text()='My Booking']"));
		
		//hB.bookings();
		String hdrBookings = hB.elementGetText(hB.findLocatorByXpath("//h4[contains(text(),'Bookings')]"));
		
		int startIndex = hdrBookings.indexOf("(");
		int endIndex = hdrBookings.indexOf(")");
		startIndex++;
		System.out.println(hdrBookings.substring(startIndex, endIndex));
		
		hB.elementSendKeysEnter(hB.findLocatorByName("search"), bookingId);
		Thread.sleep(3000);
		String bookedId = hB.elementGetText(hB.wdwPresenceOfElementLocated("//span[text()='#"+bookingId+"']")).substring(1);
		System.out.println(bookedId);
		System.out.println(hB.elementGetText(hB.wdwPresenceOfElementLocated("//h5[text()='"+hotelName+"']")));
		System.out.println(hB.elementGetText(hB.wdwPresenceOfElementLocated("//strong[@class='total-prize']")));
		
		//hB.editBooking();
		hB.elementClick(hB.wdwPresenceOfElementLocated("//button[text()='Edit']"));
		Thread.sleep(2000);
		hB.elementClick(hB.findLocatorByName("check_in"));
		
		dateOfMonthCheckIn = currentDate.getDayOfMonth();
		dateOfMonthCheckIn++;
		WebElement dpCheckInDate;
		try {
			
			hB.elementClick(hB.findLocatorByXpath("//a[text()='"+dateOfMonthCheckIn+"']"));
		}catch (Exception e) {
			hB.elementClick(hB.findLocatorByXpath("//a[@title='Next']"));
			hB.elementClick(hB.findLocatorByXpath("//a[text()='1']"));
		}
		hB.elementClick(hB.findLocatorByXpath("//button[text()='Confirm']"));
		System.out.println(hB.elementGetText(hB.findLocatorByXpath("//li[@class='alertMsg']")));
		
		//hB.cancelBooking();
		//bookings();
		hdrBookings = hB.elementGetText(hB.findLocatorByXpath("//h4[contains(text(),'Bookings')]"));
		
		startIndex = hdrBookings.indexOf("(");
		endIndex = hdrBookings.indexOf(")");
		startIndex++;
		System.out.println(hdrBookings.substring(startIndex, endIndex));
		
		hB.elementSendKeysEnter(hB.findLocatorByName("search"), bookingId);
		Thread.sleep(3000);
		bookedId = hB.elementGetText(hB.wdwPresenceOfElementLocated("//span[text()='#"+bookingId+"']")).substring(1);
		System.out.println(bookedId);
		System.out.println(hB.elementGetText(hB.wdwPresenceOfElementLocated("//h5[text()='"+hotelName+"']")));
		System.out.println(hB.elementGetText(hB.wdwPresenceOfElementLocated("//strong[@class='total-prize']")));
		
		//driver.navigate().refresh();
		hB.elementClick(hB.wdwPresenceOfElementLocated("//a[text()='Cancel']"));
		hB.acceptAlert();
		System.out.println(hB.elementGetText(hB.findLocatorByXpath("//li[@class='alertMsg']")));
		hB.elementSendKeysEnter(hB.findLocatorByName("search"), bookingId);
		Thread.sleep(1000);
		System.out.println(hB.elementGetText(hB.findLocatorByXpath("//button[text()='Cancelled']")));
					
	}

}
