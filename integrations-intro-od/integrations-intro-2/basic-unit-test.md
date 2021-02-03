As with the check logic, there's sample code for the unit tests in the [Datadog documentation](https://docs.datadoghq.com/developers/integrations/new_check_howto/#writing-tests). This code is also provided in the lab environment here: `example_test_awesome.py`{{open}}. Paste that code into `dd/integrations-extras/awesome/tests/test_awesome.py`{{open}}, replacing the existing code in that file.

Take a moment to review what the code is doing. The test (`test_config`) is testing that the different configuration cases are handled appropriately. The first test ensures that a `ConfigurationError` is raised when an empty configuration is provided. The second and third tests ensure that the same happens when only the `url` or only the `search_string` is present.

Lastly, it tests the check with a correct configuration, which should not raise any kind of error.

And, as before, here are some questions to ask yourself about that code:
<details>
  <summary>What's being imported? What purpose might it serve?</summary>
  
  - `pytest` is a [common testing framework](https://docs.pytest.org/en/stable/) for Python.
  
</details>
<details>
  <summary>What does the line that starts with `@` mean?</summary>
  
  - The @ symbol is called a "decorator" in Python. These can be used lots of ways, but in this case, it ["marks"](https://docs.pytest.org/en/stable/example/markers.html) the subsequent code block as a unit test.
  
</details>
<details>
  <summary>What elements are being tested, and what happens if they fail?</summary>
  
  - The first 3 tests check to make sure that a `ConfigurationError` is raised for an empty instance, an instance with only the url, and an instance with only a search string. The last test makes sure that a "proper" configuration with a url and a search string does not throw an error.
  
</details>