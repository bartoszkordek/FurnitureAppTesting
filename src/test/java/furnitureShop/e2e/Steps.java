package furnitureShop.e2e;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.safari.SafariDriver;

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

    @Then("Click search button")
    public void click_search_button() {
        String searchButtonXPath = "/html/body/div[2]/nav[1]/div[1]/ul/li/form/button";
        WebElement searchButton = driver.findElement(By.xpath(searchButtonXPath));
        searchButton.click();
    }

    @Then("Wait {int} milliseconds")
    public void wait_milliseconds(Integer time) throws InterruptedException {
        Thread.sleep(time);
    }


    @Then("Displayed text is {string}")
    public void displayed_text_is(String expectedText) {
        String textXPath = "/html/body/div[1]/div[2]/div[1]/div/div/h25";
        WebElement text = driver.findElement(By.xpath(textXPath));
        Assertions.assertEquals(expectedText, text.getText());
    }

    @After
    public void close_driver(){
        driver.close();
    }
}
