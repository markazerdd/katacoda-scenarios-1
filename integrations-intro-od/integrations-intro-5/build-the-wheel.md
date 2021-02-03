"Wheels" are a Python-native packaging format. If you've ever used RPM or DEB files, for example, you've encountered a packaging format — wheels are quite similar. The `ddev` tooling will build the wheel for you:
```
ddev release build awesome
```{{execute}}

The output contains an important line: the path where the wheel file that was built. Take a look:
```
ls -l $HOME/dd/integrations-extras/awesome/dist
```{{execute}}

If you are curious what is in the wheel, it's just a ZIP file with a different extension. You can `unzip` it to take a closer look:
```
unzip -l $HOME/dd/integrations-extras/awesome/dist/datadog_awesome-0.0.1-py2.py3-none-any.whl
```{{execute}}

A question to consider:
<details>
  <summary>What _isn't_ in the wheel that you've been working on? Why?</summary>
  
  - The tests are only used to make sure the integration was created correctly, so aren't part of the wheel. The `spec.yaml` file is also not included - it was used to generate the `conf.yaml.example`.
  
</details>