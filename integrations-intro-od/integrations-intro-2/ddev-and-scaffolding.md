Wait until you see `Provisioning Complete` and some Datadog account credentials in the terminal before moving on, the environment is being configured.

One of the developer toolkit features is the `create` command, which creates the basic file and path structure (or "scaffolding") necessary for a new integration. Let's try a dry-run using the `-n` flag, which won't write anything to disk:
```
ddev create -n Awesome | head -n 2
```{{execute}}

This will show you the directory where the scaffolding will be generated, as well as the name of the new integration (in this case: `Awesome`). Ok, that looks good, so let's run it for real this time:
```
ddev create Awesome
```{{execute}}

This will ask you some basic questions in the terminal and then create the scaffolding right where we expect it to be. For this training, you can put anything in for the email and name. Keep in mind that when you publish your integration, the support email will be listed in the public repo.

Questions:
<details>
  <summary>What did that `| head` portion of the dry-run command do?</summary>
  
  - This "pipes" (`|`) the output to the `head` command, which displays the first couple lines of the output.
  
</details>
<details>
  <summary>What happens if we _don't_ capitalise the Check name?</summary>
  
  - It will give a warning that you should be using a display name here. It expects the display name to contain a capital letter.
  
</details>
<details>
  <summary>What other arguments could we pass to `ddev create`? How could we find out?</summary>
  
  - The other arguments are listed in the [documentation](https://datadoghq.dev/integrations-core/ddev/cli/#create).
  
</details>
