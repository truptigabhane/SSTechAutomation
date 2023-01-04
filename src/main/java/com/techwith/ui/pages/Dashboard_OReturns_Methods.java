package com.techwith.ui.pages;

import com.techwith.ui.models.Dashboard_OReturns_Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Dashboard_OReturns_Methods {

    @Autowired
    public Dashboard_OReturns_Model dashboard_oReturns_model;

    public void ClickOnManageMenuDropDown(){
        dashboard_oReturns_model.ClickManageDropDown();
    }
    public void SelectTheCompaniesMenu(){ dashboard_oReturns_model.SelectCompaniesMenu();}

    public void SelectTheHubMenu(){ dashboard_oReturns_model.SelectHubMenu();}

    public void ClickOnReportingMenuDropDown(){
        dashboard_oReturns_model.ClickReportingDropDown();
    }
    public void SelectTheReportingToSearchOrderAndConsignmentNo(){
        dashboard_oReturns_model.SelectReportingMenu();
    }
}
