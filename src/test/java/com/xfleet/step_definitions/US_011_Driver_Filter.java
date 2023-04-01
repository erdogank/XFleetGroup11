package com.xfleet.step_definitions;

import com.xfleet.pages.DriverFilterPage;
import com.xfleet.pages.LoginPage;
import com.xfleet.utilities.BrowserUtils;
import com.xfleet.utilities.ConfigurationReader;
import com.xfleet.utilities.Driver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;


public class US_011_Driver_Filter {

    DriverFilterPage driverFilterPage = new DriverFilterPage();
    //LoginPage loginpage = new LoginPage();
    WebDriverWait wait = new WebDriverWait(Driver.getDriver(),10);


    @Given("click manage filters")
    public void click_manage_filters() {

        driverFilterPage.manageFilters.click();

    }

    @Given("Select Driver checkboxes")
    public void select_driver_checkboxes() {

        driverFilterPage.checkBoxDriver.click();

    }

    @Given("Select Driver:All")
    public void select_driver_all() {

        driverFilterPage.driverAllButton.click();

    }

    @Given("Verify Driver checkbox is selected")
    public void verify_driver_checkbox_is_selected() {

        driverFilterPage.checkBoxDriver.isSelected();

    }

    @Given("type {string}")
    public void type(String string) {

        driverFilterPage.inputfield.sendKeys(string);

    }

    @Given("click upload button")
    public void click_upload_button() {

        driverFilterPage.uploadbutton.click();
       BrowserUtils.waitFor(2);


    }

    @Then("the result should include {string}")
    public void the_result_should_include(String specifiedKeyword) {

        String actualKeyword = driverFilterPage.driverColumntd3.getText();
        System.out.println(actualKeyword);

        Assert.assertTrue(actualKeyword.contains(specifiedKeyword));


    }

    @Then("the results should not contain the {string}")
    public void the_results_should_not_contain_the(String string) {

        String actualKeyword = driverFilterPage.driverColumntd3.getText();
        System.out.println(actualKeyword);
        BrowserUtils.waitFor(1);

        Assert.assertFalse(actualKeyword.contains(string));

    }

    @When("user select Starts With")
    public void user_select_starts_with() {
        driverFilterPage.startswith.click();

    }

    @Then("usual result shouldn't be appeared\\(No entities were found to match your search)")
    public void usual_result_shouldn_t_be_appeared_no_entities_were_found_to_match_your_search() {


       Assert.assertFalse( driverFilterPage.nodatafound.isDisplayed());
        //driverFilterPage.uploadbutton.isDisplayed();
    }

    @And("user click fleet module")
    public void userClickFleetModule() {

        driverFilterPage.fleetDropdown.click();
        BrowserUtils.waitFor(1);


    }

    @And("user move to vehicles")
    public void userMoveToVehicles() {

        Actions actions = new Actions(Driver.getDriver());

        actions.moveToElement(driverFilterPage.fleetDropdown).
        moveToElement(driverFilterPage.vehicles).perform();
        BrowserUtils.waitFor(1);

        driverFilterPage.vehicles.click();

        wait.until(ExpectedConditions.visibilityOf(driverFilterPage.filtersSign));

        BrowserUtils.waitFor(4);

    }

    @And("go to filterSign")
    public void goToFilterSign() {

        driverFilterPage.filtersSign.click();

    }

    @When("users logins with his her {string} and {string}")
    public void usersLoginsWithHisHerAnd(String string, String string2) {

        driverFilterPage.loginField.sendKeys(string);
        driverFilterPage.passwordField.sendKeys(string2);
        driverFilterPage.loginButton.click();


        // BrowserUtils.waitFor(3);

    }

    @Given("users should be on the login page")
    public void usersShouldBeOnTheLoginPage() {

        Driver.getDriver().get(ConfigurationReader.getProperty("env"));
    }

    @When("user click filter dropdown under Driver:All")
    public void userClickFilterDropdownUnderDriverAll() {

        driverFilterPage.choiceContainsEndswith.click();
    }

    @Then("select specified filter")
    public void selectSpecifiedFilter() {

        driverFilterPage.doesnotcontain.click();
    }

    @Then("select contains filter")
    public void selectContainsFilter() {
        driverFilterPage.contains.click();

    }

    @And("select Does Not Contain")
    public void selectDoesNotContain() {
        driverFilterPage.doesnotcontain.click();

    }


    @Then("the results should start with the {string}")
    public void theResultsShouldStartWithThe(String specifiedKeyword) {

        String actualKeyword = driverFilterPage.driverColumntd3.getText();
        System.out.println(actualKeyword);

        Assert.assertTrue(actualKeyword.contains(specifiedKeyword));

    }

    @Then("the results should end with the {string}")
    public void theResultsShouldEndWithThe(String specifiedKeyword) {

        String actualKeyword = driverFilterPage.driverColumntd3.getText();
        System.out.println(actualKeyword);

        BrowserUtils.waitFor(1);
        Assert.assertTrue(actualKeyword.endsWith(specifiedKeyword));
    }

    @Then("the results should match the {string} exactly")
    public void theResultsShouldMatchTheExactly(String specifiedKeyword) {
        String actualKeyword = driverFilterPage.driverColumntd3.getText();
        System.out.println(actualKeyword);
        BrowserUtils.waitFor(1);
        Assert.assertEquals(actualKeyword, specifiedKeyword);

    }

    @And("select Starts-with")
    public void selectStartsWith() {

        driverFilterPage.startswith.click();
    }

    @And("select Ends With")
    public void selectEndsWith() {
        driverFilterPage.endswith.click();
    }

    @And("select Is Equal to")
    public void selectIsEqualTo() {
        driverFilterPage.isequalto.click();
    }
}
