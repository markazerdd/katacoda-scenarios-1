Datadog maintains a [development toolkit](https://datadoghq.dev/integrations-core/ddev/about/) that helps to make developing and maintaining integrations easier. It's distributed as a Python package (or "wheel"), but before we can install it, we need to set up our development environment. While it's not obligatory, most people use "Python Virtual Environments" to manage their various projects. Let's set one up now:
```
cd $HOME/dd/integrations-extras
python -m venv venv
. venv/bin/activate
```{{execute}}

Notice how the prompt has `(venv)` in it now. This is a quick way to know whether a virtualenv is active or not.

Some questions:
- What does that `.` do in the venv activation command? (hint: `help .`{{execute}})
- How would we deactivate the venv, should we so desire? (Don't forget to turn it back on though. 🙂)
