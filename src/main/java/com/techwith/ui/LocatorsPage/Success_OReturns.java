package com.techwith.ui.LocatorsPage;

import org.openqa.selenium.By;
import org.springframework.stereotype.Component;


@Component
public class Success_OReturns {

    public By ValidateOrderNumber_Success_take = By.xpath("(//div[contains(@class,'maindetail')]//following-sibling::div)[1]");
    public By ValidateName_Success_take = By.xpath("(//div[contains(@class,'maindetail')]//following-sibling::div)[2]");
}
