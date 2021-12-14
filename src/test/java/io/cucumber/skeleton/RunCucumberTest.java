package io.cucumber.skeleton;

import org.junit.jupiter.api.Test;
import org.junit.platform.suite.api.ConfigurationParameter;
import org.junit.platform.suite.api.IncludeEngines;
import org.junit.platform.suite.api.SelectClasspathResource;
import org.junit.platform.suite.api.Suite;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import static io.cucumber.junit.platform.engine.Constants.PLUGIN_PROPERTY_NAME;

@Suite
@IncludeEngines("cucumber")
@SelectClasspathResource("io/cucumber/skeleton")
@ConfigurationParameter(key = PLUGIN_PROPERTY_NAME, value = "pretty")
@ConfigurationParameter(key = PLUGIN_PROPERTY_NAME, value = "html:target/cucumber/report.html, json:target/cucumber/report.json")

public class RunCucumberTest {
    @Test
    public void chromeWebdriver() throws InterruptedException {
        System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
        WebDriver driver = new ChromeDriver();
        driver.get("https://www.3djuegos.com/");
        Thread.sleep(3000);
        WebElement searchbox = driver.findElement(By.name("q"));
        searchbox.sendKeys("Mario Bros  "+ Keys.ENTER);
        Thread.sleep(3000);
        driver.quit();
    }

    @Test
    public void testCutre() {
        System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
        WebDriver driver = new ChromeDriver();
        driver.get("https://www.3djuegos.com/");

        WebElement insta = driver.findElement(By.linkText("Instagram"));
        insta.click();
    }
}
