# Setting an alert on our SLO

In order to avoid overspending your error budget, you need to be paying attention to when your SLO is close to being breached. Overspending your error budget means you've violated your SLO and might be on the hook to compensate your clients as per the stipulations in your SLA. Once you've gotten close to 100% consumption of your error budget, the team responsible for that SLO or user journey should switch priorities from feature development to reliability work to prevent any breaches.

To that end, you can use Error Budget Monitors (in public beta) for metric-based SLOs! Error Budget Monitors notify you when a certain percentage of your error budget has been consumed. Error Budget Monitors are great for helping you take a proactive approach to managing the health of your SLOs and ensuring you make use of your error budgets without overspending. 

Now that we've created a metric-based SLO, let's set an Error Budget Monitor on it! 

To do this, go back to the details side panel of your SLO and select the `Set up Alerts` button. This will take you to a configuration page for you to set your Error Budget Monitor. In a real world scenario, it would make sense to set the monitor to alert us a bit before we've completely spent our error budget, so let's set our thresholds accordingly.

1. Set the alert threshold to `90%` so that the monitor is configured to notify us before our error budget is 100% consumed
2. Set the optional warning threshold. `75%` would be a sensible choice.
3. Enter a monitor message in the large text box. In a real environment, you could type in `@` and select your name to receive an email notification.

![Error Budget Monitor](/datadog/scenarios/service-level-objectives/assets/error-budget-monitor.png)

Save the monitor when you're done!

You'll see the monitor appear under the `Alerts` tab in your SLO's side panel. Initially it will be in `NO DATA` since it was just created, before quickly transitioning to `OK` as we haven't introduced any errors yet.

![Alerts Tab](/datadog/scenarios/service-level-objectives/assets/alerts-tab.png)

In the next step, we'll purposely introduce some errors to breach our SLO and cause our Error Budget Monitor to alert.
