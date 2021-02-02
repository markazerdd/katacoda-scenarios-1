For this lab, you're going to be making your own "Check" class. A Check will periodically collect specific information and report it to Datadog.

Alright—time to talk about code. The first thing you'll look at is the check logic itself, which will be expressed as a Python class. If you've worked with Python before, you'll want to know that all Check classes are derived from `AgentCheck`, and that they must provide a `check(self, instance)` method. If you're new to Python—it's cool, don't worry about it!

Checks are organized in regular Python packages under the `datadog_checks` namespace. Practically speaking, this means that your code should live under `awesome/datadog_checks/awesome`. The only hard requirement here is that the name of the package has to be the same as the check name.

Take a look at what you've got right now:
```
tree $HOME/dd/integrations-extras/awesome/datadog_checks/awesome/
```{{execute}}

`check.py` looks promising! Start there…
