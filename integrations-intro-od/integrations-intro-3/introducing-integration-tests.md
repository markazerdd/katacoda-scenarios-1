The lab environment is being created. Wait until you see `Provisioning Complete` and some Datadog account credentials in the terminal before moving on.

While the unit tests helped validate discrete elements of code, they don't help understand whether the code actually does what it's supposed to do - that's where integration tests come in.

The idea behind an integration test is that it tests the functionality of the program in question - in this case, how the integration works with regard to the thing it's meant to monitor. Without getting too far into the details, integration tests generally imply the execution of commands and interpretation of results, which further implies sources and targets for that data.

You're going to set up a scenario where the functionality of the Agent integration is tested. In this case, whether it correctly looks for a string on a web page. You're going to need a reliable page to run the test against, so you'll need to add a locally running page as a test fixture.
