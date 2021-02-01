You're almost there! All that's left to do now is to enable the integration within the Agent. In the Real World this would normally be done as part of some larger configuration management strategy, but that's a bit out of scope for this lab. There's also a [built-in web GUI](https://docs.datadoghq.com/agent/?tab=agentv6#gui) for most operating environments, but since you've spent so much time in the console already, keep the trend going. 😀

Take a look at the example configuration:
```
cat /etc/datadog-agent/conf.d/awesome.d/conf.yaml.example | grep -v "^$\|#"
```{{execute}}

You may recognize this as the same `conf.yaml.example` you looked at earlier. Now it's installed as part of the Agent. This configration is ready to go, so activate it by copying it to `conf.yaml` and changing the owner to `datadog-agent` (using `chown`):
```
cp /etc/datadog-agent/conf.d/awesome.d/conf.yaml.example /etc/datadog-agent/conf.d/awesome.d/conf.yaml
chown dd-agent /etc/datadog-agent/conf.d/awesome.d/conf.yaml
```{{execute}}

The last thing to do now is to restart the Agent so that it picks up the new configuration file:
```
systemctl restart datadog-agent
```{{execute}}

And make sure that worked:
```
datadog-agent status 
```{{execute}}
