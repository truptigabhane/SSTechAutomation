package com.techwith.steps.ui;

import com.techwith.ui.pages.CompaniesManage_OReturns_Methods;
import com.techwith.ui.pages.UsersManage_OReturns_Methods;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

public class UsersManage_OReturns_Steps {

    @Autowired
    public UsersManage_OReturns_Methods usersManage_oReturns_methods;
    @Autowired
    public CompaniesManage_OReturns_Methods companiesManage_oReturns_methods;

    @And("Enter User Details To Search")
    public void enterUserDetailsToSearch(DataTable dataTable) throws InterruptedException {
        List<Map<String, String>> data = dataTable.asMaps(String.class , String.class);
        for (Map<String,String> mapData:data){
            String search = mapData.get("Search");
            String company = mapData.get("Company");
            String role = mapData.get("Role");
            usersManage_oReturns_methods.FillTheUserDetails(search, company, role);
            companiesManage_oReturns_methods.ClickSearchButton();
        }
    }
}
