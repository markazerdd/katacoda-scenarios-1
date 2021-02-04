With a testable fixture, you'll now work on the test itself. There are two separate but related components to consider: the _configuration_ of the test, and the _instantiation_ of that configuration (i.e. actually running the test).

You'll start with the configuration. Thinking back to the test-related files from the scaffolding, you may recall `conftest.py`. This is where you'll put the configuration for the tests.

A sample is provided in the [Datadog integration documentation](https://docs.datadoghq.com/developers/integrations/new_check_howto/#building-an-integration-test) (look for `awesome/tests/conftest.py`). This code is also provided in the lab environment here: `example_conftest.py`{{open}}. Copy this code and paste to replace the contents of the file `dd/integrations-extras/awesome/tests/conftest.py`{{open}}.

This code spins up the Docker instance you just defined and then provides the environment to the tests.

Take a look at the code you pasted in and see if you can answer these questions:
<details>
  <summary>What's being imported? What is their purpose?</summary>
  
  - `os` allows you to access the docker file on this machine. `pytest` was also imported for the unit test - this is the test framework. `docker_run` is a helper to run the Docker, `get_docker_hostname` is a helper to get the Docker hostname, and `get_here` is a helper to get the current file location.
  
</details>
<details>
  <summary>What global variables are being declared, and why?</summary>
  
  - `URL`, `SEARCH_STRING`, and `INSTANCE`. These allow you to use the same `INSTANCE` for testing.
  
</details>
<details>
  <summary>Why is `yield` used in `dd_environment()` instead of `return`?</summary>
  
  - `yield` maintains the local state so that if `dd_environment()` is called more than once, you won't be spinning up a new environment each time.
  
</details>
