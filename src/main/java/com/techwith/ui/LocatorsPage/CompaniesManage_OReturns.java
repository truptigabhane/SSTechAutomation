package com.techwith.ui.LocatorsPage;

import org.openqa.selenium.By;
import org.springframework.stereotype.Component;

@Component
public class CompaniesManage_OReturns {

    public By SearchCompany = By.xpath("//input[@id='search']");
    public By ClickSearchButton = By.xpath("//button[normalize-space()='Search']");
    public By ClickExportButton = By.xpath("//button[@id='export_booking']");
}
