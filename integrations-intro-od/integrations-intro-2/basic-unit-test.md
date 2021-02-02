As with the check logic, there's some great sample code for the unit tests in the [Datadog documentation](https://docs.datadoghq.com/developers/integrations/new_check_howto/#writing-tests). Go ahead and paste that code into `dd/integrations-extras/awesome/tests/test_awesome.py`{{open}}, replacing the existing code in that file.

And, as before, here are some good questions to ask yourself about that code:
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