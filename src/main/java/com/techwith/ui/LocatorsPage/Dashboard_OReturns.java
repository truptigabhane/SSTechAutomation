package com.techwith.ui.LocatorsPage;

import org.openqa.selenium.By;
import org.springframework.stereotype.Component;

@Component
public class Dashboard_OReturns {
    public By ClickManage = By.xpath("//a[normalize-space()='Manage']");
    public By SelectCompanies = By.xpath("//a[normalize-space()='Companies']");

    public By ClickHub = By.xpath("//a[normalize-space()='Hub']");

    public By ClickReporting = By.xpath("//a[@class='dropdown-toggle'][normalize-space()='Reporting']");
    public By SelectReporting = By.xpath("//a[@href='https://stage.omniparcelreturns.com/admin/returns']");



}
