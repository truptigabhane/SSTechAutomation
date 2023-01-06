package com.techwith.ui.pages;

import com.techwith.ui.LocatorsPage.Login_OReturns;
import com.techwith.ui.models.Login_OReturns_Model;
import com.techwith.ui.models.customUtils.elementCommonUtils;
import org.openqa.selenium.WebElement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import static com.techwith.webdriver.WebDriverFactory.getDriver;

@Component
public class Login_OReturns_Methods {

    @Autowired
    public Login_OReturns_Model login_oReturns_model;

    public void EnterEmailAddressAndPassword(String emailAddress , String password) {
        login_oReturns_model.enterEmailAddress(emailAddress);
        login_oReturns_model.enterPassword(password);
    }
    public void EnterEmailAddressForReset(String emailAddress) {
        login_oReturns_model.enterEmailAddressForReset(emailAddress);
    }
    public void EnterEmailAddress(String emailAddress) {
        login_oReturns_model.enterEmailAddress(emailAddress);
    }
    public void EnterPassword(String password) {
        login_oReturns_model.enterPassword(password);
    }
    public void ClickLogInButton(){
        login_oReturns_model.ClickLogInBtn();
    }
    public void EnterConfirmPassword(String confirmPassword) {
        login_oReturns_model.enterConfirmPassword(confirmPassword);
    }
}
