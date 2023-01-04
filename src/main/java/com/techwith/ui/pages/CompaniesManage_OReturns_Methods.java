package com.techwith.ui.pages;

import com.techwith.ui.models.CompaniesManage_OReturns_Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CompaniesManage_OReturns_Methods {

    @Autowired
    public CompaniesManage_OReturns_Model companiesManage_oReturns_model;

    public void FillSearch(String Search) {
        companiesManage_oReturns_model.enterCompanyToSearch(Search);
    }

    public void ClickSearchButton(){
        companiesManage_oReturns_model.ClickSearchBtn();
    }
}
