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
  
  This "pipes" (`|`) the output to the `head` command, which displays the first couple lines of the output.
  
</details>
- What happens if we _don't_ capitalise the Check name?
- What other arguments could we pass to `ddev create`? How could we find out?
