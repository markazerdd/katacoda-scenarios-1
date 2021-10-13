Looking at `ads.py`{{open}}, you'll notice that two `time.sleep()` commands (Lines 43-44 and Lines 66-67) were left after testing. 

Return to the incident **Remediation** tab and close the "Investigate ad service code..." task. 

You now have the knowledge to declare the root cause of the incident. Edit the incident on the incident Overview tab and set *root cause* to: `Debug statements left in the ad service code`{{copy}}.

Click the **Save** button.

You can now add a final remediation task - "Fix ad service code @[Ad Service Engineer]". 

In the lab IDE, in `ads.py`{{open}}, delete the debug lines containing the sleep commands. Changes are auto-saved after a second. (In production, you'd likely make a PR to remedy this issue. You could add this as a note in the incident timeline.)

Removing these lines of code should fix the latency issue. It may take a couple of minutes for the monitor in Datadog to turn green.

Once it does, you can:
- mark your remediation task complete
- in the customer impact section, toggle "Active" off (and adjust the end time if desired)
- change the incident status to "RESOLVED"
