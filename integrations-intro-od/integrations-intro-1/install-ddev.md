The developer toolkit is comprehensive and includes a lot of functionality. We'll touch on a few of the many features as we go, but the first step is to install it:
```
pip install "datadog-checks-dev[cli]"
```{{execute}}

That will take a moment. Don't worry if you see some red lines fly by—unless you get some sort of catastrophic error, it's probably fine. 😉

Once that's done, let's verify that it was correctly installed: `ddev --version`{{execute}}

This is our first look at `ddev`, a [command-line tool](https://datadoghq.dev/integrations-core/ddev/cli/) that's part of the development toolkit. We'll be using it a fair amount going forward. Congratulations! You've just installed the same toolkit that the developers at Datadog use every day. By default it expects to work on the core integrations, so let's adjust that expectation, and in so doing, introduce you to the tooling and syntax:
```
ddev config set repo extras
```{{execute}}

Note that (outside of this training) if you are working on a marketplace integration or other repo, you can specify that too:
```
  -c, --core            Work on `integrations-core`.
  -e, --extras          Work on `integrations-extras`.
  -a, --agent           Work on `datadog-agent`.
  -m, --marketplace     Work on `marketplace`.
  -x, --here            Work on the current location.
```
