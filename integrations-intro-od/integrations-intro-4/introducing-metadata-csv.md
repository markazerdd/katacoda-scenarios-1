The `metadata.csv` describes all of the metrics that can be collected by the integration. In this case, you're not actually collecting any metrics, so there's no need to touch this file.

The [Datadog Agent documentation](https://docs.datadoghq.com/developers/integrations/new_check_howto/#metrics-metadata-file) has more details if you're interested. If you want to really dive deep into the underlying mechanics, you can also examine the [Custom Metrics section](https://docs.datadoghq.com/developers/metrics/) of the developer documentation.

You've now seen the set of supporting files for an integration.

Run `grademe`{{execute}} before moving onto the next lab to mark this lab as complete.