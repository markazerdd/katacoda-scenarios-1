All integrations come with a `conf.yaml.example` file that provides a starting point for actually setting up and using the integration. Depending on the nature of the integration this file can be complex. However, every `conf.yaml` has some things in common. For example, they all contain two main blocks:
- The `init_config` block is where you put any common configuration information, for example, the name of the type of service the integration supports. 
- The `instances` block is where you can configure each instance of the integration you would like to run.

Furthermore, they all follow a very specific syntax covering not only the keywords and types, but the _comments_ as well. The syntax is pretty strict. Luckily you don't need to worry about doing it by hand, as it's generated from a template using the `ddev` tooling. This is where `spec.yaml` comes into play.

The `spec.yaml` file defines the contents of the example configuration and is used not only by the local tooling, but by the upstream Datadog CI/CD system as well. The configuration is defined in `spec.yaml`, and used to automatically create `conf.yaml`. This ensures `conf.yaml` follows standards and is consistent with other configuration files.

An example [Configuration template](https://docs.datadoghq.com/developers/integrations/new_check_howto/?tab=configurationtemplate#create-the-check-assets) is provided in the Datadog docs. This code is also provided in the lab environment here: `example_spec.yml`{{open}}. Copy and paste this example into `dd/integrations-extras/awesome/assets/configuration/spec.yaml`{{open}} (replacing what is in the file already).

Now, you can generate the example configuration via `ddev validate config --sync awesome`{{execute}}.

If you want to learn more about `spec.yaml`, the [Datadog integrations-core developer site](https://datadoghq.dev/integrations-core/meta/config-specs/) goes into great detail, and you'll want to review it for any real-world integration.

See if you can figure out the answers to these questions:
<details>
  <summary>What does the `--sync` argument to `ddev` indicate, exactly?</summary>
  
  - This option makes `ddev` render the example configuration files.
  
</details>
<details>
  <summary>What do you learn from running `ddev validate config --verbose`{{execute}}?</summary>
  
  - Not all of the integrations were developed using a `spec.yaml` file.
  
</details>