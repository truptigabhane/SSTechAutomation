package com.techwith.ui.models;

import com.techwith.ui.LocatorsPage.CompaniesManage_OReturns;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import static com.techwith.ui.models.customUtils.elementCommonUtils.ClickBy;
import static com.techwith.ui.models.customUtils.elementCommonUtils.SendKeyBy;

@Component
public class CompaniesManage_OReturns_Model {

    @Autowired
    public CompaniesManage_OReturns companiesManage_oReturns;

    public void enterCompanyToSearch(String Search){
        SendKeyBy(companiesManage_oReturns.SearchCompany , Search);
    }

    public void ClickSearchBtn(){
        ClickBy(companiesManage_oReturns.ClickSearchButton);
    }
}
