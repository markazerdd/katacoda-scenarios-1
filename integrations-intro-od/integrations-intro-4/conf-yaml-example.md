We've already talked about `conf.yaml.example`, but it's worth taking a look at the generated output to get a feel for how the `spec.yaml` file is used. Take a moment to look at `dd/integrations-extras/awesome/datadog_checks/awesome/data/conf.yaml.example`{{open}} with an eye to the following questions:
<details>
  <summary>If we wanted to monitor _another_ URL, how would we do that?</summary>
  
  - We would need to add additional url options to the `spec.yaml` file.
  
</details>
<details>
  <summary>What, if anything, would un-commenting the `flag_follow_redirects` option do?</summary>
  
  - The comments show the default options for these settings. So uncommenting it wouldn't change anything. However, uncommenting it and then changing the boolean would change the behavior.

</details>

Thinking back to `spec.yaml`  - (you can find yours here `dd/integrations-extras/awesome/assets/configuration/spec.yaml`{{open}}):
<details>
  <summary>What does uncommenting that final `template:` line do? (Go ahead and try it!) Note that you might need to close and reopen the  `conf.yaml.example` file to see the changes after re-running the `validate`</summary>
  
  - The `http` template provides additional options to make the connection such as authentication with username and passwords. This could be useful if an account was required for the desired domain.

</details>
If you want to learn more about the configuration specification itself, the [Datadog integrations documentation](https://docs.datadoghq.com/developers/integrations/check_references/#configuration-file) goes into the details. For now, let's roll on!
