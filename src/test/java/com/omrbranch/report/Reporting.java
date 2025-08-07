package com.omrbranch.report;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.omrbranch.baseclass.BaseClass;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

public class Reporting extends BaseClass {
public static void generateReports(String jsonFile) throws IOException{
		
		//Mention path - store JVM report
		//File file = new File(getProjectPath()+getPropertyFileValue("jvmPath"));
		
		File file = new File("C:\\Maven Project\\OmrBranchBookingProject_Muraliganesh\\target");
		
		
		//Create object for configuration class for designing purpose
		Configuration config = new Configuration(file,"OMR Branch Project");
		config.addClassifications("OS", "Win 11");
		config.addClassifications("Browser version", "123");
		config.addClassifications("Testing", "Reg");
		config.addClassifications("Browser", "Chrome");
		config.addClassifications("Sprint", "SP 1");
		
		
		//Create object for ReportBuilder class
		List<String> jsonFiles = new ArrayList<>();
		jsonFiles.add(jsonFile);
		ReportBuilder builder = new ReportBuilder(jsonFiles, config);
		
		//Build JVM Report
		builder.generateReports();
		
	}

}
