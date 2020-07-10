We've already talked about `conf.yaml.example`, but it's worth taking a look at the generated output to get a feel for how the `spec.yaml` file is used. Take a moment to look at `awesome/datadog_checks/awesome/data/conf.yaml.example` with an eye to the following questions:
- If we wanted to monitor _another_ URL, how would we do that?
  - What would we need to do in `spec.yaml`?
- What, if anything, would un-commenting the `flag_follow_redirects` option do?

Thinking back to `spec.yaml` (since these files are related):
- What does uncommenting that final `template:` line do? (Go ahead and try it!)
  - Why might it be pertinent to this exact use-case?

If you want to learn more about the configuration specification itself, the [Datadog integrations documentation](https://docs.datadoghq.com/developers/integrations/check_references/#configuration-file) goes into the details. For now, let's roll on!
