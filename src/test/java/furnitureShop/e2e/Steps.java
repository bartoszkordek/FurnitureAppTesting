package furnitureShop.e2e;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
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

    @When("Click Register button")
    public void click_Register_button() {
        String registerButtonXPath = "/html/body/div[2]/nav[1]/div[2]/ul/li[2]/a";
        WebElement registerButton = driver.findElement(By.xpath(registerButtonXPath));
        registerButton.click();
    }

    @When("Wait {int} milliseconds")
    public void wait_milliseconds(Integer time) throws InterruptedException {
        Thread.sleep(time);
    }

    @When("Wait till login form is loaded")
    public void wait_till_login_form_is_loaded() {
        WebDriverWait wait = new WebDriverWait(driver, 6);
        By loginForm = By.className("login");
        wait.until(ExpectedConditions.presenceOfElementLocated(loginForm));
    }

    @When("Wait till register form is loaded")
    public void wait_till_register_form_is_loaded() {
        WebDriverWait wait = new WebDriverWait(driver, 6);
        By loginForm = By.className("login2");
        wait.until(ExpectedConditions.presenceOfElementLocated(loginForm));
    }

    @When("Provide email {string} in login form")
    public void provide_email_in_login_form(String email) {
        WebElement usernameBox = driver.findElement(By.id("username"));
        usernameBox.sendKeys(email);
    }

    @When("Provide password {string} in login form")
    public void provide_password_in_login_form(String password) {
        WebElement passwordBox = driver.findElement(By.id("password"));
        passwordBox.sendKeys(password);
    }

    @When("Click Login Submit button")
    public void click_Login_Submit_button() {
        String loginSubmitCssSelector = "input[value='Zaloguj się']";
        WebElement loginSubmitElement = driver.findElement(By.cssSelector(loginSubmitCssSelector));
        loginSubmitElement.click();
    }

    @When("Provide name {string} in register form")
    public void provide_name_in_register_form(String name) {
        String nameBoxXPath = "/html/body/div[1]/div[3]/div/form/input[@name='nick']";
        WebElement nameElement = driver.findElement(By.xpath(nameBoxXPath));
        nameElement.sendKeys(name);
    }

    @When("Provide email {string} in register form")
    public void provide_email_in_register_form(String email) {
        String emailBoxXPath = "/html/body/div[1]/div[3]/div/form/input[@name='email']";
        WebElement emailElement = driver.findElement(By.xpath(emailBoxXPath));
        emailElement.sendKeys(email);
    }

    @When("Provide password {string} in register form")
    public void provide_password_in_register_form(String password) {
        String passwordBoxXPath = "/html/body/div[1]/div[3]/div/form/input[@name='haslo1']";
        WebElement passwordElement = driver.findElement(By.xpath(passwordBoxXPath));
        passwordElement.sendKeys(password);
    }

    @When("Provide repeated password {string} in register form and click Enter")
    public void provide_repeated_password_in_register_form_and_click_Enter(String password) {
        String passwordBoxXPath = "/html/body/div[1]/div[3]/div/form/input[@name='haslo2']";
        WebElement passwordElement = driver.findElement(By.xpath(passwordBoxXPath));
        passwordElement.sendKeys(password);
        passwordElement.sendKeys(Keys.RETURN);
    }

    @When("Click Accept regulations checkbox in register form")
    public void click_Accept_regulations_checkbox_in_register_form() {
        String acceptRegulationsCheckBoxXPath = "/html/body/div[1]/div[3]/div/form/div/input";
        WebElement acceptRegulationsCheckBoxElement = driver.findElement(By.xpath(acceptRegulationsCheckBoxXPath));
        acceptRegulationsCheckBoxElement.click();
    }

    @Then("Accept regulations checkbox in register form is clicked")
    public void accept_regulations_checkbox_in_register_form_is_clicked() {
        String acceptRegulationsCheckBoxXPath = "/html/body/div[1]/div[3]/div/form/div/input";
        WebElement acceptRegulationsCheckBoxElement = driver.findElement(By.xpath(acceptRegulationsCheckBoxXPath));
        Assertions.assertTrue(acceptRegulationsCheckBoxElement.isSelected());
    }

    @Then("Accept regulations checkbox in register form is not clicked")
    public void accept_regulations_checkbox_in_register_form_is_not_clicked() {
        String acceptRegulationsCheckBoxXPath = "/html/body/div[1]/div[3]/div/form/div/input";
        WebElement acceptRegulationsCheckBoxElement = driver.findElement(By.xpath(acceptRegulationsCheckBoxXPath));
        Assertions.assertFalse(acceptRegulationsCheckBoxElement.isSelected());
    }

    @Then("Displayed search text is {string}")
    public void displayed_search_text_is(String expectedText) {
        String textXPath = "/html/body/div[1]/div[2]/div[1]/div/div/h25";
        WebElement textElement = driver.findElement(By.xpath(textXPath));
        Assertions.assertEquals(expectedText, textElement.getText());
    }

    @Then("Displayed header text is {string}")
    public void displayed_header_text_is(String expectedText) {
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

    @Then("Login message is {string}")
    public void login_message_is(String expectedLoginMessage) {
        String loginMessageXPath = "/html/body/div[1]/div[4]/span";
        WebElement loginMessageElement = driver.findElement(By.xpath(loginMessageXPath));
        Assertions.assertEquals(expectedLoginMessage, loginMessageElement.getText());
    }

    @Then("Mismatch password error message is {string}")
    public void mismatch_password_error_message_is(String expectedMessage) {
        String errorMessageXPath = "/html/body/div[1]/div[3]/div/form/div[1]";
        WebElement errorMessageElement = driver.findElement(By.xpath(errorMessageXPath));
        Assertions.assertEquals(expectedMessage, errorMessageElement.getText());
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
