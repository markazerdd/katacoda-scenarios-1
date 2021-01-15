Now we'll use the configuration elements defined in the previous step to actually implement an integration test. Head back to the [Datadog integration documentation](https://docs.datadoghq.com/developers/integrations/new_check_howto/?tab=configurationtemplate#integration-test) and look for the second part of `awesome/tests/test_awesome.py` (the one that starts with `@pytest.mark.integration`), then **add** it to the end of our local copy: `dd/integrations-extras/awesome/tests/test_awesome.py`{{open}}

In general, it's good policy to look before you leap, so here are some things to consider:
<details>
  <summary>This is an integration test—how is that specified?</summary>
  
  - From the pytest "mark"/.
  
</details>
<details>
  <summary>How does it know to use the Docker environment for this test?</summary>
  
  - It is specified in the `usefixtures` mark.
  
</details>
<details>
  <summary>Which two states are being tested (and which is _not_)?</summary>
  
  - `OK` and `WARNING` are being tested. `CRITICAL` is not.
  
</details>
<details>
  <summary>Where does the `instance` parameter come from?</summary>
  
  - This is `yield`ed from `ddenvironment`.
  
</details>
<details>
  <summary>Bonus: What is the `aggregator` parameter?</summary>
  
  - This is the Datadog aggregator that collects the information from all the checks. So after performing each check with `c.check(instance)`, we assert the status we want exists in the aggregator with `aggregator.assert_service_check()`. 
  
</details>
