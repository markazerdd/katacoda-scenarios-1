Finally—it's time to write some code! We'll create a [Service Check](https://docs.datadoghq.com/developers/service_checks/#overview) named `awesome.search` that searches for a string on a web page. It will result in `OK` if the string is present, `WARNING` if the page is accessible but the string was not found, and `CRITICAL` if the page is inaccessible.

There's some great sample code available in the [Datadog documentation](https://docs.datadoghq.com/developers/integrations/new_check_howto/#implement-check-logic) that you can just copy and paste into `awesome/datadog_checks/awesome/check.py` directly. There are two ways to edit files in this tutorial environment:
- Using an editor such as `vim` or `nano` directly in the terminal.
- Via the built-in editor in the upper-right of this window: `dd/integrations-extras/awesome/datadog_checks/awesome/check.py`{{open}}.

Before moving on to the next step, take a moment to examine the code. Some questions to ask yourself:
- What's being imported?
- What class is `AwesomeCheck` a sub-class of?
- What data does the Check need to run? How are those variables being populated? What happens if they're missing?
- How are the OK, WARNING, and CRITICAL state conditions being determined?
