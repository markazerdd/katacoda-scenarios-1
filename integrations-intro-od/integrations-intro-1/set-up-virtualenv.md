Datadog maintains a [development toolkit](https://datadoghq.dev/integrations-core/ddev/about/) that helps to make developing and maintaining integrations easier. It's distributed as a Python package (or "wheel"), but before you can install it, you need to set up your development environment. Many people use "Python Virtual Environments" to manage their various projects. Go ahead and set one up now:
```
cd $HOME/dd/integrations-extras
python -m venv venv
. venv/bin/activate
```{{execute}}

Notice how the prompt has `(venv)` in it now. This is a quick way to know whether a virtualenv is active or not.

Some questions:
<details>
  <summary>What does that `.` do in the venv activation command? (hint: `help .`{{execute}})</summary>
  
  - Execute commands from a file in the current shell. 
  
</details>

<details>
  <summary>How would you deactivate the venv, should you so desire? (Don't forget to turn it back on though.)</summary>
  
  - Run the command `deactivate`{{execute}}. And remember to `. venv/bin/activate`{{execute}} again.
  
</details>