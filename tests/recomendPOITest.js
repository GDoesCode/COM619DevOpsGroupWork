const {Builder, By, Key} = require("selenium-webdriver");
const chrome = require("selenium-webdriver/chrome");
const assert = require('assert');

async function recomendPOITest(){
    // Setting Google Chrome driver options to ignore the SSL certificates when opening the application
    const options = new chrome.Options()
    options.addArguments('--ignore-certificate-errors');

    // Launch the browser
    let driver = await new Builder().forBrowser("chrome").setChromeOptions(options).build();
    
    // Navigate to our mapping application
    await driver.get("https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/")

    // Adding a delay of 5 seconds so that the application is fully loaded to allow a successfull 
    // interaction between selenium webdriver and the mapping web application
    await driver.sleep(5000);

    // Input Username to sign in to the mapping application
    await driver.findElement(By.id("username")).sendKeys("tim");

    // Input Password to sign in into the mapping application
    await driver.findElement(By.id("password")).sendKeys("tim123");

    // Click the sign in button to sign into the mapping application with the username and password mentioned above.
    await driver.findElement(By.id("login")).click();

    // Assertion test in place to make sure we visit the right url which is our hosted application
    const actualUrl = await driver.getCurrentUrl();
    const expectedUrl = 'https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/';
    assert.strictEqual(actualUrl, expectedUrl, 'URL does not match expected value');

    // Inputting text to search a POI by region
    await driver.findElement(By.id("regionIn")).sendKeys("Southampton");

    // Click the search button to search POI's by region with the inputted text above
    await driver.findElement(By.id("btn1")).click();

    // Click the button to recomnend a POI
    await driver.findElement(By.id("recbtn")).click();

    // Adding a delay of 10 seconds since it kept on closing too fast to see the automation teesting
    await driver.sleep(10000);

    // If the test is successfull in allowing a user to recomend a POI, then return a log success message into the console.
    console.log("Recomending a POI test has passed successfully");

    // Close the browser to complete the test    
    await driver.quit();

}

recomendPOITest()