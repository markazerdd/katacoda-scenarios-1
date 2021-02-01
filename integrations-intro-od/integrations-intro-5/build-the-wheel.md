Next stop: the wheel. Wheels are a Python-native packaging format. If you've ever used RPM or DEB files, for example, you've encountered a packaging format—wheels are quite similar. And, like all packaging formats, you can tumble down the rabbit hole fairly easily. Luckily, the `ddev` tooling takes care of the heavy lifting:
```
ddev release build awesome
```{{execute}}

The output contains an important line: the path where the wheel file that was built. Take a look:
```
ls -l $HOME/dd/integrations-extras/awesome/dist
```{{execute}}

So, what's in that wheel anyway? It's a package, so there should be a way to see the files that are inside it, right? Yes! In fact, it's just a ZIP file with a different extension, so take a closer look:
```
unzip -l $HOME/dd/integrations-extras/awesome/dist/datadog_awesome-0.0.1-py2.py3-none-any.whl
```{{execute}}

Alright, it's question time:
<details>
  <summary>What _isn't_ in the wheel that you've been working on? Why?</summary>
  
  - The tests are only used to make sure the integration was created correctly, so aren't part of the wheel. The `spec.yaml` file is also not included - it was used to generate the `conf.yaml.example`.
  
</details>