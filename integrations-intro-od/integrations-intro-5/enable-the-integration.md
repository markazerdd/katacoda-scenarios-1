All that's left to do now is to enable the integration within the Agent. In a production environment, this would normally be done as part of some larger configuration management strategy, but that's out of scope for this lab. There's also a [built-in web GUI](https://docs.datadoghq.com/agent/basic_agent_usage/?tab=agentv6v7#gui) for most operating environments, but it is disabled by default in Linux. We'll use the terminal instead.

Take a look at the example configuration:
```
cat /etc/datadog-agent/conf.d/awesome.d/conf.yaml.example | grep -v "^$\|#"
```{{execute}}

This is the same `conf.yaml.example` you looked at earlier. Now it's installed as part of the Agent. This configuration is ready to go, so activate it by copying it to `conf.yaml` and changing the owner to `datadog-agent` (using `chown`):
```
cp /etc/datadog-agent/conf.d/awesome.d/conf.yaml.example /etc/datadog-agent/conf.d/awesome.d/conf.yaml
chown dd-agent /etc/datadog-agent/conf.d/awesome.d/conf.yaml
```{{execute}}

The last thing to do now is to restart the Agent so that it picks up the new configuration file:
```
systemctl restart datadog-agent
```{{execute}}
