You can browse your copy of the application that we are monitoring by clicking on the `storedog` tab in the terminal to the right. You may notice some long page load times or other broken behavior.

As part of the lab setup, a monitor was established to evaluate the time it takes for the server to handle requests for the home page as measured by the Datadog Agent. It will raise an alert if the latency for the past 1 minute has an average greater than 1 second. The focus of this course is incident management, if you want to understand how to set up APM and this monitor yourself, enroll in the "Introduction to Application Performance Monitoring" course in the Datadog Learning Center.

Now you're going to check on the monitor that was created on the instructor's Workshop Environment.

Navigate to <a href="https://app.datadoghq.com/monitors/manage" target="_datadog">**Monitors** > **Manage Monitors**</a> in Datadog to view the list of monitors that are being evaluated. The monitor established for this course is titled `Monitor for Incident Management Workshop`.

If the lab environment was recently created, the monitor status will be gray and state "NO DATA". Refresh the Datadog page until the monitor is in an "ALERT" status before moving to the next step.
