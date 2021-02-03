Use the `status` command to see if your integration is working:
```
datadog-agent status
```{{execute}}

It may be hard to parse through that output, you can use `grep` to look for what you're interested in:
```
datadog-agent status | grep -A7 awesome
```{{execute}}

Feel free to play around with the status output to get a feel for what's available.
