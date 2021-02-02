The developer toolkit is comprehensive and includes a lot of functionality. You'll touch on a few of the many features as you go, but the first step is to install it:
```
pip install "datadog-checks-dev[cli]"
```{{execute}}

That will take a moment. Don't worry if you see some red lines fly by—unless you get some sort of catastrophic error, it's probably fine. 😉

Once that's done, verify that it was correctly installed: `ddev --version`{{execute}}

This is your first look at `ddev`, a [command-line tool](https://datadoghq.dev/integrations-core/ddev/cli/) that's part of the development toolkit. You'll be using it a fair amount going forward. Congratulations! You've just installed the same toolkit that the developers at Datadog use every day. By default it expects to work on the core integrations. You need to adjust that expectation using this syntax:
```
ddev config set repo extras
```{{execute}}

Note that (outside of this training) if you are working on a marketplace integration, you can specify that too. Here are the values to use for `repo` for the corresponding repositories:
```
core        -> integrations-core
extras      -> integrations-extras
marketplace -> marketplace
```

One last thing, each lab has a step to ensure that the lab is marked "complete". Run `grademe`{{execute}} before moving onto the next lab to mark this lab as complete.