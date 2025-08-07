package com.omrbranch.objectmanager;

import com.omrbranch.pages.BookingHotelPage;
import com.omrbranch.pages.BookingConfirmationPage;
import com.omrbranch.pages.ExploreHotelPage;
import com.omrbranch.pages.LoginPage;
import com.omrbranch.pages.MyBookingPage;
import com.omrbranch.pages.SelectHotelPage;

public class PageObjectManager {
	
	private  LoginPage loginPage;
	private ExploreHotelPage exploreHotelPage;
	private  SelectHotelPage selectHotelPage;
	private  BookingHotelPage bookHotelPage;
	private  MyBookingPage myBookingPage;
	private  BookingConfirmationPage bookingConfirmationPage;
	
	
	public  LoginPage getLoginPage() {
		return (loginPage==null)?loginPage = new LoginPage():loginPage;
	}
	public  ExploreHotelPage getExploreHotelPage() {
		return (exploreHotelPage==null)?exploreHotelPage = new ExploreHotelPage():exploreHotelPage;
	}
	public  SelectHotelPage getSelectHotelPage() {
		return (selectHotelPage==null)?selectHotelPage = new SelectHotelPage():selectHotelPage;
	}
	public  BookingHotelPage getBookHotelPage() {
		return (bookHotelPage==null)?bookHotelPage = new BookingHotelPage():bookHotelPage;
	}
	public  MyBookingPage getMyBookingPage() {
		return (myBookingPage==null)?myBookingPage = new MyBookingPage():myBookingPage;
	}
	public  BookingConfirmationPage getBookingConfirmationPage() {
		return (bookingConfirmationPage==null)?bookingConfirmationPage = new BookingConfirmationPage():bookingConfirmationPage;
	}
	
	
	

}
