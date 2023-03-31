package com.xfleet.pages;

import com.xfleet.utilities.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class VehiclesGeneralInfoPage extends BasePage{

    public VehiclesGeneralInfoPage(){
        PageFactory.initElements(Driver.getDriver(),this);
    }

    @FindBy(xpath = "//span[.='General Information']")
    public WebElement generalInfoText;

    @FindBy(xpath = "//label[.='License Plate']/../div/div")
    public WebElement generalInfoLicencePlate;

    @FindBy(xpath = "//a[@title='Delete Car']")
    public WebElement deleteButtonOfGeneralInfo;

    @FindBy(xpath = "//a[@class='btn ok btn-danger']")
    public WebElement deleteConfirmYesButton;

    @FindBy(xpath = "//a[@title='Edit Car']")
    public WebElement editButtonOfGeneralInfo;

    @FindBy(xpath = "//a[@title='Add an event to this record']")
    public WebElement addEventButtonOfGeneralInfo;

    @FindBy(xpath = "//div[contains(@class,'responsive-cell')]/div[3]//div[contains(@class,'control-label')]")
    public WebElement nameElement;

    public String getVehicleInfoByIndex(int index) {
        return Driver.getDriver().findElement(By.xpath(String.format("//div[contains(@class,'responsive-cell')]/div[%s]//div[contains(@class,'control-label')]", index))).getText();
    }
    public List<String> getAllVehicleInfo(){
        List<String> infoList = new ArrayList<>();
        for (int i = 1; i < 20; i++) {
            infoList.add(getVehicleInfoByIndex(i));
        }
        return infoList;
    }

    public List<WebElement> getAllActionButtons() {
        return Arrays.asList(editButtonOfGeneralInfo,deleteButtonOfGeneralInfo,addEventButtonOfGeneralInfo);//TODO there is a bug here, addEventButton shouldn't be seen
    }


    public boolean isAllActionButtonsDisplayed() {
        return getAllActionButtons().stream()
                .allMatch(
                        element -> {
                            try {
                                if (!element.isDisplayed()) {
                                    System.err.println("Failed to locate element:{}" + element.getText());
                                    return false;
                                }
                            } catch (Exception e) {
                                System.out.println("We had an exception here");
                                return false;
                            }
                            return true;
                        });
    }


    public boolean isGeneralInformationPageDisplayed(){
        boolean isDisplayed = generalInfoText.isDisplayed();
        System.out.println("General Information Page is displayed: " + isDisplayed);
        return isDisplayed;
    }
    public String getName(){
        String name = nameElement.getText().trim();
        System.out.println("Name: " + name);
        return name;
    }

}
