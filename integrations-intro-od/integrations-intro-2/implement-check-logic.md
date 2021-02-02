Finally—it's time to write some code! You'll create a [Service Check](https://docs.datadoghq.com/developers/service_checks/#overview) named `awesome.search` that searches for a string on a web page. By default, it searches for "Example Domain" on [http://example.org/](http://example.org/)(which is a real site!). It will result in `OK` if the string is present, `WARNING` if the page is accessible but the string was not found, and `CRITICAL` if the page is inaccessible.

There's some great sample code available in the [Datadog documentation](https://docs.datadoghq.com/developers/integrations/new_check_howto/#implement-check-logic) that you can just copy and paste into `awesome/datadog_checks/awesome/check.py` directly (replace the existing contents of that file with the sample code). There are two ways to edit files in this tutorial environment:
- Using an editor such as `vim` or `nano` directly in the terminal.
- Via the built-in editor in the upper-right of this window: `dd/integrations-extras/awesome/datadog_checks/awesome/check.py`{{open}}.

Before moving on to the next step, take a moment to examine the code. Some questions to ask yourself:
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