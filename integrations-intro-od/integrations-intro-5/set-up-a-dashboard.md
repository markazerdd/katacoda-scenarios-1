With all of that out of the way, the last step is to actually visualise the results of the check. Load up the Datadog web interface and navigate to Dashboards → New Dashboard, then set up a *screenboard* with a [Check Status widget](https://docs.datadoghq.com/graphing/widgets/check_status/#pagetitle) based on the `awesome.search` check.

When building the widget, your settings should look like this:
    ![check](assets/check.png)

Make sure to set the "Check Name" in the first section and the "Reported By" in the third.

After adding the check to your dashboard, it should be "OK". Remember, we are checking [https://example.com/](https://example.com/) for the text "Example Domain", which exists.

You can try editing your config file to change the `search_string` or `url` options such that the check fails (like setting the `search_string` to "Datadog Integrations") `/etc/datadog-agent/conf.d/awesome.d/conf.yaml`{{open}}

Make sure to restart the agent so the changes take effect:
```
systemctl restart datadog-agent
```{{execute}}

You should see the check on the dashboard start failing shortly.

And with that: congratulations! You just went from zero to a dashboard powered by a functioning integration. Well done! Now's a good time for cake. 🍰
