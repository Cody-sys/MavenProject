package com.omrbranch.runner;

import java.io.IOException;

import org.junit.AfterClass;
import org.junit.runner.RunWith;

import com.omrbranch.baseclass.BaseClass;
import com.omrbranch.report.Reporting;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.CucumberOptions.SnippetType;

@RunWith(Cucumber.class)
@CucumberOptions(snippets = SnippetType.CAMELCASE, 
					dryRun = false,
					plugin = {"pretty","json:target\\Output.json" }, 
					glue = "com.omrbranch.stepdefinition",
					tags = "@log",
					features = "src\\test\\resources")
public class WebRunner2 extends BaseClass{

	@AfterClass
	public static void afterClass() throws IOException {
		Reporting.generateReports(getProjectPath()+getPropertyFileValue("jsonPath"));
		
	}
	
	
}
