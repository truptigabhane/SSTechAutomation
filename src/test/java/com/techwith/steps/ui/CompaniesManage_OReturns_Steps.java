package com.techwith.steps.ui;

import com.techwith.ui.pages.CompaniesManage_OReturns_Methods;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

public class CompaniesManage_OReturns_Steps {

    @Autowired
    public CompaniesManage_OReturns_Methods companiesManage_oReturns_methods;

    @And("Search")
    public void searchCompany(DataTable dataTable) {
        List<Map<String, String>> data = dataTable.asMaps(String.class, String.class);
        for (Map<String, String> mapData : data) {
            String company = mapData.get("Company");
            companiesManage_oReturns_methods.FillSearch(company);
            companiesManage_oReturns_methods.ClickSearchButton();
        }
    }
}
