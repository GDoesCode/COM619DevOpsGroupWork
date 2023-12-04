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

const {Builder} = require("selenium-webdriver");
const chrome = require("selenium-webdriver/chrome");
const assert = require('assert');

async function openApplicationTest(){

    // Setting Google Chrome driver options to ignore the SSL certificates when opening the application
    const options = new chrome.Options()
    options.addArguments('--ignore-certificate-errors');

    // Launch the browser
    let driver = await new Builder().forBrowser("chrome").setChromeOptions(options).build();

    // Navigate to our mapping application
    await driver.get("https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/")

    // Assertion test in place to make sure we visit the right url which is our hosted application
    const actualUrl = await driver.getCurrentUrl();
    const expectedUrl = 'https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/';
    assert.strictEqual(actualUrl, expectedUrl, 'URL does not match expected value');

    // If the test is successfull in opening our applciation return a log success message into the console
    console.log('Test has passed successfully :)');

    // Adding a delay of 10 seconds since it kept on closing too fast to see the automation teesting
    await driver.sleep(10000);

    // Close the browser to complete the test
    await driver.quit();
}

openApplicationTest()