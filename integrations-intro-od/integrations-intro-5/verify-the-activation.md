So… is the new integration working? You can find out! Use the `status` command to get the details:
```
datadog-agent status
```{{execute}}

Well, that was verbose. The `status` command has lots of information but you only want some of it, so use one of the oldest tools in the box: grep.
```
datadog-agent status | grep -A7 awesome
```{{execute}}

Oh, and if JSON is your jam:
```
datadog-agent status -p | jq '.runnerStats.Checks.awesome'
```{{execute}}

Feel free to play around with the status output to get a feel for what's available. 👍
