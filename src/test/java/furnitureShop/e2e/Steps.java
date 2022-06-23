package furnitureShop.e2e;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.safari.SafariDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.concurrent.TimeUnit;

public class Steps {

    WebDriver driver;

    @Before
    public void initiate_driver(){
        driver = new SafariDriver();
        driver.manage().window().maximize();
    }

    @Given("Set page load timeout to {int} seconds")
    public void set_page_load_timeout_to_seconds(Integer timeout) {
        driver.manage().timeouts().pageLoadTimeout(timeout, TimeUnit.SECONDS);
    }

    @Given("Set implicit timeout to {int} seconds")
    public void set_implicit_timeout_to_seconds(Integer timeout) {
        driver.manage().timeouts().implicitlyWait(timeout, TimeUnit.SECONDS);
    }

    @Given("Delete all cookies")
    public void delete_all_cookies() {
        driver.manage().deleteAllCookies();
    }

    @Given("Navigate to Furniture Shop site {string}")
    public void navigate_to_Furniture_Shop_site(String url) {
        driver.get(url);
    }

    @Then("Type {string} in search bar")
    public void type_in_search_bar(String text) {
        String searchBarXPath = "/html/body/div[2]/nav[1]/div[1]/ul/li/form/input";
        WebElement searchBar = driver.findElement(By.xpath(searchBarXPath));
        searchBar.sendKeys(text);
    }

    @When("Click search button")
    public void click_search_button() {
        String searchButtonXPath = "/html/body/div[2]/nav[1]/div[1]/ul/li/form/button";
        WebElement searchButton = driver.findElement(By.xpath(searchButtonXPath));
        searchButton.click();
    }

    @When("Click {string} button from left navigation bar")
    public void click_button_from_left_navigation_bar(String buttonName) {
        WebElement button = findLeftNavBarButtonByName(buttonName);
        button.click();
    }

    @When("Select {string} from dropdown from {string} left navigation bar button")
    public void select_from_dropdown_from_left_navigation_bar_button(String furnitureCategoryName, String roomCategoryName) {
        WebElement roomCategory = findLeftNavBarButtonByName(roomCategoryName);
        String furnitureCategoryXPath = ".//a[contains(text(),'"+furnitureCategoryName+"')]";
        WebElement furnitureCategory = roomCategory.findElement(By.xpath(furnitureCategoryXPath));
        furnitureCategory.click();
    }

    @When("Click {string} button from right navigation bar")
    public void click_button_from_right_navigation_bar(String buttonName) {
        WebElement button = findRightNavBarButtonByName(buttonName);
        button.click();
    }

    @When("Click on left top corner Icon")
    public void click_on_left_top_corner_Icon() {
        String iconXPath = "/html/body/div[@class='container-fluid']/nav[1]/a";
        WebElement icon = driver.findElement(By.xpath(iconXPath));
        icon.click();
    }

    @When("Click {string} button")
    public void click_button(String buttonName) {
        String basketCssSelector = "i[title='"+buttonName+"']";
        WebElement basketElement = driver.findElement(By.cssSelector(basketCssSelector));
        basketElement.click();
    }

    @When("Click Login button")
    public void click_Login_button() {
        String loginButtonXPath = "/html/body/div[2]/nav[1]/div[2]/ul/li[3]/a";
        WebElement loginButton = driver.findElement(By.xpath(loginButtonXPath));
        loginButton.click();
    }

    @When("Wait {int} milliseconds")
    public void wait_milliseconds(Integer time) throws InterruptedException {
        Thread.sleep(time);
    }

    @When("Wait till login form is loaded")
    public void wait_till_login_form_is_loaded() {
        WebDriverWait wait = new WebDriverWait(driver, 6);
        By item = By.className("login");
        wait.until(ExpectedConditions.presenceOfElementLocated(item));
    }

    @Then("Displayed text is {string}")
    public void displayed_text_is(String expectedText) {
        String textXPath = "/html/body/div[1]/div[2]/div[1]/div/div/h25";
        WebElement textElement = driver.findElement(By.xpath(textXPath));
        Assertions.assertEquals(expectedText, textElement.getText());
    }

    @Then("Displayed room and category text is {string}")
    public void displayed_room_and_category_text_is(String expectedText) {
        String textXPath = "/html/body/div[1]/div[2]/div/div/h67";
        WebElement textElement = driver.findElement(By.xpath(textXPath));
        Assertions.assertTrue(textElement.getText().contains(expectedText));
    }

    @Then("Url is {string}")
    public void url_is(String expectedUrl) {
        Assertions.assertEquals(driver.getCurrentUrl(), expectedUrl);
    }

    @Then("Message is {string}")
    public void message_is(String expectedMessage) {
       String messageXPath = "/html/body/div[1]/div[3]/div/div/h45";
       WebElement messageElement = driver.findElement(By.xpath(messageXPath));
       Assertions.assertEquals(expectedMessage, messageElement.getText());
    }

    @After
    public void close_driver(){
        driver.close();
    }

    private WebElement findLeftNavBarButtonByName(String name){
        String buttonXPath =  "/html/body/div[2]/nav[2]/div[2]/ul/li[a[contains(text(),'"+name+"')]]";
        return driver.findElement(By.xpath(buttonXPath));
    }

    private WebElement findRightNavBarButtonByName(String name){
        String buttonXPath =  "/html/body/div[2]/nav[2]/div[3]/ul/li[a[contains(text(),'"+name+"')]]";
        return driver.findElement(By.xpath(buttonXPath));
    }

}
