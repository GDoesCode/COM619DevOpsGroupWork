// <!-- Copyright [2023] [NodeNinjas]

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//     http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License. -->

const {Builder, By, Key} = require("selenium-webdriver");
const chrome = require("selenium-webdriver/chrome");
const assert = require('assert');

async function addPOITest(){
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

    // Use this to find the map and click on the map to be able to create a new POI
    await driver.findElement(By.id("map1")).click()

    // Sending POI details to be used to create/add a new POI to the database
    await driver.findElement(By.id("name")).sendKeys("New POI");
    await driver.findElement(By.id("type")).sendKeys("Test POI");
    await driver.findElement(By.id("country")).sendKeys("UK");
    await driver.findElement(By.id("region")).sendKeys("Southampton");
    await driver.findElement(By.id("desc")).sendKeys("New Test POI");
    await driver.findElement(By.id("addPOI")).click();
    
    // Adding a delay of 10 seconds since it kept on closing too fast to see the automation teesting
    await driver.sleep(10000);

    // If the test is succesfull in presenting POIs that are searched by region, then return a log success message into the console.
    console.log("Adding a POI test has passed successfully");

    // Close the browser to complete the test
    await driver.quit();
}

addPOITest()