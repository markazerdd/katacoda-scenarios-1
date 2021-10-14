Now that you have a general idea of the issue, its time to determine the root cause and remediate it. In the **Remediation** tab of the incident, you can add related documents for addressing this type of issue. You can also create and assign tasks here related to the incident.

You can also create tasks from within Slack. Open the channel for your incident in Slack. Within that channel type `/datadog task` to create a new task for an on-call engineer. In the **Describe Task** text area, type "Look at app traces". Assign this task to someone in Slack (you'll actually be the one to do it, but we want you to see this functionality)

Click the **Create Task** button.

Note that within the Datadog UI, you can adjust the due date or assignees for tasks after they are created.

In another tab, take another look at the `Monitor for Incident Management Workshop` that alerted you to the issue. Click on the Evaluation Graph and then **View Related Traces**:
![Related Traces](assets/related_traces.png)

The resulting page should be a list of traces related to this monitor:
![Traces Table](assets/traces_table.png)
Note that they will be green since the requests are completing successfully, just slowly. Click on one of these traces to open a flamegraph visualizing the execution time of each service involved with the trace. You will see that the culprit here is in fact the ad service taking so long:
![Detailed Trace](assets/trace.png)

Click the **Open Full Page** link in the upper-right corner of this panel to open this trace as a full page. Now you can add this trace to the incident so your coworkers can see what you're referencing. Open the Datadog clipboard (**Cmd/Ctrl + Shift + K**), click **Add current page** and then **Add selected item to...** to add this trace to your incident.
![Add Trace](assets/trace_cb.png)

You can now mark the trace investigation task complete. Recall the task list with `/datadog task list` and click "Mark Completed".

Add a task to "Investigate ad service code" (Assign this to another person on your team). Back in the incident overview in the Datadog UI, you can also add the "advertisements-service" as a service related to the incident.

Click the **Save** button.

In the lab IDE, open `ads.py`{{open}} file and see if you can find the source of this latency. 
