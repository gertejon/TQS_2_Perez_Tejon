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
    }

    @Given("I go to the login page")
    public void iGoToTheLoginPage(){driver.get("https://www.3djuegos.com/foros/index.php?zona=iniciar_sesion");}

    @Then("I should see a {string} button/text")
    public void iShouldSeeAButton(String text) {
        By byXPath = By.xpath("//*[contains(text(),'" + text + "')]");
        boolean present = driver.findElements(byXPath).size() > 0;
        Assertions.assertTrue(present);
    }

    @When("I click on {string} button")
    public void iClickOnButton(String button_text){
        driver.findElement(By.linkText(button_text)).click();
    }

    @When("I fill the search box with {string}")
    public void iFillTheSearchBox(String query_text) {
        WebElement searchbox = driver.findElement(By.name("q"));
        searchbox.sendKeys(query_text + Keys.ENTER);
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
    public void iFillThePasswordBox(String password) throws InterruptedException {
        WebElement mailbox = driver.findElement(By.name("login_password"));
        mailbox.sendKeys(password + Keys.ENTER);
        Thread.sleep(3000);
    }

    @AfterAll()
    public static void tearDown() {
        driver.quit();
    }

}
