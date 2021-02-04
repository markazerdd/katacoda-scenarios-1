In your integration, you'll create a [Service Check](https://docs.datadoghq.com/developers/service_checks/#overview) named `awesome.search` that searches for a string on a web page. The name comes from the fact that the name of your integration is "awesome", and you are creating a check named "search". By default, the check will be set up to search for "Example Domain" on [http://example.org/](http://example.org/)(which is a real site). It will result in `OK` if the string is present, `WARNING` if the page is accessible but the string was not found, and `CRITICAL` if the page is inaccessible.

There's sample code available in the [Datadog documentation](https://docs.datadoghq.com/developers/integrations/new_check_howto/#implement-check-logic). This code is also provided in the lab environment here: `example_check.py`{{open}}. You can copy and paste into `dd/integrations-extras/awesome/datadog_checks/awesome/check.py`{{open}} directly (replace the existing contents of that file with the sample code).

Before moving on to the next step, take a moment to examine the code.

The `check` method is where the main logic exists and is called by the Datadog Agent to evaluate this check. This check needs two parameters to evaluate:
- `url` - the URL of the page being checked
- `search_string` - the string being searched for on the page

The parameters are accessed by calling `instance.get('parameter_name_here')`. You will be specifying these parameters as part of the default configuration in a later step.

A `ConfigurationError` is raised if one of these required parameters is missing.

The bottom part of the file contains the different statuses mentioned above. The method attempts to access the `url` and reports a `CRITICAL` status if it cannot. If the page is accessible, it searches for `search_string` and reports `OK` or `WARNING` depending on if it exists in the page or not.

Some questions to ask yourself:
<details>
  <summary>What's being imported?</summary>
  
  - The [`requests` library](https://requests.readthedocs.io/en/master), used to make the HTTP request that you need for the Check. From `datadog_checks.base`, `AgentCheck` is the class you are inheriting from and `ConfigurationError` let's you raise a Datadog configuration error.
  
</details>
<details>
  <summary>What class is `AwesomeCheck` a sub-class of?
</summary>
  
  - `AgentCheck`
  
</details>
<details>
  <summary>What data does the Check need to run? How are those variables being populated? What happens if they're missing?</summary>
  
  - It needs a `url` to check and a `search_string` that you are going to check for on the page. If they are missing, an error is raised.
  
</details>
<details>
  <summary>How are the OK, WARNING, and CRITICAL state conditions being determined?</summary>
  
  - `OK` is set if the string is found in the page, `WARNING` is set if the page is loaded, but the string is not found, and `CRITICAL` is set if an exception is raised while loading the page. 
  
</details>