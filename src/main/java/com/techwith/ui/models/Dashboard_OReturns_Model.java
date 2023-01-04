package com.techwith.ui.models;

import com.techwith.ui.LocatorsPage.Dashboard_OReturns;
import com.techwith.ui.models.customUtils.DropdownEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import static com.techwith.ui.models.customUtils.elementCommonUtils.ClickBy;
import static com.techwith.ui.models.customUtils.elementCommonUtils.DropDownBySelect;

@Component
public class Dashboard_OReturns_Model {

    @Autowired
    public Dashboard_OReturns dashboard_oReturns;

    public void ClickManageDropDown(){ ClickBy(dashboard_oReturns.ClickManage);}
    public void SelectCompaniesMenu(){ ClickBy(dashboard_oReturns.SelectCompanies);}

    public void SelectHubMenu(){
        ClickBy(dashboard_oReturns.ClickHub);
    }

    public void ClickReportingDropDown(){ClickBy(dashboard_oReturns.ClickReporting);}
    public void SelectReportingMenu(){ ClickBy(dashboard_oReturns.SelectReporting);}
}
