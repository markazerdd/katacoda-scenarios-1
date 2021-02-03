The lab environment is being created. Wait until you see `Provisioning Complete` and some Datadog account credentials in the terminal before moving on.

Now you'll need the Datadog credentials you see displayed to access the account that was created for you. Visit [Datadog](https://app.datadoghq.com) and login with these now. If you ever need to be reminded of the credentials, run `creds`{{execute}}

Before installing your integration, you need to [install the Datadog Agent](https://app.datadoghq.com/account/settings#agent). There are installation instructions for a variety of environments. This lab environment is Ubuntu. Install the Agent by copying and pasting the "[easy one-step install](https://app.datadoghq.com/account/settings#agent/ubuntu)" one-liner into the console. It may take a few minutes to complete.

Once you have a prompt again, be sure to verify that the Agent is running before continuing: `datadog-agent status`{{execute}}.
