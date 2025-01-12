The lab environment is being created. Wait until you see `Provisioning Complete` and some Datadog account credentials in the terminal before moving on.

One of the developer toolkit features is the `create` command, which creates the basic file and path structure (or "scaffolding") necessary for a new integration. Try a dry-run using the `-n` flag, which won't write anything to disk:
```
ddev create -n Awesome | head -n 2
```{{execute}}

This will show you the directory where the scaffolding will be generated, typically a lowercase version of the integration name (in this case `awesome`). After reviewing the output, run it for real:
```
ddev create Awesome
```{{execute}}

This will ask you some basic questions in the terminal and then create the scaffolding where it needs to be. For this training, you can put anything in for the email and name (`none` works fine for both since you aren't really publishing this). Keep in mind that when you publish your integration, the support email will be listed in the public repo.

Questions:
<details>
  <summary>What did the `| head -n 2` portion of the dry-run command do?</summary>
  
  - This "pipes" (`|`) the output to the `head` command, which displays the first couple (`-n 2`) lines of the output.
  
</details>
<details>
  <summary>What happens if you _don't_ capitalize the Check name?</summary>
  
  - It will give a warning that you should be using a display name here. It expects the display name to contain a capital letter.
  
</details>
<details>
  <summary>What other arguments could you pass to `ddev create`? How could you find out?</summary>
  
  - The other arguments are listed in the [documentation](https://datadoghq.dev/integrations-core/ddev/cli/#create).
  
</details>
