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

public class Origin {
	
	WebDriver driver;
	Select select;
	String hotelName = "ITC Grand Chola Hotel Studio";
	String bookingId;
	WebDriverWait wait;
	
	private void launchBrowser() {
		driver = new ChromeDriver();
		driver.get("https://www.omrbranch.com/");
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(5));
		wait = new WebDriverWait(driver, Duration.ofSeconds(60));

	}
	
	private void login() throws InterruptedException {
					WebElement txtEmail = driver.findElement(By.id("email"));
					txtEmail.sendKeys("glittermurali@gmail.com");
					WebElement txtPass = driver.findElement(By.id("pass"));
					txtPass.sendKeys("PassHack1!");
					WebElement btnLogin = driver.findElement(By.xpath("//button[@value='login']"));
					btnLogin.click();
					WebElement txtWelcome = driver.findElement(By.xpath("//a[@class=\"icoTwitter mr-2 dropdown-toggle\"]"));
					System.out.println(txtWelcome.getText());
	}
	
	private void exploreHotels() throws InterruptedException {
		WebElement txtHeader = driver.findElement(By.xpath("//h5[text()=\"Explore Hotels\"]"));
		System.out.println(txtHeader.getText());
		
		WebElement ddnState = driver.findElement(By.id("state"));
		select = new Select(ddnState);
		select.selectByValue("Tamil Nadu");
		
		WebElement ddnCity = driver.findElement(By.id("city"));
		select = new Select(ddnCity);
		select.selectByValue("Chennai");
		
		Thread.sleep(1000);
		
		WebElement ddnRoomType = driver.findElement(By.id("room_type"));
		select = new Select(ddnRoomType);
		//System.out.println(select.isMultiple());
		List<WebElement> options = select.getOptions();
		//System.out.println(options);
		for (WebElement webElement : options) {
			String domProperty = webElement.getDomProperty("value");
			//System.out.println(domProperty);
			if(!domProperty.isEmpty())
				select.selectByValue(domProperty);			
		}
		
		
		
		WebElement dpkCheckIn = driver.findElement(By.name("check_in"));
		dpkCheckIn.click();
		
		LocalDate currentDate = LocalDate.now();
		int dateOfMonthCheckIn = currentDate.getDayOfMonth();
		WebElement dpCheckInDate = driver.findElement(By.xpath("//a[text()='"+dateOfMonthCheckIn+"']"));
		dpCheckInDate.click();
		
		WebElement dpkCheckOut = driver.findElement(By.name("check_out"));
		dpkCheckOut.click();
		int dateOfMonthCheckOut = dateOfMonthCheckIn+1;
		WebElement dpCheckOutDate = driver.findElement(By.xpath("//a[text()='"+dateOfMonthCheckOut+"']"));
		dpCheckOutDate.click();
		
		WebElement ddnNoOfRooms = driver.findElement(By.id("no_rooms"));
		select = new Select(ddnNoOfRooms);
		select.selectByValue("1");
		
		WebElement ddnNoOfAdults = driver.findElement(By.id("no_adults"));
		select = new Select(ddnNoOfAdults);
		select.selectByValue("2");
		
		WebElement txtNoOfChild = driver.findElement(By.id("no_child"));
		txtNoOfChild.sendKeys("1");
		
		WebElement frameSearchButton = driver.findElement(By.id("hotelsearch_iframe"));
		driver.switchTo().frame(frameSearchButton);
		WebElement btnSearch = driver.findElement(By.id("searchBtn"));
		btnSearch.click();
		driver.switchTo().defaultContent();
		
	}
	
	private void selectHotel() throws InterruptedException {
		Thread.sleep(5000);
		WebElement txtHeader = driver.findElement(By.xpath("//h5[text()='Select Hotel']"));
		System.out.println(txtHeader.getText());
		
		List<WebElement> hotelPriceList = driver.findElements(By.xpath("//strong[@class='total-prize']"));
		List<WebElement> txtHotelNames = driver.findElements(By.tagName("h5"));
		List<WebElement> btnContinue = driver.findElements(By.xpath("//a[@class='btn filter_btn']"));
		//System.out.println(hotelPriceList.size());
		int index = 0;
		for (WebElement hotelPrice : hotelPriceList) {
			System.out.println(txtHotelNames.get(++index).getText()+" - "+hotelPrice.getText());
		}index = 0;
		for (WebElement hotelPrice : hotelPriceList) {
			if(txtHotelNames.get(++index).getText().equalsIgnoreCase(hotelName)) 
				{
				//System.out.println(--index);
				btnContinue.get(--index).click();
				break;
				}
		}
		Thread.sleep(1000);
		Alert alert = driver.switchTo().alert();
		alert.accept();
		
	}
	
	private void bookingGuestDetails() {
		WebElement txtHeader = driver.findElement(By.xpath("//h2[contains(text(),'Book Hotel')]"));
		System.out.println(txtHeader.getText());
		
		WebElement rdoBookingFor = driver.findElement(By.id("own"));
		rdoBookingFor.click();
		
		WebElement ddnSalutation = driver.findElement(By.id("user_title"));
		select = new Select(ddnSalutation);
		select.selectByValue("Mr");
		
		driver.findElement(By.id("first_name")).sendKeys("Java");
		driver.findElement(By.id("last_name")).sendKeys("Developer");
		driver.findElement(By.id("user_phone")).sendKeys("1234567890");
		driver.findElement(By.id("user_email")).sendKeys("123@123.com");
		
		driver.findElement(By.id("gst")).click();
		driver.findElement(By.id("gst_registration")).sendKeys("9043592058");
		driver.findElement(By.id("company_name")).sendKeys("Greens Tech OMR Branch");
		driver.findElement(By.id("company_address")).sendKeys("Thoraipakkam");
		driver.findElement(By.id("step1next")).click();
		
		
		driver.findElement(By.id("bed")).click();
		driver.findElement(By.id("other_request")).sendKeys("Need large bed");
		driver.findElement(By.id("step2next")).click();
		
		
		driver.findElement(By.xpath("//h5[contains(text(),'Credit/Debit/ATM Card')]")).click();
		WebElement ddnPaymentType = driver.findElement(By.id("payment_type"));
		select = new Select(ddnPaymentType);
		select.selectByValue("debit_card");
		
		WebElement ddnCardType = driver.findElement(By.id("card_type"));
		select = new Select(ddnCardType);
		select.selectByValue("visa");
		
		driver.findElement(By.id("card_no")).sendKeys("5555555555552222");
		driver.findElement(By.id("card_name")).sendKeys("OMR");
		
		WebElement ddnCardMonth = driver.findElement(By.id("card_month"));
		select = new Select(ddnCardMonth);
		select.selectByValue("01");
		
		WebElement ddnCardYear = driver.findElement(By.id("card_year"));
		select = new Select(ddnCardYear);
		select.selectByValue("2027");
		
		driver.findElement(By.id("cvv")).sendKeys("123");
		
		driver.findElement(By.id("submitBtn")).click();
		
	}
	
	private void bookingConfirmation() {
		bookingId = driver.findElement(By.tagName("strong")).getText().substring(1);
		System.out.println(bookingId);
		String bookedHotelName = driver.findElement(By.xpath("//strong[contains(text(),'"+hotelName.substring(0, 7)+"')]")).getText();
		System.out.println(bookedHotelName);
		driver.findElement(By.xpath("//button[text()='My Booking']")).click();
	}
	
	private void bookings() throws InterruptedException {
		String hdrBookings = driver.findElement(By.xpath("//h4[contains(text(),'Bookings')]")).getText();
		
		int startIndex = hdrBookings.indexOf("(");
		int endIndex = hdrBookings.indexOf(")");
		startIndex++;
		System.out.println(hdrBookings.substring(startIndex, endIndex));
		
		driver.findElement(By.name("search")).sendKeys(bookingId,Keys.ENTER);
		String bookedId = wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//span[text()='#"+bookingId+"']"))).getText().substring(1);
		System.out.println(bookedId);
		WebElement bookedHotel = wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//h5[text()='"+hotelName+"']")));
		String bookedHotelName = bookedHotel.getText();
		System.out.println(bookedHotelName);
		String priceAmount = wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//strong[@class='total-prize']"))).getText();
		System.out.println(priceAmount);
	}
	
	
	private void editBooking() throws InterruptedException {
		//driver.navigate().refresh();
		Thread.sleep(2000);
		wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//button[text()='Edit']"))).click();
		Thread.sleep(2000);
		driver.findElement(By.name("check_in")).click();
		LocalDate currentDate = LocalDate.now();
		int dateOfMonthCheckIn = currentDate.getDayOfMonth();
		dateOfMonthCheckIn++;
		WebElement dpCheckInDate;
		try {
			dpCheckInDate = driver.findElement(By.xpath("//a[text()='"+dateOfMonthCheckIn+"']"));
			dpCheckInDate.click();
		}catch (Exception e) {
			driver.findElement(By.xpath("//a[@title='Next']")).click();
			driver.findElement(By.xpath("//a[text()='1']")).click();
		}
		driver.findElement(By.xpath("//button[text()='Confirm']")).click();
		String txtBookingMessage = driver.findElement(By.xpath("//li[@class='alertMsg']")).getText();
		System.out.println(txtBookingMessage);
	}
	
	private void cancelBooking() throws InterruptedException {
		bookings();
		//driver.navigate().refresh();
		wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//a[text()='Cancel']"))).click();
		Alert alert = driver.switchTo().alert();
		alert.accept();
		String txtCancelMessage = driver.findElement(By.xpath("//li[@class='alertMsg']")).getText();
		System.out.println(txtCancelMessage);
		
		driver.findElement(By.name("search")).sendKeys(bookingId,Keys.ENTER);
		Thread.sleep(2000);
		String txtbookingStatus = driver.findElement(By.xpath("//button[text()='Cancelled']")).getText();
		System.out.println(txtbookingStatus);
		
	}
	
	public static void main(String[] args) throws InterruptedException {
		Origin hB = new Origin();
		hB.launchBrowser();
		hB.login();
		hB.exploreHotels();
		hB.selectHotel();
		hB.bookingGuestDetails();
		hB.bookingConfirmation();
		hB.bookings();
		hB.editBooking();
		hB.cancelBooking();
			
	}

}
