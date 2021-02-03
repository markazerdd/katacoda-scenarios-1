Now you'll use the configuration elements defined in the previous step to actually implement an integration test. Sample code for this is available in the [Datadog integration documentation](https://docs.datadoghq.com/developers/integrations/new_check_howto/?tab=configurationtemplate#integration-test) (look for the second part of `awesome/tests/test_awesome.py` that starts with `@pytest.mark.integration`). This code is also provided in the lab environment here: `example_second_part_test_awesome.py`{{open}}.

Copy this code and **add** it to the end of your copy: `dd/integrations-extras/awesome/tests/test_awesome.py`{{open}}

Take a look at the code you just pasted. It makes use of the previously defined Docker instance (`@pytest.mark.usefixtures('dd_environment')`). It then tests both a case where the `search_string` is found (`OK`) and a case where it does not exist on the page (`WARNING`).

See if you can answer these questions about the file:
<details>
  <summary>This is an integration test — how is that specified?</summary>
  
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
  
  - This is the Datadog aggregator that collects the information from all the checks. So after performing each check with `c.check(instance)`, you assert the status you want exists in the aggregator with `aggregator.assert_service_check()`. 
  
</details>
