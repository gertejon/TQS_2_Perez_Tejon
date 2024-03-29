package io.cucumber.skeleton;

import io.cucumber.java.*;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

public class WebStepDefinitions {

    /**
     * Note: You must have installed chromedriver in your system
     *       https://chromedriver.chromium.org/downloads
     *       The version must match with the version of your Chrome browser
     */

    private static WebDriver driver;
    private Scenario scenario;

    @BeforeAll
    public static void setUp() {
        // This property is optional.
        // If not specified, WebDriver searches the path for chromedriver in your environment variables
        // Example path for Linux or Mac:
        System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
        driver = new ChromeDriver();
    }

    @Before
    public void before(Scenario scenario) {
        this.scenario = scenario;
    }

    @Given("I go to the home page")
    public void iGoToTheHomePage() {
        driver.get("https://www.3djuegos.com/");
        driver.manage().timeouts().implicitlyWait(3, TimeUnit.SECONDS);
    }

    @Given("I go to the login page")
    public void iGoToTheLoginPage() {
        driver.get("https://www.3djuegos.com/foros/index.php?zona=iniciar_sesion");
        driver.manage().timeouts().implicitlyWait(3, TimeUnit.SECONDS);
    }

    @Then("I should see a {string} button/text")
    public void iShouldSeeAButton(String text) {
        By byXPath = By.xpath("//*[contains(text(),'" + text + "')]");
        List<WebElement> elem = driver.findElements(byXPath);
        boolean present = elem.size() > 0;
        Assertions.assertTrue(present);
    }

    @Then("I should be on this website: {string}")
    public void iShouldBeOnURL(String url) {
        String currentHandle = driver.getWindowHandle();
        String currentURL = driver.getCurrentUrl();
        Assertions.assertEquals(currentURL, url);
    }

    @When("I click on {string} button")
    public void iClickOnButton(String button_text) {
        WebElement obj = driver.findElement(By.linkText(button_text));
        obj.click();
        //Thread.sleep(3000);
        driver.manage().timeouts().implicitlyWait(3, TimeUnit.SECONDS);
    }

    @When("I click {string}")
    public void iClickButton(String button){
        WebElement obj = driver.findElement(By.id(button));
        obj.click();
    }

    @When("I fill the search box with {string}")
    public void iFillTheSearchBox(String query_text) {
        WebElement searchbox = driver.findElement(By.name("q"));
        searchbox.sendKeys(query_text + Keys.ENTER);
    }

    @And("I switch to the opened tab")
    public void switchToNewTab() {
        String originalWindow = driver.getWindowHandle();
        for (String windowHandle : driver.getWindowHandles()) {
            if(!originalWindow.contentEquals(windowHandle)) {
                driver.switchTo().window(windowHandle);
                break;
            }
        }
    }

    @And("I accept cookies")
    public void acceptCookies() {
        String button = "didomi-notice-agree-button";
        WebElement obj = driver.findElement(By.id(button));
        obj.click();
    }

    @And("I take a screenshot with filename {string}")
    public void iTakeAScreenshotWithFilename(String filename) {
        byte[] screenshot = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
        scenario.attach(screenshot, "image/png", "filename");
    }

    @And("I fill the mail box with {string}")
    public void iFillTheMailBox(String mail){
        WebElement mailbox = driver.findElement(By.name("login_email"));
        mailbox.sendKeys(mail + Keys.ENTER);
    }

    @And("I fill the password box with {string}")
    public void iFillThePasswordBox(String password) {
        WebElement mailbox = driver.findElement(By.name("login_password"));
        mailbox.sendKeys(password + Keys.ENTER);
        driver.manage().timeouts().implicitlyWait(3, TimeUnit.SECONDS);
    }

    @And("I fill the {string} box with {string}")
    public void iFillTheBox(String box, String fill) {
        WebElement mailbox = driver.findElement(By.name(box));
        mailbox.sendKeys(fill + Keys.ENTER);
        driver.manage().timeouts().implicitlyWait(3, TimeUnit.SECONDS);
    }

    @And("I set the password to default")
    public void setPwdDefault() {
        iFillTheBox("login_pass", "newpassword");
        iFillTheBox("reg_password1", "Eltestescorrecto");
        iFillTheBox("reg_password2", "Eltestescorrecto");
        iClickOnButton("Cambiar clave de acceso");
    }

    @And("I set the email to default")
    public void setEmailDefault() {
        iFillTheBox("login_pass", "Eltestescorrecto");
        iFillTheBox("reg_email1", "jphofland@gmail.com");
        iFillTheBox("reg_email2", "jphofland@gmail.com");
        iClickOnButton("Cambiar email");
    }

    @And("I close the tab")
    public void closeTab() {
        ArrayList<String> tabs2 = new ArrayList<String>(driver.getWindowHandles());
        driver.switchTo().window(tabs2.get(1));
        driver.close();
        driver.switchTo().window(tabs2.get(0));
    }


    @AfterAll()
    public static void tearDown() {
        driver.quit();
    }

}
