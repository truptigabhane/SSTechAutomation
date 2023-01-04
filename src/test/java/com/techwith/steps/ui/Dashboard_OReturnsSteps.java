package com.techwith.steps.ui;

import com.techwith.ui.pages.Dashboard_OReturns_Methods;
import io.cucumber.java.en.When;
import org.springframework.beans.factory.annotation.Autowired;

public class Dashboard_OReturnsSteps {

    @Autowired
    public Dashboard_OReturns_Methods dashboard_oReturns_methods;

    @When("Select Companies From Manage")
    public void selectCompaniesFromManage() {
        dashboard_oReturns_methods.ClickOnManageMenuDropDown();
        dashboard_oReturns_methods.SelectTheCompaniesMenu();
    }

    @When("Select Hub From Manage")
    public void selectHubFromManage() {
        dashboard_oReturns_methods.ClickOnManageMenuDropDown();
        dashboard_oReturns_methods.SelectTheHubMenu();
    }

    @When("Select Reporting to see Returns Report")
    public void selectReportingToSeeReturnsReport() {
        dashboard_oReturns_methods.ClickOnReportingMenuDropDown();
        dashboard_oReturns_methods.SelectTheReportingToSearchOrderAndConsignmentNo();
    }
}

