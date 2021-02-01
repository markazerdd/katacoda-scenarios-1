All integrations come with a `conf.yaml.example` file that provides a starting point for actually setting up and using the integration. Depending on the nature of the integration—and, more to the point, the thing that integration is interacting with—this file can get pretty complex. However, every `conf.yaml` has some things in common. For example, they all contain an `init_config` block and an `instance` block. Furthermore, they all follow a very specific syntax covering not only the keywords and types, but the _comments_ as well. The syntax is pretty strict, but here's the good news: you don't need to worry about doing it by hand, as it's generated from a template using the `ddev` tooling. This is where `spec.yaml` comes into play.

The `spec.yaml` file defines the contents of the example configuration and is used not only by the local tooling, but by the upstream Datadog CI/CD system as well. You may be thinking, "why use one YAML file to generate another YAML file?". The answer is simple enough: to force standards and clean configuration file hygiene. Eventually _all_ of the various configuration files will be generated via templates, but for now it's just this one.

Pop over to the [Configuration template](https://docs.datadoghq.com/developers/integrations/new_check_howto/?tab=configurationtemplate#create-the-check-assets) section of the Datadog docs and paste the example into `dd/integrations-extras/awesome/assets/configuration/spec.yaml`{{open}} (replacing what is in the file already). From there, you can generate the example configuration via `ddev validate config --sync awesome`{{execute}}.

If you want to learn more about `spec.yaml`, the [Datadog integrations-core developer site](https://datadoghq.dev/integrations-core/meta/config-specs/) goes into great detail, and you'll want to review it for any real-world integration. For now, however, ponder a few questions:
<details>
  <summary>What does the `--sync` argument to `ddev` indicate, exactly?</summary>
  
  - This option makes `ddev` render the example configuration files.
  
</details>
<details>
  <summary>What do you learn from running `ddev validate config --verbose`{{execute}}?</summary>
  
  - Not all of the integrations were developed using a `spec.yaml` file.
  
</details>