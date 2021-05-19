Looking at `ads-service/ads.py`{{open}}, you'll notice that two sleep commands (Lines 43-44 and Lines 66-67) were left after testing. Close the previous task in the incident remediation. You now have the knowledge to declare the root cause of the incident and can do so on the overview page for the incident: `Debug statements left in the ad service code`{{copy}}.

You can now add a final remediation task - "Fix ad service code @[you]". 

Delete the debug lines containing the sleep commands. (In production, you'd likely make a PR to remedy this issue. You could add this as a note in the incident timeline.)

Removing these lines of code should fix the latency issue. It may take a couple of minutes for the monitor in Datadog to turn green.

Once it does, you can:
- mark your remediation task complete
- edit the customer impact to be "inactive" (and set an end time if desired)
- change the incident status to "RESOLVED".