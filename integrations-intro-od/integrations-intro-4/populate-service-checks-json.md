The `service_check.json` file describes any and all service checks made by the integration. A sample is available from the [Datadog integrations documentation](https://docs.datadoghq.com/developers/integrations/new_check_howto/?tab=servicecheck#create-the-check-assets)(you may need to scroll down to find it). This code is also provided in the lab environment here: `example_service_checks.json`{{open}}. Copy this code and paste it into `dd/integrations-extras/awesome/assets/service_checks.json`{{open}}. Make sure to replace the existing contents of the file.

A question to consider:
<details>
  <summary>Is there a relationship between this file and `manifest.json`; specifically, `integration` and `check`?</summary>
  
  - The `integration` matches the `integration_id` from the manifest. This file is specified in the `service_checks` parameter from the manifest.

</details>

When you're ready, move onto the next step to look at the final file.