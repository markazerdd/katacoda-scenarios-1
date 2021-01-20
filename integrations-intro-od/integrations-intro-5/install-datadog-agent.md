Wait until you see `Provisioning Complete` and some Datadog account credentials in the terminal before moving on, the environment is being configured.

Before installing our integration, we need to [install the Datadog Agent](https://app.datadoghq.com/account/settings#agent). There are installation instructions for a variety of environments, so which one do we choose? Let's find out: try running `hostnamectl`{{execute}}.

Now we know! Install the Agent by copying and pasting the "[easy one-step install](https://app.datadoghq.com/account/settings#agent/ubuntu)" one-liner into the console. It may take a few minutes to complete.

Once you've got a prompt again, be sure to verify that the Agent is running before continuing: `systemctl status datadog-agent`{{execute}}.
