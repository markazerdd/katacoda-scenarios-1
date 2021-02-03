Functional code is necessary but you also need to be able to _test_ that functionality. If you want your integration to be included in a Datadog repository (such as extras or marketplace), it must have test coverage.

There are two basic types of tests: unit tests that cover discrete elements of functionality, and integration tests that execute the check method and verify proper data collection. Datadog uses [pytest](https://docs.pytest.org/en/stable/) and [tox](https://tox.readthedocs.io/en/latest/) to build and run the test harness.

The `ddev` scaffolding put some test-related files into place:
```
tree $HOME/dd/integrations-extras/awesome/tests/
```{{execute}}

`test_awesome.py` is where you'll be testing your check in the next step.
