With Docker out of the way, you can concentrate on the test itself. There are two separate but related components to consider: the _configuration_ of the test, and the _instantiation_ of that configuration (i.e. actually running the test).

You'll start with the configuration. Thinking back to the test-related files from the scaffolding, do you recall the `conftest.py` file? That's a great spot to put configuration for tests. 😀

You know the drill by now: look in the [Datadog integration documentation](https://docs.datadoghq.com/developers/integrations/new_check_howto/#building-an-integration-test) for `awesome/tests/conftest.py`, then use your copy and paste super-powers to replace the contents of the file `dd/integrations-extras/awesome/tests/conftest.py`{{open}}.

Introspection is a super-power, too. So here are some questions to ponder:
<details>
  <summary>What's being imported? What is their purpose?</summary>
  
  - `os` allows us to access the docker file on this machine. `pytest` was also imported for the unit test - this is the test framework.
  
</details>
<details>
  <summary>What global variables are being declared, and why?</summary>
  
  - `URL`, `SEARCH_STRING`, and `INSTANCE`. These allow us to use the same `INSTANCE` for testing.
  
</details>
<details>
  <summary>How useful are in-line comments in code?</summary>
  
  - _very_ :-)
  
</details>
<details>
  <summary>Extra credit: why is `yield` used in `dd_environment()` instead of `return`?</summary>
  
  - `yield` maintains the local state so that if `dd_environment()` is called more than once, you won't be spinning up a new environment each time.
  
</details>
