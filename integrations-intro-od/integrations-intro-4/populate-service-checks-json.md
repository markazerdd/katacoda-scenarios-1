The `service_check.json` file describes any and all service checks made by the integration. That's it! Grab the sample configuration from the [Datadog integrations documentation](https://docs.datadoghq.com/developers/integrations/new_check_howto/?tab=servicecheck#create-the-check-assets)(you may need to scroll down to find it) and drop it into `dd/integrations-extras/awesome/assets/service_checks.json`{{open}}. Make sure to replace the existing contents of the file.

An important question to consider:
<details>
  <summary>Is there a relationship between this file and `manifest.json`; specifically, `integration` and `check`?</summary>
  
  - The `integration` matches the `integration_id` from the manifest. This file is specified in the `service_checks` parameter from the manifest.

</details>